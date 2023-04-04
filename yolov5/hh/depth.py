#!/usr/bin/env python3

import numpy as np
import math
import cv2
from detect9 import parse_opt

# -----------------------------------双目相机的基本参数---------------------------------------------------------
#   left_camera_matrix          左相机的内参矩阵
#   right_camera_matrix         右相机的内参矩阵
#
#   left_distortion             左相机的畸变系数    格式(K1,K2,P1,P2,0)
#   right_distortion            右相机的畸变系数
# -------------------------------------------------------------------------------------------------------------

# rospy.init_node("depth")
# rospy.set_param("pixel", [0,0,0])
left_camera_matrix = np.array([[783.855318097627,	-1.87904366417773,	600.856018434669],
[0,	784.158467466634,	506.568165892336],
[0,	0,	1]])
left_distortion = np.array([[0.192877880472837, -0.291754649068669, -0.000171350156399328, 0.00114319048651275,
                             0.155905157691104]])

right_camera_matrix = np.array([[783.311237050670, -1.60252676728333, 658.340484627970],
[0,	783.352483947295, 443.370297001410],
[0,	0,	1]])
right_distortion = np.array([[0.187028434544227, -0.267137781777490, -0.000209520737855908, 0.00109176116004939,
                              0.136687301737715]])

R = np.array([[0.999979693079463,	-0.000598134752930551,	-0.00634473510240633],
[0.000640530561900934,	0.999977469245930,	0.00668211950695176],
[0.00634059534283975,	-0.00668604781042217,	0.999957545906513]])

T = np.array([-56.2072375006443,	-0.306797530555654,	-0.827406373873092]) 

size = (1280, 960) # 图像尺寸

# 进行立体更正
R1, R2, P1, P2, Q, validPixROI1, validPixROI2 = cv2.stereoRectify(left_camera_matrix, left_distortion,
                                                                  right_camera_matrix, right_distortion, size, R, T)
# 计算更正map
left_map1, left_map2 = cv2.initUndistortRectifyMap(left_camera_matrix, left_distortion, R1, P1, size, cv2.CV_16SC2)
right_map1, right_map2 = cv2.initUndistortRectifyMap(right_camera_matrix, right_distortion, R2, P2, size, cv2.CV_16SC2)

# cv2.namedWindow("left")
# cv2.namedWindow("depth_color")
# cv2.namedWindow("depth")
#
# cv2.moveWindow("left", 0, 0)
# cv2.moveWindow("depth_color", 600, 0)
# cv2.createTrackbar("num", "depth", 0, 10, lambda x: None)
# cv2.createTrackbar("blockSize", "depth", 5, 255, lambda x: None)

camera = cv2.VideoCapture(1)
camera.set(cv2.CAP_PROP_FRAME_WIDTH, 2560)
camera.set(cv2.CAP_PROP_FRAME_HEIGHT, 960)

# --------------------------鼠标回调函数---------------------------------------------------------
#   event               鼠标事件
#   param               输入参数
# -----------------------------------------------------------------------------------------------
# def onmouse_pick_points(event, x, y, flags, param):
#     if event == cv2.EVENT_LBUTTONDOWN:
#         threeD = param
#         # print('\n像素坐标 x = %d, y = %d' % (x, y))
#         print("坐标xyz是：", threeD[y][x][0], threeD[y][x][1], threeD[y][x][2], "mm")
#         # rospy.set_param("pixel", [float(threeD[y][x][0]*0.001), float(threeD[y][x][1]*0.001), float(threeD[y][x][2]*0.001)])
#         # distance = math.sqrt(threeD[y][x][0] ** 2 + threeD[y][x][1] ** 2 + threeD[y][x][2] ** 2)
#         # print("距离是：", distance, "mm")


# while True:
ret, frame = camera.read()
# if not ret:
#     print('cant open camera or camera has been opened' )
#     break

frame1 = frame[0:960, 0:1280]
frame2 = frame[0:960, 1280:2560]
path = '/home/ros/haoyu/yolov5-master/temp/tmp.jpg'
cv2.imwrite(path, frame1)
[x, y, a] = parse_opt(path)
# 将BGR格式转换成灰度图片，用于畸变矫正
imgL = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)
imgR = cv2.cvtColor(frame2, cv2.COLOR_BGR2GRAY)
# 根据更正map对图片进行重构
img1_rectified = cv2.remap(imgL, left_map1, left_map2, cv2.INTER_LINEAR)
img2_rectified = cv2.remap(imgR, right_map1, right_map2, cv2.INTER_LINEAR)

# 转换为opencv的BGR格式
imageL = cv2.cvtColor(img1_rectified, cv2.COLOR_GRAY2BGR)
imageR = cv2.cvtColor(img2_rectified, cv2.COLOR_GRAY2BGR)
# ------------------------------------SGBM算法----------------------------------------------------------
#   blockSize                   深度图成块，blocksize越低，其深度图就越零碎，0<blockSize<10
#   img_channels                BGR图像的颜色通道，img_channels=3，不可更改
#   numDisparities              SGBM感知的范围，越大生成的精度越好，速度越慢，需要被16整除，如numDisparities
#                               取16、32、48、64等
#   mode                        sgbm算法选择模式，以速度由快到慢为：STEREO_SGBM_MODE_SGBM_3WAY、
#                               STEREO_SGBM_MODE_HH4、STEREO_SGBM_MODE_SGBM、STEREO_SGBM_MODE_HH。精度反之
# ------------------------------------------------------------------------------------------------------

blockSize = 9
img_channels = 3
stereo = cv2.StereoSGBM_create(minDisparity=0,
                               numDisparities=256,
                               blockSize=blockSize,
                               P1=8 * img_channels * blockSize * blockSize,
                               P2=32 * img_channels * blockSize * blockSize,
                               disp12MaxDiff=-1,
                               preFilterCap=1,
                               uniquenessRatio=10,
                               speckleWindowSize=100,
                               speckleRange=32,
                               mode=cv2.STEREO_SGBM_MODE_HH)
# 计算视差
disparity = stereo.compute(img1_rectified, img2_rectified)

# 归一化函数算法，生成深度图（灰度图）
disp = cv2.normalize(disparity, disparity, alpha=0, beta=255, norm_type=cv2.NORM_MINMAX, dtype=cv2.CV_8U)
# imgtest = cv2.rectangle(disp, (x-5, y-5), (x+5, y+5), (0, 0, 255), 5)
# 生成深度图（颜色图）
# dis_color = disparity
# dis_color = cv2.normalize(dis_color, None, alpha=0, beta=255, norm_type=cv2.NORM_MINMAX, dtype=cv2.CV_8U)
# dis_color = cv2.applyColorMap(dis_color, 2)

# 计算三维坐标数据值
threeD = cv2.reprojectImageTo3D(disparity, Q, handleMissingValues=False, ddepth=cv2.CV_16S)
# 计算出的threeD，需要乘以16，才等于现实中的距离
threeD = threeD * 16
# print(threeD)
print("xyza是：", threeD[y][x][0], threeD[y][x][1], threeD[y][x][2], a)

# cv2.setMouseCallback("depth", x, y, threeD)
# cv2.imshow("depth_color", dis_color)
# cv2.imshow("left", frame1)
# cv2.imshow("depth", disp)  # 显示深度图的双目画面
# cv2.imshow('test', imgtest)
# cv2.waitKey(0)

camera.release()
cv2.destroyAllWindows()