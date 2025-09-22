# C++ Code:
#
# #include <iostream>
#
# using namespace std;
#
# void head(int indent){
#	int space = 0;
#	
#	while(indent > space){
#		cout<<" ";
#		space++;
#	}
#	cout<<"(0)"<<endl;
# }
#
# int main(){
#	int n;
#	
#	cout<<"Enter heigt if mokorotlo: ";
#	cin>> n;
#	
#	int middle = n/2;
#	
#	int spaces = middle+1;
#	int rowNumber=1;
#	int stars = 1;
#	
#	spaces+=10;
#	
#	head(spaces);
#	
#	while(n >= rowNumber){
#		int spacesCounter = 0;
#		
#		while(spacesCounter <= spaces){
#			cout<<" ";
#			spacesCounter++;
#		}
#		
#		spaces--;
#		
#		int starsCounter = 0;
#		while(stars > starsCounter){
#			cout<<"*";
#			starsCounter++;
#		}
#		cout<<"\n";
#		rowNumber++;
#		stars += 2; 
#	}
#	
#	return 0;
# }

.data
	prompt: .asciz " \nEnter size of mokorotlo: "
	head: .asciz "(0)\n"
	space: .asciz " "
	star: .asciz "*"
	endl: .asciz "\n"
	
.text
.global Mokorotlo
Mokorotlo:
	la a0, prompt
	li a7, 4
	ecall
	
	li a7, 5
	ecall
	
	mv s0, a0 #row limit (n)
	li s1, 2 #store 2 for division and locate the middle
	div t0, s0, s1 #spaces
	addi t0, t0, 10 #add some indentation before the mokorotlo
	li t1, 1 #row number
	li t2, 0 #stars
	
	Head:
		li t5, 2 #space, beginning at 2 to place the head at the tip
		headSpaces:
			blt t0, t5, drawHead
			
			la a0, space
			li a7, 4
			ecall
			
			addi t5, t5, 1
			j headSpaces
			
		drawHead:
			la a0, head
			li a7, 4
			ecall
			
			j loop
		
	
	loop:
		bge t1, s0, exit
		
		li t3, 0 #spaces counter
		
		printSpaces:
			ble t0, t3, intermid01
			
			la a0, space
			li a7, 4
			ecall
			
			addi t3, t3, 1
			j printSpaces
			
		intermid01:
			addi t0, t0, -1
			li t4, 0 #stars counter
			j printStars
			
		printStars:
			bgt t4, t2, intermid02
			
			la a0, star
			li a7, 4
			ecall
			
			addi t4, t4, 1
			
			j printStars
			
		intermid02:
			#go to next line
			la a0, endl
			li a7, 4
			ecall
			
			addi t1, t1, 1
			addi t2, t2, 2
			
			j loop
		
exit:
	li a7, 10
	ecall
		
		
