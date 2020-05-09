            .text

start:      move    $t0, $0
            move    $v0, $0
	    move    $t2, $0
	    addiu   $t2, $t2, 5
            addiu   $v0, $v0, 131072
            move    $t1, $0

store:      sh      $v0, 0x0 ($t1)
            addiu   $v0, $v0, 1
            addiu   $t1, $t1, 1       
            bne     $t1, $t2, store

            move    $t1, $0
            li      $t2, 5   
          
load:       lh      $v0, 0x0 ($t1)      
            addiu   $t1, $t1, 1         
            bne     $t1, $t2, load

