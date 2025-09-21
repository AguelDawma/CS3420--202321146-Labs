#include <iostream>

using namespace std;

int main(){
	int cattle;
	cout<<" \nEnter number of cattle: ";
	cin>> cattle;
	
	int least = 10;
	int great = 40;
	
	if(cattle <= least){
		cout<<" \nNot enough for bohali.";

	}else if(cattle > great){
		cout<< " \nWealthy cattle owner.";
	}else if(cattle <= great){
		cout<<" \nSmall herd.";
	}
	
	cout<<"\n";
	system("pause");
	return 0;
}
