c	trovare per quali valori di n nelle matrici di wilkinson si ha che |u(n,n)| = 2^(n-1)
 
      program Wilkinson_u
	parameter(mdim = 20)
	real wilk(mdim,mdim)
	real ultimo
		
	do i=2,mdim
	write(*,*)
c		costruiamo la matrice di wilkinson
	call wilkinson(mdim,i,wilk)
c		costruiamo u, una matrice triangolare superiore
	call gauss(mdim,i,wilk)

c		settaggio termini equazione da verificare: last=primo termine; val=secondo termine
	val = 2**(i-1)
	ultimo = abs(wilk(i,i))

	write(*,*)'n=',i
	write(*,*)'	2^(n-1)=',val
	write(*,*)'	u(n,n)= ',ultimo

c		write(3,*)val
c		write(7,*)last

	if(val.eq.ultimo) then
	write(*,*)'Condizione verificata'
	else
	write(*,*)'Condizione non verificata'
	endif
	write(*,*)''
	end do
	end

	subroutine gauss(mdim,n,matrix)
	integer mdim,n
	real matrix(mdim,n)
	real max,quot

	do k=1,n-1
	max = 0
	do i = k,n
	val = abs(matrix(i,k))
	if(max.lt.val)then
	max = val
	l=k
	end if
	end do

	if(max.eq.0.0)stop
c		scambio riga l,k
	if(l.ne.k)then
	do j=k,n
	c = matrix(k,j)
	matrix(k,j) = matrix(l,j)
	matrix(l,j) = c
	end do
	endif
	do i=k+1,n
	quot = matrix(i,k)/matrix(k,k)
	do j=k+1,n
	matrix(i,j) = matrix(i,j) - quot*matrix(k,j)
	end do
	end do
	end do

	if(matrix(n,n).eq.0.0)stop
	end

c	subroutine che tenta di costruire la matrice di wilkinson il più velocemente possibile	
      subroutine wilkinson(mdim, n, m)
	integer mdim,n
	real m(mdim,n)
		
	do j = 1, n-1
c			diagonale principale
	m(j, j) = 1
c			sottodiagonali		
	do i=j+1,n,2
c				elementi correnti
	m(i, j) = 1
	m(i+1, j) = -1
c				elementi opposti
	m(j,i) = 0
	m(j,i+1) = 0		
	end do		
	enddo
c		settaggio ultima colonna
	do i=1,n,2
	m(i,n) = -1
	m(i+1,n) = 1 
	end do
c		ultimo elemento
	m(n,n)=1
	end
