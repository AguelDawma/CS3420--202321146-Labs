#include <iostream>

using namespace std;

int main(){
	int n;
	
	cout<<"Enter heigt if mokorotlo: ";
	cin>> n;
	
	int middle = n/2;
	
	int spaces = middle+1;
	int rowNumber=1;
	int stars = 1;
	
	while(n >= rowNumber){
		int spacesCounter = 0;
		
		while(spacesCounter <= spaces){
			cout<<" ";
			spacesCounter++;
		}
		
		spaces--;
		
		int starsCounter = 0;
		while(stars > starsCounter){
			cout<<"*";
			starsCounter++;
		}
		cout<<"\n";
		rowNumber++;
		stars += 2; 
	}
	
	system("pause");
	return 0;
}
