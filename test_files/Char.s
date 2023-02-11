.data
# https://en.wikipedia.org/wiki/Windows-1252

.text
MAIN:
	li  s0, 255
	li  a0, 0

	charLoop:
    		li  a7, 11
    		ecall           # imprime a0 como char

	    	mv  t0, a0
	    	li  a0, '\t'
	    	ecall           # imprime espaço

	    	mv  a0, t0
	    	li  a7, 1
	    	ecall           # imprime a0 como inteiro

	    	li  a7, 11
	    	li  a0, '\n'
	    	ecall           # quebra de linha

	    	mv  a0, t0
	    	addi    a0, a0, 1
	    	ble a0, s0, charLoop

	li	a7, 10
	ecall			# fim do programa
