Input:
  li $v0,5
  syscall
  move $t0,$v0

if_else:
  li $t1,4
  li $t2,400
  li $t3,100
  
  div $t0,$t2
  mfhi $t4
  beq $t4,$zero,condition1
  nop
  
  div $t0,$t3
  mfhi $t4
  beq $t4,$zero,condition2
  nop
  
  div $t0,$t1
  mfhi $t4
  bne $t4,$zero,condition2
  nop

condition1:
  li $a0,1
  li $v0,1
  syscall
  j end_if_else
  nop
  
condition2:
  li $a0,0
  li $v0,1
  syscall
end_if_else:
