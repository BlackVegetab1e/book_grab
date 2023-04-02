#ifndef _QUATERNION_HAOYU_H
#define _QUATERNION_HAOYU_H
#include<iostream>
#include "geometry_msgs/Quaternion.h"
#include "math.h"
#define PI 3.14159265359

class Quaternion
{
    private:
        double _x;
        double _y;
        double _z;
        double _w;
        
    public:
        Quaternion(double x, double y, double z, double w);
        Quaternion();
        Quaternion(const geometry_msgs::Quaternion & orientation);
        Quaternion(const char &axle, const double &rad);

        Quaternion get_conjugate();
        void normalize();
        geometry_msgs::Quaternion get_orientation();


        friend std::ostream& operator<<(std::ostream &out, Quaternion q);
        friend Quaternion operator+(const Quaternion& a ,const Quaternion& b);
        friend Quaternion operator-(const Quaternion& a ,const Quaternion& b);
        friend Quaternion operator*(const Quaternion& a ,const Quaternion& b);

        template<typename T>
        friend Quaternion operator*(const T& a ,const Quaternion& b);
};

Quaternion operator+(const Quaternion& a ,const Quaternion& b);
Quaternion operator-(const Quaternion& a ,const Quaternion& b);
Quaternion operator*(const Quaternion& a ,const Quaternion& b);
std::ostream& operator<<(std::ostream &out, Quaternion q);

template<typename T>
Quaternion operator*(const T& a ,const Quaternion& b);



#endif