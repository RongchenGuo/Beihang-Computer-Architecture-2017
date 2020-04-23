.data
  array:.space 400
  space: .asciiz" "
.text #选择排序
  li $v0,5
  syscall
  move $s0,$v0
  la $t0,array
  move $t1,$zero #counter
  li $s2,4
  mult $s2,$s0
  mflo $s2 #s2=4n
read: #读入n个数字
  li $v0,5
  syscall
  sw $v0,0($t0)
  addi $t0,$t0,4
  addi $t1,$t1,1
  bne $t1,$s0,read
  
  move $t1,$zero #counter
  la $t0,array
  move $t2,$t0
  move $t6,$zero #i=0
  lw $t3,0($t0)
  move $t7,$t3
sort: 
  lw $t4,0($t2)
  blt $t7,$t4,temp
  move $t7,$t4 #存数字
  move $s1,$t2 #存地址
temp:
  addi $t2,$t2,4
  addi $t6,$t6,1 #i++
  bne $t6,$s0,sort 
  sw $t3,0($s1) #交换数字
  sw $t7,0($t0) #交换数字
  addi $t0,$t0,4
  move $t2,$t0
  move $t6,$zero #reset counter
  subi $s0,$s0,1
  lw $t3,0($t0)
  move $t7,$t3
  bne $t0,$s2,sort
  
  la $t0,array
out:
  lw $a0,0($t0)
  li $v0,1
  syscall
  la $a0,space
  li $v0,4
  syscall
  addi $t0,$t0,4
  bne $t0,$s2,out