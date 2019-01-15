.text
main:
#setting
#storing int
	li $t0, 2
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	sw $t0, var
#printing
#multiplying
#storing int
	li $t0, 3
	sub $sp, $sp, 4
	sw $t0, 0($sp)
#storing int
	li $t0, 4
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $t0, $t0, $t1
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $a0, $t0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
#printing
#storing var
	lw $t0, var
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $a0, $t0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
#redefining
#subtracting
#storing var
	lw $t0, var
	sub $sp, $sp, 4
	sw $t0, 0($sp)
#storing int
	li $t0, 1
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
	sw $t0, var
	li $v0, 10
	syscall
.data
var:
	.space 4
newline:
	.asciiz "\n"
