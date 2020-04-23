.data
array: .space 600
answer: .space 300
space: .asciiz" "
return: .asciiz "\n"
.text
  li $v0,5
  syscall
  move $s0,$v0 #读入阶数
  move $t1,$zero #row counter
  move $t2,$zero #column counter
  la $t0,array #address to save value
  li $s3,4 #s3=4
  mult $s0,$s3
  mflo $s4 #s4=4n
  mult $s0,$s0
  mflo $s5
  mult $s5,$s3
  mflo $s5 #s5=4n^2
loop_in1:
  li $v0,5
  syscall
  sw $v0,0($t0) #store value
  addi $t0,$t0,4 #increment address
  addi $t2,$t2,1 #increment column counter
  bne $t2,$s0,loop_in1 #not at end of row so loop back
  move $t2,$zero #reset column counter
  addi $t1,$t1,1 #increment row counter
  bne $t1,$s0,loop_in1 #not at end of matrix so loop back
  move $t1,$zero #row counter
  move $t2,$zero #column counter
loop_in2:
  li $v0,5
  syscall
  sw $v0,0($t0) #store value
  addi $t0,$t0,4 #increment address
  addi $t2,$t2,1 #increment column counter
  bne $t2,$s0,loop_in2 #not at end of row so loop back
  move $t2,$zero #reset column counter
  addi $t1,$t1,1 #increment row counter
  bne $t1,$s0,loop_in2 #not at end of matrix so loop back

  la $t0,array #reset address
  move $s1,$t0
  move $s2,$t0
  add $s2,$s2,$s5
  la $t5,answer #address of answer matrix
  move $t1,$zero #i=0
  move $t2,$zero #j=0
  move $t3,$zero #i'=0
  move $t4,$zero #j'=0
  move $t7,$zero #temp1=0
multi:
  lw $t8,0($s1)
  lw $t9,0($s2)
  mult $t8,$t9
  mflo $t6 #temp2=i'*j'
  add $t7,$t7,$t6 #temp1=temp1+temp2
  addi $t3,$t3,1 #i'++
  addi $s1,$s1,4
  add $t4,$t4,$s0 #j'=j'+n
  add $s2,$s2,$s4
  div $t3,$s0
  mfhi $t6
  bnez $t6,multi #i'mod n ,不等于0跳转
  sw $t7,0($t5)
  addi $t5,$t5,4
  addi $t2,$t2,1 #j++
  move $t7,$zero #temp1=0
  mult $t1,$s0
  mflo $t3 #i'=i*n
  mult $t1,$s4
  mflo $s1
  move $t4,$t2 #j'=j
  mult $t2,$s3
  mflo $s2
  add $s2,$s2,$s5
  bne $t2,$s0,multi #if j<n, jump
  move $t2,$zero #j=0
  addi $t1,$t1,1 #i++
  move $t7,$zero #temp1=0
  mult $t1,$s0
  mflo $t3 #i'i*n
  mult $t1,$s4
  mflo $s1
  move $t4,$t2 #j'=j
  mult $t2,$s3
  mflo $s2
  add $s2,$s2,$s5
  bne $t1,$s0,multi #if i<n, jump 
  
  la $t5,answer #address of answer matrix
  move $t1,$zero #i=0
  move $t2,$zero #j=0
loop_out:
  lw $a0,0($t5)
  li $v0,1
  syscall
  la $a0,space
  li $v0,4
  syscall
  addi $t5,$t5,4
  addi $t1,$t1,1
  bne $t1,$s0,loop_out
  move $t1,$zero
  addi $t2,$t2,1
  la $a0,return
  li $v0,4
  syscall
  bne $t2,$s0,loop_out  