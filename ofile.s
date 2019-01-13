.text
main:
#printing
#subtracting
#storing int
	li $t0, 3
	sub $sp, $sp, 4
	sw $t0, 0($sp)
#storing int
	li $t0, 2
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $t0, $t1, $t0
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
.data
newline:
	.asciiz "\n"
