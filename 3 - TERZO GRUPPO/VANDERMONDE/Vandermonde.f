program vandermonde

	real  x(0:99), v(100,100), i, j, n, a, b
	write (*,*) 'Dire qual e'' la dimensione dello spazio'
	read(*,*) n
c     la matrice di vandermonde avra' ordine n+1
c     prendiamo un vettore
      write(*,*) 'Inserisci gli estremi dell''intervallo'
	read(*,*) a,b
	call s_vandermonde (x,v,a,b,n)

	write (*,*) 'Le componenti del vettore sono'
	do i=0,n
	write(*,*)x(i)
	enddo
	
	write(*,*) 'La matrice di vandermonde e''' 
	do i=1,n+1 
      write(*,*) (v(i,j),j=1,n+1)
	write (*,*)
	end do
	end 


	subroutine s_vandermonde (x,v,a,b,n)
c sottoprogramma per la costruzione della matrice di vandermonde
	real  x(0:99), v(100,100),h, i, j,a, b, n
	h= (b-a)/n
		x(0)=a
      do i=1,n-1
	x(i)=x(i-1)+h
	end do
	x(n)=b

	do i=1,n+1
	do j=1,n+1
	v(i,j)=x(i-1)**(j-1)
	end do
	end do
	end
