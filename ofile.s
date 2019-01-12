.text
main:
	li $t0, 1
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	li $t0, 1
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $t0, $t0, $t1
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
