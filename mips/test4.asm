ori $t1,$zero,2
ori $t2,$zero,2
beq $t1,$t2,loop
ori $t3,$zero,4
ori $t4,$zero,5
loop: sw $t2,0($t4)