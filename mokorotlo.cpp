#include <iostream>

using namespace std;

void head(int indent){
	int space = 0;
	
	while(indent > space){
		cout<<" ";
		space++;
	}
	cout<<"(0)"<<endl;
}

int main(){
	int n;
	
	cout<<"Enter heigt if mokorotlo: ";
	cin>> n;
	
	int middle = n/2;
	
	int spaces = middle+1;
	int rowNumber=1;
	int stars = 1;
	
	spaces+=10;
	
	head(spaces);
	
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
