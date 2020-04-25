	.file	"main.c"
	.section .rdata,"dr"
__FUNCTION__.0:
	.ascii "fun_0\0"
LC0:
	.ascii "%s: %d\12\0"
	.text
.globl _fun_0
	.def	_fun_0;	.scl	2;	.type	32;	.endef
_fun_0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$5, 8(%esp)
	movl	$__FUNCTION__.0, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
__FUNCTION__.1:
	.ascii "fun_1\0"
	.text
.globl _fun_1
	.def	_fun_1;	.scl	2;	.type	32;	.endef
_fun_1:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$11, 8(%esp)
	movl	$__FUNCTION__.1, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
__FUNCTION__.2:
	.ascii "fun_2\0"
	.text
.globl _fun_2
	.def	_fun_2;	.scl	2;	.type	32;	.endef
_fun_2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$17, 8(%esp)
	movl	$__FUNCTION__.2, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
__FUNCTION__.3:
	.ascii "fun_3\0"
	.text
.globl _fun_3
	.def	_fun_3;	.scl	2;	.type	32;	.endef
_fun_3:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$23, 8(%esp)
	movl	$__FUNCTION__.3, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
.globl _sum
	.def	_sum;	.scl	2;	.type	32;	.endef
_sum:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	$0, -4(%ebp)
L6:
	cmpl	$0, 12(%ebp)
	je	L7
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	leal	-4(%ebp), %eax
	addl	%edx, (%eax)
	addl	$4, 8(%ebp)
	leal	12(%ebp), %eax
	decl	(%eax)
	jmp	L6
L7:
	movl	-4(%ebp), %eax
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "sum:%d\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	andl	$-16, %esp
	movl	$0, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	call	__alloca
	call	___main
	movl	$1, -56(%ebp)
	movl	$2, -52(%ebp)
	movl	$3, -48(%ebp)
	movl	$4, -44(%ebp)
	movl	$5, -40(%ebp)
	movl	$6, -36(%ebp)
	movl	$7, -32(%ebp)
	movl	$8, -28(%ebp)
	movl	$9, -24(%ebp)
	movl	$10, -20(%ebp)
	movl	$0, -60(%ebp)
	call	_fun_0
	call	_fun_3
	movl	$10, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_sum
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.def	_printf;	.scl	3;	.type	32;	.endef
