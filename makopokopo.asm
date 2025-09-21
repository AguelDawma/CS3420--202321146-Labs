.data
	prompt: .asciz " \nEnter grains in litres: "
	error: .asciz "\nPlease enter valid value."
	makopokopo: .asciz "\nNumber of makopokopo: "
	left: .asciz " \nGrain left: "

 .text
 .globl start
 start:
 	la a0, prompt
 	li a7, 4
 	ecall
 	
 	li a7, 5
 	ecall
 	
 	mv t0, a0 #grains in litres
 	
 	bltz t0, err
 	
 	li t4, 20 #litres per lekopokopo
 	div t1, t0, t4 #find number of makopokopo
 	mul t2, t1, t4 #find full 20 litres we have
 	sub t3, t0, t2
 	
 	la a0, makopokopo
 	li a7, 4
 	ecall
 	
 	mv a0, t1
 	li a7, 1
 	ecall
 	
 	la a0, left
 	li a7, 4
 	ecall
 	
 	mv a0, t3
 	li a7, 1
 	ecall
 	
 	li a7, 10
	ecall
	
err:
	la a0, error
	li a7, 4
	ecall
	
	j start
 	
