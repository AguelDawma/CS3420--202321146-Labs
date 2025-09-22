# C++ Code:
#
# #include <iostream>
#
# using namespace std;
#
# int main(){
# 	int day;
#	
#	cout<<"\nEnter a number within the range 1 - 7 : ";
#	cin>> day;
#	
#	int min = 1;
#	int max = 7;
#	
#	int choice1 = 1;
#	int choice2 = 2;
#	int choice3 = 3;
#	int choice4 = 4;
#	int choice5 = 5;
#	int choice6 = 6;
#	int choice7 = 7;
#	
#	cout<<" \nThe corresponding day is : ";
#	
#	if(day==choice1){
#		cout<<"Mantaha";
#		
#	}else if(day==choice2){
#		cout<<"Labobeli";
#		
#	}else if(day==choice3){
#		cout<<"Laboraro";
#		
#	}
#	if(day==choice4){
#		cout<<"Labone";
#		
#	}else if(day==choice5){
#		cout<<"Labohlano";
#		
#	}else if(day==choice6){
#		cout<<"Moqebelo";
#		
#	}else if(day==choice7){
#		cout<<"Sontaha";
#		
#	}else{
#		cout<<" \nYou have entered an invalid character, please try again, ";
#		main();
#	}
#	cout<<'\n';
#	return 0;
# }

.data
	mon: .asciz "Mantaha"
	tue: .asciz "Labobeli"
	wed: .asciz "Laboraro"
	thur: .asciz "Labone"
	fri: .asciz "Labohlano"
	sat: .asciz "Moqebelo"
	sun: .asciz "Sontaha"
	
	prompt: .asciz " \nEnter a number within the range 1 - 7 : "
	error: .asciz " \nYou have entered an invalid character, please try again, "
	result: .asciz " \nThe corresponding day is : "
	
.text
.global Beke_Buu
Beke_Buu:
	
	la a0, prompt
	li a7, 4
	ecall
	
	li a7, 5
	ecall
	
	mv s0, a0
	li s1, 1
	li s2, 7
	
	bgt s0, s2, tryAgain
	blt s0, s1, tryAgain
	
	li t0, 1
	li t1, 2
	li t2, 3
	li t3, 4
	li t4, 5
	li t5, 6
	li t6, 7
	
	la a0, result
	li a7, 4
	ecall
	
	beq s0, t0, Monday
	beq s0, t1, Tuesday
	beq s0, t2, Wednesday
	beq s0, t3, Thursday
	beq s0, t4, Friday
	beq s0, t5, Saturday
	beq s0, t6, Sunday
	
tryAgain:
	la a0, error
	li a7, 4
	ecall
	
	j Beke_Buu
	
Monday:
	la a0, mon
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
Tuesday:
	la a0, tue
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
Wednesday:
	la a0, wed
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
Thursday:
	la a0, thur
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
Friday:
	la a0, fri
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
Saturday:
	la a0, sat
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
Sunday:
	la a0, sun
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
	
	
	
