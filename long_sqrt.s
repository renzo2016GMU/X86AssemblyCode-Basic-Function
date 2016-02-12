       .text
.global long_sqrt 
        .type    long_sqrt,@function
long_sqrt:
        # Your Code Goes Here
		movq $0,%rax  #i=0
		movq $0,%rsi  #sq_i=0
	    
		.L2:
	    	incq %rax   #increment i
			movq %rax, %rsi #esi now has the value of i
			imulq %rsi, %rsi # esi*esi
			
 			cmpq %rsi, %rdi # rdi-esi

			jg .L2          #if negative the keep loopin
	 		
			je	.L3		    # if diff is zero return
			
			decq %rax
			rep: ret
		.L3:
			movq %rax, %rax;	
        # end of function
        ret
        
        .size    long_sqrt, .- long_sqrt
