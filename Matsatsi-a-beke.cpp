#include <iostream>

using namespace std;

int main(){
	int day;
	
	cout<<"\nEnter a number within the range 1 - 7 : ";
	cin>> day;
	
	int min = 1;
	int max = 7;
	
	int choice1 = 1;
	int choice2 = 2;
	int choice3 = 3;
	int choice4 = 4;
	int choice5 = 5;
	int choice6 = 6;
	int choice7 = 7;
	
	cout<<" \nThe corresponding day is : ";
	
	if(day==choice1){
		cout<<"Mantaha";
		
	}else if(day==choice2){
		cout<<"Labobeli";
		
	}else if(day==choice3){
		cout<<"Laboraro";
		
	}
	if(day==choice4){
		cout<<"Labone";
		
	}else if(day==choice5){
		cout<<"Labohlano";
		
	}else if(day==choice6){
		cout<<"Moqebelo";
		
	}else if(day==choice7){
		cout<<"Sontaha";
		
	}else{
		cout<<" \nYou have entered an invalid character, please try again, ";
		main();
	}
	cout<<'\n';
	system("pause");
	return 0;
}
