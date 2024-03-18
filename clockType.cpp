#include "clockType.h"

clockType clockType::operator++(int n)
{
  clockType temp = *this;
  setTime(hr+1,min+1,sec+1);
  
}

bool clockType::operator==(const clockType& other)const
{
  return(hr == other.hr)&&(min == other.min) && (sec == other.sec));
}

ostream& operator<<(ostream &os,const clockType&clock)
{
  if(clock.hr <10) os << "0";
  os << clock.hr << " : ";
  if(clock.min <10) os <<"0";
  os << clock.min << ":";
  if(clock.sec <10)os << "0";
  os << clock.sec;

  return os;
}
