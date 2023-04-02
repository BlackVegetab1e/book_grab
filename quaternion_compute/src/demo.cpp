#include<quaternion.h>

using namespace std;
int main(void)
{
    Quaternion q1(0,0,0,1);
    Quaternion q2(1,0,0,3);
    Quaternion q3(5,1,-2,0);
    cout<<"q1-q2:"<<q1-q2;
    cout<<"q1+q2:"<<q1+q2;
    cout<<"q1*q2:"<<q1*q2;
    cout<<"q2-q3:"<<q1*q1.get_conjugate();
    cout<<"q2+q3:"<<q2*q2.get_conjugate();
    cout<<"q3*(q3^-1):"<<q3*q3.get_conjugate();


    cout<<1*q3;
    cout<<0.1*q3;
    
}