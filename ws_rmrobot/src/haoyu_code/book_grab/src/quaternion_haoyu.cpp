#include<quaternion_haoyu.h>


Quaternion::Quaternion(double x, double y, double z, double w)
{
    _x = x;
    _y = y;
    _z = z;
    _w = w;
}

Quaternion::Quaternion()
{
    _x = 0;
    _y = 0;
    _z = 0;
    _w = 1;
}
Quaternion::Quaternion(const geometry_msgs::Quaternion & orientation)
{
    _x = orientation.x;
    _y = orientation.y;
    _z = orientation.z;
    _w = orientation.w;
}

Quaternion::Quaternion(const char &axle, const double &rad)
{
    _w = cos(rad/2);
    if(axle == 'x')
    {
        _x = sin(rad/2), _y = 0, _z = 0;
    }
    else if(axle == 'y')
    {
        _x = 0, _y = sin(rad/2), _z = 0;
    }
    else if(axle == 'z')
    {
        _x = 0, _y = 0, _z = sin(rad/2);
    }
    else{
        _x = 0;
        _y = 0;
        _z = 0;
        _w = 1;
        std::cout<<"wrong input axle, you should use x,y,z to identify your axle"<<std::endl;
    }
}


std::ostream& operator<<(std::ostream &out, Quaternion q)
{
    std::cout<<"x:"<<q._x<<",y:"<<q._y<<",z:"<<q._z<<",w:"<<q._w;
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


geometry_msgs::Quaternion Quaternion::get_orientation()
{
    geometry_msgs::Quaternion ret;
    ret.x = _x;
    ret.y = _y;
    ret.z = _z;
    ret.w = _w;
    return ret;
}


template<typename T> 
Quaternion operator*(const T& a ,const Quaternion& b)
{
    return Quaternion(a*b._x, a*b._y, a*b._z, a*b._w);
}


template Quaternion operator*(const int& a ,const Quaternion& b);
template Quaternion operator*(const double& a ,const Quaternion& b);

