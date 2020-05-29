	.file	"teste.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "eu sou hugo\0"
	.text
	.globl	_imprime_hugo
	.def	_imprime_hugo;	.scl	2;	.type	32;	.endef
_imprime_hugo:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$LC0, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "teste do hugo\0"
LC3:
	.ascii "o valor de x \303\251 %d\12\0"
LC4:
	.ascii "o valor de y \303\251 %.2f\12\0"
LC5:
	.ascii "o valor de texto \303\251 %s\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$10, 28(%esp)
	flds	LC1
	fstps	24(%esp)
	movl	$LC2, 20(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	flds	24(%esp)
	fstpl	4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	call	_imprime_hugo
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
	.align 4
LC1:
	.long	1078523331
	.ident	"GCC: (MinGW.org GCC Build-20200227-1) 9.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
