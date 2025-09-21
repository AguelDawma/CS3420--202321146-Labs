#include <iostream>

using namespace std;

int main(){
	int grains;
	cout<<" \nEnter grains in litres: ";
	cin>> grains;
	
	if(grains < 0){
		cout<<"\nPlease enter valid value.";
		main();
	}
	
	int makopokopo = grains/20;
	int litres = makopokopo * 20;
	int remain = grains - litres;
	
	cout<<"\nNumber of makopokopo: ";
	cout<<makopokopo;
	
	cout<< " \nGrain left: ";
	cout<< remain <<endl;
	
	system("pause");
	return 0;
}
