import ctypes
import os
import sys
import time

if __name__ == "__main__":
    CUR_PATH=os.path.dirname(os.path.realpath(__file__))
    dllPath=os.path.join(CUR_PATH,"RM_Base.dll")
    print("1111111111111")
    print(dllPath)	
    pDll=ctypes.cdll.LoadLibrary(dllPath)
    

#   API 初始化
    pDll.RM_API_Init(65, 0)

#   连接机械臂
    byteIP = bytes("192.168.1.18","gbk")
    nSocket = pDll.Arm_Socket_Start(byteIP, 8080, 200)
    print (nSocket)

#   回零位
    float_joint = ctypes.c_float*6
    joint = float_joint()
    joint[0] = 0.0
    joint[1] = 0.0
    joint[2] = 0.0
    joint[3] = 0.0
    joint[4] = 0.0
    joint[5] = 0.0
    pDll.Movej_Cmd.argtypes = (ctypes.c_int, ctypes.c_float * 6, ctypes.c_byte, ctypes.c_float, ctypes.c_bool)
    pDll.Movej_Cmd.restype = ctypes.c_int
    ret = pDll.Movej_Cmd(nSocket, joint, 20, 0, 1)
    if ret != 0:
        print("回零位失败：" + str(ret))
        sys.exit()

#   张开夹爪，抓取位置
    pDll.Set_Gripper_Release.argtypes = (ctypes.c_int, ctypes.c_int, ctypes.c_bool)
    pDll.Set_Gripper_Release.restype = ctypes.c_int
    pDll.Set_Gripper_Release(nSocket, 500, 1);
    float_joint = ctypes.c_float * 6
    joint1 = float_joint()
    joint1[0] = 4.61
    joint1[1] = 93.549
    joint1[2] = 75.276
    joint1[3] = -10.098
    joint1[4] = -76.508
    joint1[5] = 57.224
    ret = pDll.Movej_Cmd(nSocket, joint1, 20, 0, 1)
    if ret != 0:
        print("到达抓取位置失败：" + str(ret))
        sys.exit()

#   抓取
    pDll.Set_Gripper_Pick_On.argtypes = (ctypes.c_int, ctypes.c_int, ctypes.c_int, ctypes.c_bool)
    pDll.Set_Gripper_Pick_On.restype = ctypes.c_int
    ret = pDll.Set_Gripper_Pick_On(nSocket, 500, 500, 1)
    if ret != 0:
        print("抓取失败：" + str(ret))
        sys.exit()

#   放置
    float_joint = ctypes.c_float * 6
    joint2 = float_joint()
    joint2[0] = -106.244
    joint2[1] = 67.172
    joint2[2] = 96.15
    joint2[3] = -10.385
    joint2[4] = -71.097
    joint2[5] = 58.243
    ret = pDll.Movej_Cmd(nSocket, joint2, 20, 0, 1)
    if ret != 0:
        print("到达放置位置失败：" + str(ret))
        sys.exit()

    pDll.Set_Gripper_Release.argtypes = (ctypes.c_int, ctypes.c_int, ctypes.c_bool)
    pDll.Set_Gripper_Release.restype = ctypes.c_int
    pDll.Set_Gripper_Release(nSocket, 200, 1);
    if ret != 0:
        print("放置失败：" + str(ret))
        sys.exit()
#   回零位
    ret = pDll.Movej_Cmd(nSocket, joint, 20, 0, 1)
    if ret != 0:
        print("回零位失败：" + str(ret))
        sys.exit()
    print("夹爪抓取成功")

    i = 1
    while i < 5:
        time.sleep(1)
        i+=1

#   关闭连接
    pDll.Arm_Socket_Close(nSocket);

