.data
array: .space 10000
space: .asciiz " "
carriage_return: .asciiz "\n"
.text
input:
  li $v0,5
  syscall
  move $s1,$v0 #����n��
  li $v0,5
  syscall
  move $s2,$v0 #����m��
  multu $s1,$s2
  mflo $s3  
  li $t7,0 #������
  la $t0,array #����ַ
  
loop1: #����n*m������
  li $v0,5
  syscall
  sw $v0,0($t0)
  addi $t0,$t0,4
  addi $t7,$t7,1
  bne $t7,$s3,loop1
  nop
  
loop2: #�ж��Ƿ�Ϊ�㣬Ϊ�����
  lw $t1,0($t0)
  beq $t1,$zero,break_out
  nop
  add $t4,$t7,$s2
  div $t4,$s2
  mfhi $t2 
  addi $t2,$t2,1#������
  div $t4,$s2
  mflo $t3 #������
  move $a0,$t3
  li $v0,1
  syscall
  la $a0,space
  li $v0,4
  syscall
  move $a0,$t2
  li $v0,1
  syscall
  la $a0,space
  li $v0,4
  syscall
  move $a0,$t1
  li $v0,1
  syscall
  la $a0,carriage_return
  li $v0,4
  syscall  #print
break_out:
  addi $t0,$t0,-4
  addi $t7,$t7,-1
  bgez $t7,loop2
  nop
