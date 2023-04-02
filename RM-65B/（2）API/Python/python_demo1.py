# This Python file uses the following encoding: utf-8

# if __name__ == "__main__":
#     pass

# Python 常用接口测试
import ctypes
import os
import time

if __name__ == "__main__":
    CUR_PATH=os.path.dirname(os.path.realpath(__file__))
    dllPath=os.path.join(CUR_PATH,"RM_Base.dll")
    pDll=ctypes.cdll.LoadLibrary(dllPath)
    
#   API 初始化
    pDll.RM_API_Init( 65,0)

#   连接机械臂
    byteIP = bytes("192.168.1.18","gbk")
    nSocket = pDll.Arm_Socket_Start(byteIP, 8080, 200)
    print (nSocket)

#   查询机械臂连接状态
    nRet = pDll.Arm_Socket_State(nSocket)
    print (nRet)

#   设置机械臂末端参数为初始值
    nRet = pDll.Set_Arm_Tip_Init(nSocket, 1)
    print (nRet)

#   设置机械臂动力学碰撞检测等级
    nRet = pDll.Set_Collision_Stage(nSocket, 1, 1)
    print (nRet)

    i = 1
    while i < 3:
        time.sleep(1)
        i+=1
        
#   关闭连接
    pDll.Arm_Socket_Close(nSocket)