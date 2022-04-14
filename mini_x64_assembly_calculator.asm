%include "util.asm"

GLOBAL _start

section .text

_start:
	mov rdi,number1
	call printstr
	call readint
	mov [user_number1],rax
	mov rdi,number2
	call printstr
	call readint
	mov [user_number2],rax
	mov rdi,operators
	call printstr
	mov rdi,user_operations
	mov rsi,2
	call readstr
	
cmp_operators:
	mov rdi,[user_operations]
	cmp rdi,43       ;+
	je addition
	cmp rdi,45       ;-
	je substraction
	cmp rdi,42       ;*
	je multiplication
	cmp rdi,47       ;/
	je division


exception:
	
	mov rdi,error_message
	call printstr
	call endl
	call exit0

addition:
	mov rdi,[user_number1]
	add rdi,[user_number2]
	call results

substraction:

	mov rdi,[user_number1]
	sub rdi,[user_number2]
	call results

multiplication:

	mov rdi,[user_number1]
	imul rdi,[user_number2]
	call results

division:

	mov rdx,0
	mov rax,[user_number1]
	mov rbx,[user_number2]
	idiv rdi
	mov rdi,rax
	call results

results:
	call printint
	call endl
	call exit0
	
section .data
	number1: db "Enter Number 1 : ",0
	number2: db "Enter Number 2 : ",0
	operators: db "Select any one operation to perform (+,-,*,/) : ",0
	error_message: db "Operation can not be performed, choice of operator is out of scope."
	
section .bss
	user_number1: resb 8
	user_number2: resb 8
	user_operations: resb 2
	




