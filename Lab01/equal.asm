.data
num1 : .asciiz "Enter the first integer: "
num2 : .asciiz "Enter the second integer: "
eq: .asciiz "Equal\n"
ineq: .asciiz "Not Equal\n"

.text
.globl main

main:
     li $v0, 4
     la $a0, num1
     syscall
     
     li $v0, 5
     syscall
     
     move $t0, $v0
     li $v0, 4
     la $a0, num2
     syscall
     
     li $v0, 5
     syscall
     
     move $t1, $v0
     
     beq $t0, $t1, equal
     j not_equal
     
equal:
      li $v0, 4
      la $a0, eq
      syscall
      j end
      
not_equal:
      li $v0, 4
      la $a0, ineq
      syscall
      
end:
    li $v0, 10
    syscall