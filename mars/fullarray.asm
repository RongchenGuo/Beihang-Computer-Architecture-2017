.data
  array:.space 32
  symbol:.space 32
  space:.asciiz" "
  return:.asciiz"\n"
.text
  li $v0,5
  syscall
  move $s0,$v0
  la $t7,symbol
  la $t6,array
  li $s4,4
  li $s3,1
  move $t0,$zero
  jal full
  li $v0,10
  syscall
full:
  blt $t0,$s0,work
print:
  li $t1,0
  move $a3,$t6
print2:
  lw $a0,0($a3)
  li $v0,1
  syscall
  la $a0,space
  li $v0,4
  syscall
  addi $a3,$a3,4
  addi $t1,$t1,1
  bne $t1,$s0,print2
  la $a0,return
  li $v0,4
  syscall
  jr $31
  
work:
  li $t2,0 #j=0
work2:
  mult $s4,$t2
  mflo $t9
  add $t9,$t9,$t7
  lw $t5,0,($t9)
  bne $t5,$zero,endloop #if symbol[j]==0
  
  mult $s4,$t0
  mflo $t8
  add $t8,$t8,$t6
  addi $s7,$t2,1
  sw $s7,0($t8) #array[index]=j+1
  
  mult $s4,$t2
  mflo $t8
  add $t8,$t7,$t8
  sw $s3,0($t8) #symbol[j]=1
  
  sw $ra,0($sp)
  subi $sp,$sp,4 
  sw $t0,0($sp)
  subi $sp,$sp,4
  
  addi $t0,$t0,1 #index++
  
  sw $t2,0($sp)
  subi $sp,$sp,4
  jal full
  
  addi $sp,$sp,4
  lw $t2,0($sp)
  addi $sp,$sp,4
  lw $t0,0($sp)
  addi $sp,$sp,4
  lw $ra,0($sp)
  
  mult $t2,$s4
  mflo $t8
  add $t8,$t7,$t8
  sw $zero,0($t8) #symbol[j]=0

endloop:
  addi $t2,$t2,1
  bne $t2,$s0,work2
  jr $31 
