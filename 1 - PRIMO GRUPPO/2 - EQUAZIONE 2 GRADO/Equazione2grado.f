	Program Equazione2grado

	integer a,b,c
	real meno,piu,delta
	

	write (*,*) 'Inserisci a: '
	read (*,*) a

	write (*,*) 'Inserisci b: '
	read (*,*) b


      write (*,*) 'Inserisci c: '
	read (*,*) c

	write (*,*) 'L''equazione e'' ', a, 'x^^2 + ', b, 'x + ',c 
	delta = ((b*b ) - 4*a*c)

	if (delta .gt. 0) then

		meno =  ((-b) - sqrt(delta)) / (2*a)
		piu =   ((-b) + sqrt(delta)) / (2*a)
		write (*,*) meno
		write (*,*) piu

	else
		write (*,*) 'Delta minore di 0, Impossibile fare' 


	end if

	


	end


































