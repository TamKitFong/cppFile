#include <iostream>
#include <cstring>
using namespace std;

class len
{
private:
double lenX;
double lenY;
double lenZ;
public len(double x,double y, double z)
{
  x = lenX;
  y = lenY;
  z = lenZ;
};

int main()
{
  len Cube1 = {1,1,1};
  cout << Cube1.x << endl;
  
return 0;
}
