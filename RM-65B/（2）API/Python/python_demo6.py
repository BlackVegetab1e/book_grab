# This Python file uses the following encoding: utf-8

# if __name__ == "__main__":
#     pass

# Python 常用接口测试
import ctypes
import os
import sys
import time

if __name__ == "__main__":
    CUR_PATH=os.path.dirname(os.path.realpath(__file__))
    dllPath = os.path.join(CUR_PATH, "RM_Base.dll")
    pDll = ctypes.cdll.LoadLibrary(dllPath)

    class DevMsg(ctypes.Structure):
        _fields_ = [("px", ctypes.c_float),
                    ("py", ctypes.c_float),
                    ("pz", ctypes.c_float),
                    ("rx", ctypes.c_float),
                    ("ry", ctypes.c_float),
                    ("rz", ctypes.c_float)]

    class pose_c(ctypes.Structure):
        _fields_ = [("x", ctypes.c_float),
                    ("y", ctypes.c_float),
                    ("z", ctypes.c_float)]


    class ort_c(ctypes.Structure):
        _fields_ = [("w", ctypes.c_float),
                    ("x", ctypes.c_float),
                    ("y", ctypes.c_float),
                    ("z", ctypes.c_float)]


    class eul_c(ctypes.Structure):
        _fields_ = [("phi", ctypes.c_float),
                    ("theta", ctypes.c_float),
                    ("psi", ctypes.c_float)]


    class POSE_c(ctypes.Structure):
        _fields_ = [("pos", pose_c),
                    ("ort", ort_c),
                    ("eul", eul_c)]

#   API 初始化
    pDll.RM_API_Init( 65,0)

#   连接机械臂
    byteIP = bytes("192.168.1.18","gbk")
    nSocket = pDll.Arm_Socket_Start(byteIP, 8080, 200)
    print (nSocket)

#   设置安装角度
    pDll.Set_Install_Pose.argtype = (ctypes.c_int, ctypes.c_float, ctypes.c_float, ctypes.c_float, ctypes.c_bool)
    nRet = pDll.Set_Install_Pose(nSocket, 0, 0, 0, 1)
    print("Set_Install_Pose ret:" + str(nRet))

#   设置末端DH参数为标准版
    pDll.setLwt.argtype = ctypes.c_int
    pDll.setLwt(0)

    float_joint = ctypes.c_float * 6
    joint1 = float_joint()
    joint1[0] = 0
    joint1[1] = 0
    joint1[2] = 90
    joint1[3] = 0
    joint1[4] = 90
    joint1[5] = 0
    pDll.Movej_Cmd.argtypes = (ctypes.c_int, ctypes.c_float * 6, ctypes.c_byte, ctypes.c_float, ctypes.c_bool)
    pDll.Movej_Cmd.restype = ctypes.c_int
    ret = pDll.Movej_Cmd(nSocket, joint1, 20, 0, 1)
    time.sleep(1)

    pDll.Forward_Kinematics.argtype = (ctypes.c_float * 6)
    pDll.Forward_Kinematics.restype = POSE_c
    compute_pose = POSE_c()

    compute_pose = pDll.Forward_Kinematics(joint1)
   
    print("求解位置：" + str(compute_pose.pos.x) + "," + str(compute_pose.pos.y) + "," +
          str(compute_pose.pos.z) )

    print("求解姿态：" + str(compute_pose.eul.phi) + "," + str(compute_pose.eul.theta) + "," +
          str(compute_pose.eul.psi))


    i = 1
    while i < 3:
        time.sleep(1)
        i+=1
        
#   关闭连接
    pDll.Arm_Socket_Close(nSocket)
