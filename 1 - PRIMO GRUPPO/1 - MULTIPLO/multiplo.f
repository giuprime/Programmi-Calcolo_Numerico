	Program multiplo

	integer n1, n2,c

	write (*,*) 'Inserisci primo numero: '
	read (*,*) n1

	write (*,*) 'Inserisci primo secondo: '
	read (*,*) n2

	c = (n1/n2) * n2

		
	if (c .eq. n1 ) then

		write (*,*) 'E'' un militplo'
	else 
		write (*,*) 'Non e'' un militplo'
	end if

	 

	if ((n1/2) * 2 .eq. n1) then

		write (*,*) n1, 'E'' pari'

	else
		write (*,*) n1, 'E'' dispari'
	end if



	if ((n2/2) * 2 .eq. n2) then

		write (*,*) n2, 'E'' pari'

	  else
		write (*,*) n2, 'E'' dispari'
	  end if


	end

