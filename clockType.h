#ifndef clockType_H
#define clockType_H
#include <iostream>
using namespace std;

class clockType {
	friend ostream& operator<<(ostream&, const clockType&);
	friend istream& operator>>(istream&, clockType&);
public:
	void setTime(int, int, int);
	void getTime(int&, int&, int&) const;
	clockType operator++(); 	// increase by 1 second
	clockType operator++(int); 	// increase by 1 second
	bool operator==(const clockType&) const;
	bool operator!=(const clockType&) const;
	bool operator<=(const clockType&) const;
	bool operator>=(const clockType&) const;
	bool operator<(const clockType&) const;
	bool operator>(const clockType&) const;
	clockType(int=0, int=0, int=0);
private:
	int hr;
	int min;
	int sec;
};
#endif
