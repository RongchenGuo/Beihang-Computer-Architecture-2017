.data
  aa:.space 100
  bb:.space 100
.text
  li $v0,5
  syscall
  move $s1,$v0 #read n
  move $t1,$zero #j=0
  move $t5,$zero #counter=0
  li $s2,1
loop1:
  beq $t1,$s1,end1
  li $v0,12
  syscall
  move $s0,$v0 #read char
  addi $t1,$t1,1 #j++
  move $t2,$zero #i=0
  move $t0,$zero
loop2:
  beq $t2,$t1,end2
  lw $t3,aa($t0)
  bne $t3,$s0,endif1
if1:
  lw $t4,bb($t0)
  addi $t4,$t4,1
  sw $t4,bb($t0) #B[i]++
  j end2
endif1:
  addi $t2,$t2,1 #i++
  addi $t0,$t0,4
  j loop2
end2:
  bne $t2,$t1,endif2
if2:
  addi $t2,$t2,-1 #i--
  addi $t0,$t0,-4
  sw $s0,aa($t0) #a[i]=char
  sw $s2,bb($t0) #b[i]=1
endif2:
  j loop1 
end1:
print:
  move $t1,$zero #j=0
  move $t0,$zero
loop:
  beq $t1,$s1,endloop
  lw $t2,aa($t0)
  beq $t2,$zero,endif
  move $a0,$t2
  li $v0,11
  syscall #print a[j]
  lw $a0,bb($t0)
  li $v0,1
  syscall #print b[j]  
endif:
  addi $t1,$t1,1 #j++
  addi $t0,$t0,4
  j loop
endloop:
  li $v0,10
  syscall 