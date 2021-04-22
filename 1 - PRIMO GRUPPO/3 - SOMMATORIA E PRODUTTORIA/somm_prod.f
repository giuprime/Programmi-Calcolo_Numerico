c	Scrivere i programmi per la sommatoria e
c	la produttoria di n numeri reali e complessi. 
     
      Program somm_prod
	 

	
	real x(3), sommatoria, produttoria
	integer i
	sommatoria = 0
	produttoria = 1
  
	 i=1

	write (*,*) 'SOMMATORIA E PRODUTTORIA'
 	do while (i .lt. 4)

		write (*,*) 'Inserisci valore numero:   ', i
		read (*,*) x(i)
		

		sommatoria = sommatoria + x(i)
		produttoria = produttoria * x(i)
		i= i+1

	end do
	
      write (*,*) x 
	write (*,*) 'La sommatoria e'' ', sommatoria
	write (*,*) 'La produttoria e'' ', produttoria
	  

	end
