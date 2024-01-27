.data
str1: .asciiz "Enter your name: "
str2: .asciiz "Hello "
name: .space 20
.text
.globl main

main:
     li $v0, 4
     la $a0, str1
     syscall
     
     li $v0, 8
     la $a0, name
     li $a1, 20
     syscall
     
     li $v0, 4
     la $a0, str2
     syscall
     
     li $v0, 4
     la $a0, name
     syscall
     
     li $v0, 10
     syscall
     