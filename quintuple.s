        .text
.global quintuple
        .type   quintuple,@function
quintuple:
        # Your Code Goes Here
		leaq (%rdi,%rdi,4), %rax	# t<- x+x*2 
		
		# end of function
        ret  # return value in rax
        .size   quintuple, .-quintuple
