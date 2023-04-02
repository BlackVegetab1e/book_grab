#include<quaternion_haoyu.h>


Quaternion::Quaternion(double x, double y, double z, double w)
{
    _x = x;
    _y = y;
    _z = z;
    _w = w;
}

std::ostream& operator<<(std::ostream &out, Quaternion q)
{
    std::cout<<"x:"<<q._x<<",y:"<<q._y<<",z:"<<q._z<<",w:"<<q._w<<std::endl;
    return out;
}
      
Quaternion operator+(const Quaternion& a ,const Quaternion& b)
{
    return Quaternion(a._x+b._x, a._y+b._y, a._z+b._z, a._w+b._w);
}
Quaternion operator-(const Quaternion& a ,const Quaternion& b)
{
    return Quaternion(a._x-b._x, a._y-b._y, a._z-b._z, a._w-b._w);
}
Quaternion operator*(const Quaternion& a ,const Quaternion& b)
{
    double new_w = a._w*b._w - a._x*b._x - a._y*b._y - a._z*b._z;
    double new_x = a._w*b._x + a._x*b._w + a._y*b._z - a._z*b._y;
    double new_y = a._w*b._y + a._y*b._w + a._z*b._x - a._x*b._z;
    double new_z = a._w*b._z + a._z*b._w + a._x*b._y - a._y*b._x;
    return Quaternion(new_x,new_y,new_z,new_w);
}


Quaternion Quaternion::get_conjugate()
{
    return Quaternion(-_x, -_y, -_z, _w);
}


template<typename T> 
Quaternion operator*(const T& a ,const Quaternion& b)
{
    return Quaternion(a*b._x, a*b._y, a*b._z, a*b._w);
}


template Quaternion operator*(const int& a ,const Quaternion& b);
template Quaternion operator*(const double& a ,const Quaternion& b);