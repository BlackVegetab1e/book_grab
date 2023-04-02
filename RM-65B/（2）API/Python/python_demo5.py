import ctypes
import os
import sys
import time

if __name__ == "__main__":
    CUR_PATH=os.path.dirname(os.path.realpath(__file__))
    dllPath=os.path.join(CUR_PATH, "RM_Base.dll")
    pDll=ctypes.cdll.LoadLibrary(dllPath)

#   API 初始化
    pDll.RM_API_Init(65, 0)

#   连接机械臂
    byteIP = bytes("192.168.1.18", "gbk")
    nSocket = pDll.Arm_Socket_Start(byteIP, 8080, 200)
    print (nSocket)

#   关节示教
    pDll.Joint_Teach_Cmd.argtypes = (ctypes.c_int, ctypes.c_byte, ctypes.c_byte, ctypes.c_byte, ctypes.c_bool)
    pDll.Joint_Teach_Cmd.restype = ctypes.c_int
    ret = pDll.Joint_Teach_Cmd(nSocket, 2, 1, 20, 1)
    time.sleep(2)
    if ret != 0:
        print("关节2正方向示教失败：" + str(ret))
        sys.exit()

    pDll.Teach_Stop_Cmd.argtypes = (ctypes.c_int, ctypes.c_bool)
    pDll.Teach_Stop_Cmd.restype = ctypes.c_int
    ret = pDll.Teach_Stop_Cmd(nSocket,1)
    if ret != 0:
        print("停止示教失败：" + str(ret))
        sys.exit()

    print("关节2正方向示教成功")

    i = 1
    while i < 5:
        time.sleep(1)
        i += 1

    #   关闭连接
    pDll.Arm_Socket_Close(nSocket)