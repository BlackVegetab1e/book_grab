#include<iostream>

class Quaternion
{
    private:
        double _x;
        double _y;
        double _z;
        double _w;
        
    public:
        Quaternion(double x, double y, double z, double w);
        
        
        Quaternion get_conjugate();
        void normalize();

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

