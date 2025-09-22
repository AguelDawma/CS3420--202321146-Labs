# C++ Code:
#
# #include <iostream>
#
# using namespace std;
#
# int main(){
# 	int cattle;
# 	cout<<" \nEnter number of cattle: ";
# 	cin>> cattle;
#	
# 	int least = 10;
# 	int great = 40;
#	
#	if(cattle <= least){
#		cout<<" \nNot enough for bohali.";
#
#	}else if(cattle > great){
#		cout<< " \nWealthy cattle owner.";
#	}else if(cattle <= great){
#		cout<<" \nSmall herd.";
#	}
#
#	cout<<"\n";
#	system("pause");
#	return 0;
# }

.data
	prompt: .asciz " \nEnter number of cattle: "
	notEnough: .asciz " \nNot enough for bohali."
	small: .asciz " \nSmall herd."
	wealthy: .asciz " \nWealthy cattle owner."
	
.text
.global Mahali
Mahali : 
	#print the prompt
	la a0, prompt
	li a7, 4
	ecall
	
	#load the input
	li a7, 5
	ecall
	
	#move the input and the limits into the appropriate registers
	mv t0, a0
	li t1, 10
	li t2, 40
	
	#branch conditionally
	ble t0, t1, printNotEnough
	bgt t0, t2, printWealthy
	ble t0, t2, printSmall
	
#defining the lables to branch to
printSmall :
	la a0, small
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
printNotEnough :
	la a0, notEnough
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
printWealthy :
	la a0, wealthy
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
