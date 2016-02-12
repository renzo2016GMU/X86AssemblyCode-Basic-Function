       .text
.global abundant
        .type   abundant,@function
abundant:
        # Your Code Goes Here
       	movq $1, %r8 # counter and by default will be used by idivq
		movq $0, %rcx # total
		
		.L2:
			movq %rdi, %rax
			cqto
			idivq %r8 # rid/rax remainder goes to rb
			testq %rdx,%rdx #test whether remainder is 0
			je .L3         # if so jump to L3 
		.L5:	
			incq %r8 	  #increment counter
			cmpq %r8, %rdi #compare if counter < rdo rdi-rax=+
			jg .L2			#if true loop back in L2
			cmpq %rcx, %rdi #compare if total sum > incoming para
			js .L4
			mov $0, %rax
		        #if not negative the u

			#movq %rcx, %rax
			ret
		.L3:
			addq %r8, %rcx # add the value of rax to total (rxv
			jmp .L5
		.L4:	
			#if total is less than x then return 0
			mov $1, %rax
        
        # end of function
        ret
        
        .size   abundant, .-abundant
