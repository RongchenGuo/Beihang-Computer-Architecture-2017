  li $v0,5
  syscall #read a integer
  move $s0,$v0 #use $s0 to save num
  li $t1,0 #i=0

set_array:
  bne $t1,10,compare #i<10ʱ��ת
  nop
  
compare:
  jal sub_0
  bgez $t2,load1 
  nop
load0:
  li $v1,0 #$t2<0ʱ�򷵻�0
  sw $v1,0($sp)
  addi $sp,$sp,-4 #ջָ��ǰ��
  addi $t1,$t1,1  #i++
  j set_array
  nop
load1:
  li $v1,1 #$t2>=0ʱ�򷵻�1
  sw $v1,0($sp)
  addi $sp,$sp,-4 #ջָ��ǰ��
  addi $t1,$t1,1  #i++
  j set_array
  nop

sub_0:
  sub $t2,$s0,$t1 #$t2=num-i
  jr $ra
