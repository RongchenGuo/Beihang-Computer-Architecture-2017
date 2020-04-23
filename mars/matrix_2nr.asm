.data
  aa:.space 300
  bb:.space 300
.text
  li $v0,5
  syscall
  move $s0,$v0 #read m½×
  li $v0,5
  syscall
  move $s1,$v0 #read n
  move $t1,$zero #i=0
  move $t0,$zero
readloopi:
  beq $t1,$s0,endreadloopi
  move $t2,$zero #j=0
  readloopj:
    beq $t2,$s0,endreadloopj
    li $v0,5
    syscall
    sw $v0,aa($t0)
    addi $t0,$t0,4    
    addi $t2,$t2,1 #j++
    j readloopj
  endreadloopj:
  addi $t1,$t1,1 #i++
  j readloopi
endreadloopi:
  jal power

  move $t1,$zero #i=0
  move $t0,$zero
printloopi:
  beq $t1,$s0,endprintloopi
  move $t2,$zero #j=0
  printloopj:
    beq $t2,$s0,endprintloopj
    lw $a0,bb($t0)
    li $v0,1
    syscall
    addi $t0,$t0,4    
    addi $t2,$t2,1 #j++
    j printloopj
  endprintloopj:
  addi $t1,$t1,1 #i++
  j printloopi
endprintloopi:
  li $v0,10
  syscall

multiplier:
  move $t1,$zero #i=0
  foribegin:
    beq $t1,$s0,foriend
    move $t2,$zero #j=0
    forjbegin:
      beq $t2,$s0,forjend
      move $t3,$zero #k=0
      move $t8,$zero #temp=0
      forkbegin:
        beq $t3,$s0,forkend
        
        mult $t1,$s0
        mflo $t4
        add $t4,$t4,$t3
        sll $t4,$t4,2
        lw $t5,aa($t4) #a[i][k]
        mult $t3,$s0
        mflo $t4
        add $t4,$t4,$t2
        sll $t4,$t4,2
        lw $t6,aa($t4) #a[k][j]
        mult $t5,$t6
        mflo $t7
        add $t8,$t8,$t7
        mult $t1,$s0
        mflo $t4
        add $t4,$t4,$t2
        sll $t4,$t4,2
        sw $t8,bb($t4) #b[i][j]      
        addi $t3,$t3,1
        j forkbegin
      forkend:
      addi $t2,$t2,1
      j forjbegin
    forjend:
    addi $t1,$t1,1
    j foribegin
  foriend:
  jr $31
  
power:
  move $t1,$zero #i=0
  loop:
    beq $t1,$s1,endloop
    sw $t1,0($sp)
    addi $sp,$sp,-4
    sw $ra,0($sp)
    addi $sp,$sp,-4
    jal multiplier
    jal fuzhi
    addi $sp,$sp,4
    lw $ra,0($sp)
    addi $sp,$sp,4
    lw $t1,0($sp)
  addi $t1,$t1,1
  j loop
  endloop:
  jr $31
  
fuzhi:
  move $t1,$zero
  for_1b:
    beq $t1,$s0,for_1e
    move $t2,$zero
    for_2b:
      beq $t2,$s0,for_2e
      mult $t1,$s0
      mflo $t3
      addu $t3,$t3,$t2
      sll $t3,$t3,2
      lw $s6,bb($t3)
      sw $s6,aa($t3) #a[i][j]=b[i][j]
      addi $t2,$t2,1
      j for_2b
    for_2e:
    addi $t1,$t1,1
    j for_1b
  for_1e:
  jr $31
