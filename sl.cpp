#include <iostream>
using namespace std;

double area(double,double);

int main()
{
  double x,y;

  cout << "enter values of length x,y:\n";
  cin >> x >> y;

  cout << "area : " << area(x,y) << "\n";
}

double area(double x,double y)
{
  double a;
  a = x*y;
  return a;
}
