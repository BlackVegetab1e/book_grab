using System;
using System.Runtime.InteropServices;
using System.Threading;
namespace RM_SDK_windwos_x86_csharp
{
    class Program
    {

        const int RMERR_SUCC = 0;

        const int ARM_DOF = 7;

        const int None_Mode = 0;

        const int Joint_Mode = 1;

        const int Line_Mode = 2;

        const int Circle_Mode = 3;

        const int X_Dir = 0;       //X轴方向
        const int Y_Dir = 1;       //Y轴方向
        const int Z_Dir = 2;       //Z轴方向

        const int RX_Rotate = 0;       //RX轴方向
        const int RY_Rotate = 1;      //RY轴方向
        const int RZ_Rotate = 2;       //RZ轴方向

        //uint m_sockhandler;

        [StructLayout(LayoutKind.Sequential)]
        public struct POSE2
        {
            //位置
            public float px;
            public float py;
            public float pz;
            //四元数
            public float w;
            public float x;
            public float Y;
            public float z;
        }
        [StructLayout(LayoutKind.Sequential)]
        public struct ORT
        {
            public float rx;
            public float ry;
            public float rz;
        }
        [StructLayout(LayoutKind.Sequential)]
        public struct POSE
        {
            //位置
            public float px;
            public float py;
            public float pz;
            //欧拉角
            public float rx;
            public float ry;
            public float rz;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct KINEMATIC
        {
            public POSE2 pose;
            public ORT ort;
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
        public struct FRAME_NAME
        {
            //位置
            [MarshalAs(UnmanagedType.ByValArray, SizeConst =10)]
            public char[] name;
        }



        [StructLayout(LayoutKind.Sequential)]
        public struct FRAME
        {
        //位置
            public FRAME_NAME frame_name;
            public POSE pose;
            public float payload;
            public float x;
            public float y;
            public float z;
        }
        [StructLayout(LayoutKind.Sequential)]
        public struct JOINT_STATE
        {
            //位置
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 7)]
            public float[] joint;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 7)]
            public float[] temperature;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 7)]
            public float[] voltage;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 7)]
            public float[] current;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 7)]
            public byte[] en_state;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 7)]
            public UInt16[] err_flag;
            public UInt16 sys_err;
        }


        // 不使用如下修饰，会导致C#在调用完后，释放pData内容，导致C程序崩溃；所以在声明代理的时候，说明是C回调，不会收里面资源 
        [System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute(System.Runtime.InteropServices.CallingConvention.Cdecl)]
        public delegate void CallbackDelegate(int handler, int nKey, [MarshalAs(UnmanagedType.LPArray, SizeConst = 1024)] char[] sData, int len);
        public static CallbackDelegate callback;

        [DllImport("RM_Base.dll", EntryPoint = "RM_API_Init", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        private static extern void RM_API_Init( int devMode, CallbackDelegate cb);

        //初始化机械臂控制库
        [DllImport("RM_Base.dll", EntryPoint = "Arm_Socket_Start", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern uint Arm_Socket_Start([MarshalAs(UnmanagedType.LPStr)] string ip, int arm_prot, int recv_timeout);


        [DllImport("RM_Base.dll", EntryPoint = "Arm_Socket_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Arm_Socket_State(uint ArmSocket);

        [DllImport("RM_Base.dll", EntryPoint = "Arm_Socket_Close", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern void Arm_Socket_Close(uint ArmSocket);


        [DllImport("RM_Base.dll", EntryPoint = "Arm_Socket_Buffer_Clear", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern void Arm_Socket_Buffer_Clear(uint ArmSocket);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Speed(uint ArmSocket, byte joint_num, float speed, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "API_Version", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr API_Version();

        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Acc(uint ArmSocket, byte joint_num, float acc, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Parser_Joint_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Parser_Joint_Acc([MarshalAs(UnmanagedType.LPStr)] string msg);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Min_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Min_Pos(uint ArmSocket, byte joint_num, float joint, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Parser_Joint_Min_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Parser_Joint_Min_Pos([MarshalAs(UnmanagedType.LPStr)] string msg);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Max_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Max_Pos(uint ArmSocket, byte joint_num, float joint, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Parser_Joint_Max_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Parser_Joint_Max_Pos([MarshalAs(UnmanagedType.LPStr)] string msg);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_EN_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_EN_State(uint ArmSocket, byte joint_num, bool state, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Zero_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Zero_Pos(uint ArmSocket, byte joint_num, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Err_Clear", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Err_Clear(uint ArmSocket, byte joint_num, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Start_Calibrate", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Start_Calibrate(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Stop_Calibrate", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Calibrate(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Calibrate_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Calibrate_State(uint ArmSocket, [In, Out] float[] joint_state, [In, Out] UInt16[] state,ref int time, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Speed(uint ArmSocket, [In, Out] float[] speed);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Acc(uint ArmSocket, [In, Out] float[] acc);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Min_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Min_Pos(uint ArmSocket, [In, Out] float[] min_joint);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Max_Pos", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Max_Pos(uint ArmSocket, [In, Out] float[] max_joint);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Err_Flag", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Err_Flag(uint ArmSocket, [In, Out] UInt16[] state);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Software_Version", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Software_Version(uint ArmSocket, [In, Out] float[] version);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Line_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Line_Speed(uint ArmSocket, float speed, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Line_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Line_Acc(uint ArmSocket, float acc, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Angular_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Angular_Speed(uint ArmSocket, float speed, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Angular_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Angular_Acc(uint ArmSocket, float acc, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Line_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Line_Speed(uint ArmSocket, ref float speed);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Line_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Line_Acc(uint ArmSocket, ref float acc);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Angular_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Angular_Speed(uint ArmSocket, ref float speed);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Angular_Acc", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Angular_Acc(uint ArmSocket, ref float acc);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Tip_Init", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Tip_Init(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Collision_Stage", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Collision_Stage(uint ArmSocket, int stage, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Collision_Stage", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Collision_Stage(uint ArmSocket, ref int stage);

        [DllImport("RM_Base.dll", EntryPoint = "Set_DH_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_DH_Data(uint ArmSocket, float lsb, float lse, float lew, float lwt, float d3, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Get_DH_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_DH_Data(uint ArmSocket, ref float lsb, ref float lse, ref float lew, ref float lwt, ref float d3);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Joint_Zero_Offset", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Joint_Zero_Offset(uint ArmSocket, [In, Out] float[] offset, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Dynamic_Parm", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Dynamic_Parm(uint ArmSocket, [In, Out] float[] parm, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Tool_Software_Version", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Tool_Software_Version(ref int version);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Servo_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Servo_State(uint ArmSocket, bool cmd, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Auto_Set_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int  Auto_Set_Tool_Frame(uint ArmSocket, byte point_num, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Generate_Auto_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Generate_Auto_Tool_Frame([MarshalAs(UnmanagedType.LPStr)] string name, float payload, float x, float y, float z, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Manual_Set_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Manual_Set_Tool_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, POSE pose, float payload, float x, float y, float z, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Change_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Change_Tool_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Delete_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Delete_Tool_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Payload", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Payload(uint ArmSocket, int payload, float cx, float cy, float cz, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_None_Payload", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_None_Payload(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Current_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Current_Tool_Frame(uint ArmSocket, ref FRAME tool);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Given_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Given_Tool_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name,ref FRAME tool);

        [DllImport("RM_Base.dll", EntryPoint = "Get_All_Tool_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_All_Tool_Frame(uint ArmSocket, [In, Out] FRAME_NAME[] names);


        [DllImport("RM_Base.dll", EntryPoint = "Auto_Set_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Auto_Set_Work_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, byte point_num, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Manual_Set_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Manual_Set_Work_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, POSE pose, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Change_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Change_Work_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Delete_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Delete_Work_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Current_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Current_Work_Frame(uint ArmSocket, ref FRAME frame);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Given_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Given_Work_Frame(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string name, ref POSE pose);


        [DllImport("RM_Base.dll", EntryPoint = "Get_All_Work_Frame", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_All_Work_Frame(uint ArmSocket, [In, Out] FRAME_NAME[] names);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Current_Arm_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Current_Arm_State(uint ArmSocket, [In, Out] float[] joint, ref POSE pose, ref UInt16 Arm_Err, ref UInt16 Sys_Err);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Current_Arm_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Temperature(uint ArmSocket, [In, Out] float[] temperature);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Current", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Current(uint ArmSocket, [In, Out] float[] current);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Voltage", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Voltage(uint ArmSocket, [In, Out] float[] voltage);



        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_All_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_All_State(uint ArmSocket, ref JOINT_STATE joint_state);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Plan_Num", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Plan_Num(uint ArmSocket, ref int plan);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Init_Pose", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Init_Pose(uint ArmSocket, [In, Out]  float[] target, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Init_Pose", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Init_Pose(uint ArmSocket, [In, Out] float[] joint);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Install_Pose", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Install_Pose(float x, float y, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Movej_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Movej_Cmd(uint ArmSocket, [In, Out] float[] joint, byte v, float r, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Movel_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Movel_Cmd(uint ArmSocket, POSE pose, byte v, float r, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Movec_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern  int Movec_Cmd(uint ArmSocket, POSE pose_via, POSE pose_to, byte v, float r, byte loop, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Movej_CANFD", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Movej_CANFD(uint ArmSocket, [In, Out] float[] joint, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Movep_CANFD", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Movep_CANFD(uint ArmSocket, POSE pose, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Move_Stop_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Move_Stop_Cmd(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Move_Pause_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Move_Pause_Cmd(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Move_Continue_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Move_Continue_Cmd(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Clear_Current_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_Current_Trajectory(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Clear_All_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_All_Trajectory(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Current_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Current_Trajectory(uint ArmSocket, ref int type, [In, Out] float[] data);


        [DllImport("RM_Base.dll", EntryPoint = "Add_Waypoint", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Add_Waypoint(uint ArmSocket, [In, Out] float[] joint, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Start_Waypoint", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Start_Waypoint(uint ArmSocket, int frq, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Clear_Waypoint", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_Waypoint(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Stop_Waypoint", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Waypoint(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Movej_P_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Movej_P_Cmd(uint ArmSocket, POSE pose, byte v, float r, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Timer", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Timer(uint ArmSocket, int time, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Joint_Teach_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Joint_Teach_Cmd(uint ArmSocket, byte num, byte direction, byte v, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Pos_Teach_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Pos_Teach_Cmd(uint ArmSocket, int type, byte direction, byte v, bool block);
		
		[DllImport("RM_Base.dll", EntryPoint = "Ort_Teach_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Ort_Teach_Cmd(uint ArmSocket, int type, byte direction, byte v, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Teach_Stop_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Teach_Stop_Cmd(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Joint_Step_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Joint_Step_Cmd(uint ArmSocket, byte num, float step, byte v, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Joint_Step_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Pos_Step_Cmd(uint ArmSocket, int type, float step, byte v, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Ort_Step_Cmd", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Ort_Step_Cmd(uint ArmSocket, int type, float step, byte v, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Controller_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Controller_State(uint ArmSocket, ref float voltage, ref float current, ref float temperature, ref UInt16 sys_err);

        [DllImport("RM_Base.dll", EntryPoint = "Set_WiFi_AP_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_WiFi_AP_Data(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string  wifi_name, [MarshalAs(UnmanagedType.LPStr)] string password);

        [DllImport("RM_Base.dll", EntryPoint = "Set_WiFI_STA_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_WiFI_STA_Data(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string router_name, [MarshalAs(UnmanagedType.LPStr)] string password);


        [DllImport("RM_Base.dll", EntryPoint = "Set_USB_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_USB_Data(uint ArmSocket, int baudrate);


        [DllImport("RM_Base.dll", EntryPoint = "Set_RS485", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_RS485(uint ArmSocket, int baudrate);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Ethernet", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Ethernet(uint ArmSocket);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Arm_Power", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Arm_Power(uint ArmSocket, bool cmd, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Power_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Power_State(uint ArmSocket, ref int power);


        [DllImport("RM_Base.dll", EntryPoint = "Clear_System_Err", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_System_Err(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Hardware_Version", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Hardware_Version(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string version);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Arm_Software_Version", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Arm_Software_Version(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string plan_version, [MarshalAs(UnmanagedType.LPStr)] string ctrl_version);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Log_File", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Log_File(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_System_Runtime", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_System_Runtime(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string state, ref int day, ref int hour, ref int min, ref int sec);

        [DllImport("RM_Base.dll", EntryPoint = "Get_System_Runtime", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_System_Runtime(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Joint_Odom", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Joint_Odom(uint ArmSocket, [MarshalAs(UnmanagedType.LPStr)] string state, [In, Out] float[] odom);


        [DllImport("RM_Base.dll", EntryPoint = "Clear_Joint_Odom", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_Joint_Odom(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_High_Speed_Eth", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_High_Speed_Eth(uint ArmSocket, byte num, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_IO_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_IO_State(uint ArmSocket, int IO, byte num, ref byte state);

        [DllImport("RM_Base.dll", EntryPoint = "Get_DI_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_IO_State(uint ArmSocket, int IO, byte num, bool state, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Get_IO_Input", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_IO_Input(uint ArmSocket, ref byte DI_state, ref float AI_voltage);

        [DllImport("RM_Base.dll", EntryPoint = "Get_IO_Output", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_IO_Output(uint ArmSocket, ref byte DO_state, ref float AO_voltage);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Tool_DO_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Tool_DO_State(uint ArmSocket, byte num, bool state, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Tool_IO_Mode", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int  Set_Tool_IO_Mode(uint ArmSocket, byte num, bool state, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Tool_IO_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Tool_IO_State(uint ArmSocket, [In, Out] float[] IO_Mode, [In, Out] float[] IO_State);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Tool_Voltage", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Tool_Voltage(uint ArmSocket, byte type, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Tool_Voltage", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Tool_Voltage(uint ArmSocket, ref byte voltage);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Gripper_Route", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Gripper_Route(uint ArmSocket, int min_limit, int max_limit, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Gripper_Release", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Gripper_Release(uint ArmSocket, int speed, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Gripper_Release", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Gripper_Pick(uint ArmSocket, int speed, int force, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Gripper_Pick_On", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Gripper_Pick_On(uint ArmSocket, int speed, int force, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Gripper_Position", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Gripper_Position(uint ArmSocket, int position, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Start_Drag_Teach", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Start_Drag_Teach(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Stop_Drag_Teach", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Drag_Teach(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Run_Drag_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Run_Drag_Trajectory(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Pause_Drag_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Pause_Drag_Trajectory(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Continue_Drag_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Continue_Drag_Trajectory(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Continue_Drag_Trajectory", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Drag_Trajectory(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Drag_Trajectory_Origin", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Drag_Trajectory_Origin(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Start_Multi_Drag_Teach", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Start_Multi_Drag_Teach(uint ArmSocket, int mode, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Force_Postion", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Force_Postion(uint ArmSocket, int mode, int force_level, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Stop_Force_Postion", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Force_Postion(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Force_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Force_Data(uint ArmSocket, [In, Out] float[] Force);


        [DllImport("RM_Base.dll", EntryPoint = "Clear_Force_Data", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Clear_Force_Data(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Force_Sensor", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Force_Sensor(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Manual_Set_Force", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Manual_Set_Force(uint ArmSocket, int type, [In, Out] float[] joint);


        [DllImport("RM_Base.dll", EntryPoint = "Stop_Set_Force_Sensor", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Set_Force_Sensor(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Hand_Posture", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Hand_Posture(uint ArmSocket, int posture_num, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Hand_Seq", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Hand_Seq(uint ArmSocket, int seq_num, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Hand_Angle", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Hand_Angle(uint ArmSocket, [In, Out] int[] angle, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Hand_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Hand_Speed(uint ArmSocket, int speed, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Hand_Force", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Hand_Force(uint ArmSocket, int force, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_PWM", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_PWM(uint ArmSocket, int Frq, int Dpulse, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Stop_PWM", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_PWM(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Fz", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Fz(uint ArmSocket, ref float Fz);


        [DllImport("RM_Base.dll", EntryPoint = "Clear_Fz", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern  int Clear_Fz(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Auto_Set_Fz", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Auto_Set_Fz(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Manual_Set_Fz", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Manual_Set_Fz(uint ArmSocket, [In, Out] float[] joint1, [In, Out] float joint2);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Modbus_Mode", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Modbus_Mode(uint ArmSocket, int port, int baudrate, int timeout, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Close_Modbus_Mode", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Close_Modbus_Mode(uint ArmSocket, int port, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Read_Coils", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Read_Coils(uint ArmSocket, int port,int address,int num,int device,ref int coils_data);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Read_Input_Status", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Read_Input_Status(uint ArmSocket, int port, int address, int num, int device, ref int coils_data);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Read_Holding_Registers", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Read_Holding_Registers(uint ArmSocket, int port, int address, int device, ref int coils_data);

        [DllImport("RM_Base.dll", EntryPoint = "Get_Read_Input_Registers", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Read_Input_Registers(uint ArmSocket, int port, int address, int device, ref int coils_data);


        [DllImport("RM_Base.dll", EntryPoint = "Write_Single_Coil", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Write_Single_Coil(uint ArmSocket, int port, int address, int data, int device, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Write_Coils", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Write_Coils(uint ArmSocket, int port, int address, int num, ref byte coils_data, int device, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Write_Single_Register", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Write_Single_Register(uint ArmSocket, int port, int address, int data, int device, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Write_Registers", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Write_Registers(uint ArmSocket, int port, int address, int num, ref byte single_data, int device, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Vehicle", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Vehicle(uint ArmSocket, int speed, int angular, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Lift", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Lift(uint ArmSocket, int height, int speed, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Lift_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Lift_Speed(uint ArmSocket, int speed, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Set_Lift_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Lift_Height(uint ArmSocket, int height, int speed, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Lift_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Lift_State(uint ArmSocket, ref int height, ref int current, ref int err_flag);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Car_Move", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Car_Move(uint ArmSocket, int linear, int angular, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Car_Navigation_Speed", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Car_Navigation_Speed(uint ArmSocket, int speed, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Car_Navigation_Mode", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Car_Navigation_Mode(uint ArmSocket, int mode, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Get_Car_State", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Get_Car_State(uint ArmSocket, ref int volume, ref int voltage, ref int current, ref int car_err, ref int car_state, ref int station);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Car_Charge", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Car_Charge(uint ArmSocket, int charge_state, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Set_Car_Station_Num", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Set_Car_Station_Num(uint ArmSocket, int charge_state, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Start_Force_Position_Move", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Start_Force_Position_Move(uint ArmSocket, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Force_Position_Move_POSE", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Force_Position_Move_POSE(uint ArmSocket, POSE pose, byte sensor, byte mode, int dir, float force, bool block);


        [DllImport("RM_Base.dll", EntryPoint = "Force_Position_Move_Joint", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Force_Position_Move_Joint(uint ArmSocket, ref float joint, byte sensor, byte mode, int dir, float force, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "Stop_Force_Postion_Move", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Stop_Force_Postion_Move(uint ArmSocket, bool block);

        [DllImport("RM_Base.dll", EntryPoint = "setAngle", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern void setAngle(uint ArmSocket, float x, float y);

        [DllImport("RM_Base.dll", EntryPoint = "setLwt", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern void setLwt(uint ArmSocket, int type);


        [DllImport("RM_Base.dll", EntryPoint = "Forward_Kinematics", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern  KINEMATIC Forward_Kinematics(uint ArmSocket, [In,Out] float[] joint);

        [DllImport("RM_Base.dll", EntryPoint = "inverse_kinematics", CharSet = CharSet.Auto, CallingConvention = CallingConvention.Cdecl)]
        public static extern int inverse_kinematics(uint ArmSocket, [In, Out] float[] q_in, ref KINEMATIC q_pose, [In, Out]  float[] q_out,uint  flag);

        static uint sockhandle;
        // 基础接口调用
        static void Demo1(){
			//网络连接状态
            int ret = Arm_Socket_State(sockhandle);

            //清除关节错误代码
            ret = Set_Joint_Err_Clear(sockhandle, 1, true);

            //获取关节最大速度
            float [] fSpeeds = { 0, 1, 2, 3, 4, 5, 6 };
            ret = Get_Joint_Speed(sockhandle, fSpeeds);

            //获取关节最大加速度
            float [] fAccs = { 0, 1, 2, 3, 4, 5, 6 };
            ret = Get_Joint_Acc(sockhandle, fAccs);

            //获取关节最小限位
            float [] fMinJoint = { 0, 1, 2, 3, 4, 5, 6 };
            ret = Get_Joint_Min_Pos(sockhandle, fMinJoint);

            //获取关节最大限位
            float [] fMaxJoint = { 0, 1, 2, 3, 4, 5, 6 };
            ret = Get_Joint_Max_Pos(sockhandle, fMaxJoint);


            FRAME tool = new FRAME();
            ret = Get_Current_Tool_Frame(sockhandle, ref tool);
            string arr = new string(tool.frame_name.name);
            Console.WriteLine("tool:{0},{1}", ret, arr);
        }

        // 运动接口调用
        static void Demo2(){
            // 回零位
            float[] fJoint = { 0, 0, 0, 0, 0, 0};
            Movej_Cmd(sockhandle, fJoint, 50, 0, true);

            // 动作1
            fJoint[1] = 35;
            fJoint[2] = 60;
            fJoint[4] = 60;
            Movej_Cmd(sockhandle, fJoint, 50, 0, true);
        }

        // 力位混合控制
        static void Demo3()
        {
            // 开启力控
            Start_Force_Position_Move(sockhandle, true);
            // 获取当前位姿
            POSE mpose;
            mpose.px = 0;
            mpose.py = 0;
            mpose.pz = 0;
            mpose.rx = 0;
            mpose.ry = 0;
            mpose.rz = 0;
            float[] fJoint = { 0, 0, 0, 0, 0, 0 };
            UInt16 sys_err = 0;
            UInt16 arm_err = 0;
            Get_Current_Arm_State(sockhandle, fJoint, ref mpose, ref arm_err, ref sys_err);
            for (int i = 0; i < 300; i++)
            {
                Force_Position_Move_POSE(sockhandle, mpose, 0, 0, 2, -5, false);
            }

            Stop_Force_Postion_Move(sockhandle, true);
        }
		static void Main(string[] args)
        {
            Console.WriteLine("this is RM-ROBOT!");
            //连接
            RM_API_Init(65, null);
            sockhandle = Arm_Socket_Start("192.168.1.18", 8080, 3000);


            // 基础获取状态接口调用
            Demo1();

            // 运动类型接口调用
            //Demo2();

			// 力控测试 - 在Demo2的基础上使用
			//Demo3();
			
			
			
			

            while (true)
            {
                Thread.Sleep(1);
            }
        }
    }
}
