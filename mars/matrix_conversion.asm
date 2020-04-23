.data
array: .space 10000
space: .asciiz " "
carriage_return: .asciiz "\n"
.text
input:
  li $v0,5
  syscall
  move $s1,$v0 #输入n行
  li $v0,5
  syscall
  move $s2,$v0 #输入m列
  multu $s1,$s2
  mflo $s3  
  li $t7,0 #计数器
  la $t0,array #初地址
  
loop1: #读入n*m个整数
  li $v0,5
  syscall
  sw $v0,0($t0)
  addi $t0,$t0,4
  addi $t7,$t7,1
  bne $t7,$s3,loop1
  nop
  
loop2: #判断是否为零，为零输出
  lw $t1,0($t0)
  beq $t1,$zero,break_out
  nop
  add $t4,$t7,$s2
  div $t4,$s2
  mfhi $t2 
  addi $t2,$t2,1#求列数
  div $t4,$s2
  mflo $t3 #求行数
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
