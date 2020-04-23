.data
  array:.space 100
.text
  li $v0,5
  syscall
  move $s0,$v0 #读入字符个数n
  la $t0,array
  move $t1,$zero #counter
read: #读入n个字符并保存
  li $v0,12
  syscall
  sw $v0,0($t0)
  addi $t1,$t1,1
  addi $t0,$t0,4
  bne $t1,$s0,read
  
  move $t1,$zero #counter=0
  move $t6,$zero #sum=0
  move $t7,$t0 
  addi $t7,$t7,-4 #末地址
  la $t0,array
loop:
  lw $t2,0($t0)
  lw $t3,0($t7)
  bne $t2,$t3,sum
  addi $t6,$t6,1 #首尾相等则计数器+1
sum:
  addi $t0,$t0,4
  addi $t7,$t7,-4 #首地址+4，尾地址-4
  addi $t1,$t1,1 #计数器+1
  bne $t1,$s0,loop  
  
  slt $t0,$t6,$s0
  beq $t0,$zero,out1
out0:
  li $a0,0
  li $v0,1
  syscall
  li $v0,10
  syscall
out1:
  li $a0,1
  li $v0,1
  syscall
  li $v0,10
  syscall