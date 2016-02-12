       .text
.global caller
        .type   caller,@function
caller:
        # Your Code Goes Here
       #ccepts a number, doubles it, subtracts one, calls quintuple, adds 3, returns result.

		leaq (%rdi,%rdi,),%rax #double rid and allocate it in rax 
        decq %rax 			  #decrease rax by 1
		movq %rax, %rdi	      # copy regist rax to rdi
		
		call quintuple		  #	call quintuple using value of rax?
		
		movq %rax, %rdi		

		addq $3, %rdi  		  #rbx should be the callee of quintuple 
		mov %rdi, %rax		
		#movq %rdi, %rax
        # end of function
        ret
        
        .size   caller, .-caller
