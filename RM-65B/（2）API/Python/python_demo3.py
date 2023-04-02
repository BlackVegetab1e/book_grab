'''
Author: Chen Shudong chenshudong@realman-robot.com
Date: 2022-10-29 11:50:21
LastEditors: Chen Shudong chenshudong@realman-robot.com
LastEditTime: 2022-10-29 12:47:30
FilePath: /undefined/home/alientek/Desktop/hkx/pythonDemo/python_demo3.py
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
'''
import ctypes
import os
import sys
import time
# from turtle import pd

if __name__ == "__main__":
    CUR_PATH=os.path.dirname(os.path.realpath(__file__))
    dllPath = os.path.join(CUR_PATH, "RM_Base.dll")
    pDll = ctypes.cdll.LoadLibrary(dllPath)

    #   API 初始化
    pDll.RM_API_Init(65, 0)

    #   连接机械臂
    byteIP = bytes("192.168.1.18", "gbk")
    nSocket = pDll.Arm_Socket_Start(byteIP, 8080, 200)
    print(nSocket)


    #   调用结构体 POSE
    class DevMsg(ctypes.Structure):
        _fields_ = [("px", ctypes.c_float),
                    ("py", ctypes.c_float),
                    ("pz", ctypes.c_float),
                    ("rx", ctypes.c_float),
                    ("ry", ctypes.c_float),
                    ("rz", ctypes.c_float)]


    class DevMsge(ctypes.Structure):
        _fields_ = [("frame_name", ctypes.c_char * 10),
                    ("pose", DevMsg),
                    ("payload", ctypes.c_float),
                    ("x", ctypes.c_float),
                    ("y", ctypes.c_float),
                    ("z", ctypes.c_float)]


    float_joint = ctypes.c_float * 6
    joint = float_joint()
    pose = DevMsg()
    arm_err = ctypes.c_uint16(1)
    sys_err = ctypes.c_uint16(1)
    
    # 获取机械臂状态
    pDll.Get_Current_Arm_State.argtypes = (ctypes.c_int, ctypes.c_float * 6, ctypes.POINTER(DevMsg), ctypes.POINTER(ctypes.c_uint16), ctypes.POINTER(ctypes.c_uint16))
    pDll.Get_Current_Arm_State.restype = ctypes.c_int
    ret = pDll.Get_Current_Arm_State(nSocket, joint, pose, arm_err, sys_err)
    if ret != 0 :
        print("获取机械臂状态失败：" + str(ret))
        sys.exit()
    
    print("当前关节角度：" + str(joint[0]) + "," + str(joint[1]) + "," +
          str(joint[2]) + "," + str(joint[3]) + "," +
          str(joint[4]) + "," + str(joint[5]))

    print("错误码: " + str(arm_err) + str(sys_err));

    # 获取当前坐标系
    pDll.Get_Current_Work_Frame.argtypes = (ctypes.c_int, ctypes.POINTER(DevMsge))
    pDll.Get_Current_Work_Frame.restype = ctypes.c_int
    work_farme = DevMsge()
    ret = pDll.Get_Current_Work_Frame(nSocket, work_farme)
    print("当前工作坐标系:" + str(work_farme.frame_name))


    #  设置工作坐标系
    pDll.Manual_Set_Work_Frame.argtypes = (ctypes.c_int, ctypes.POINTER(ctypes.c_char * 5), ctypes.POINTER(DevMsg), ctypes.c_int)
    pDll.Manual_Set_Work_Frame.restype = ctypes.c_int

    pose2 = DevMsg()
    pose2.px = 0.01;
    pose2.py = 0.02;
    pose2.pz = 0.03;
    pose2.rx = 0.04;
    pose2.ry = 0.05;
    pose2.rz = 0.06;

    str_buf = ctypes.create_string_buffer("test".encode('utf-8'))
    pDll.Manual_Set_Work_Frame(nSocket, str_buf, pose2, 1)

    joint[0] = 0
    joint[1] = 0
    joint[2] = 0
    joint[3] = 0
    joint[4] = 0
    joint[5] = 0
    # MoveJ 运动
    ret = pDll.Movej_Cmd(nSocket, joint, 20, 0, 1)
    print("movej ret:" + str(ret))

    i = 1
    while i < 2:
        time.sleep(1)
        i += 1

    #   关闭连接
    pDll.Arm_Socket_Close(nSocket)

