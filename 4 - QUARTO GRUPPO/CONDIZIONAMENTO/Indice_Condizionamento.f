	program Indice_Condizionamento
	use msimsl		
	parameter (mdim=100)
	integer n,i,j
	real a(mdim,mdim),s(mdim),ni, ainv(mdim,mdim),ni1,u, x(30), y(30)
	write (*,*) 'Inserisci la dimensione'
	read (*,*) n
	call s_hilbert(n,a,mdim)
c	call s_3

wilkinson(n,a,mdim)
chiamiamo la routine per fare l'inversa
	call linrg (n, a, mdim, ainv, mdim)
c	stampiamo la matrice a
	write(*,*)'La matrice e'''
 	do i=1,n
	write(*,*) (a(i,j),j=1,n)
	end do
	write(*,*)
c	 stampiamo la matrice ainv
	write(*,*)'La matrice inversa e'''
	do i=1,n
	write(*,*) (ainv(i,j),j=1,n)
	end do
	write(*,*)
c definiamo la norma infinito di a
	do i=1,n										    
	s(i)=0
	do j=1,n
 	s(i)=s(i)+abs(a(i,j))
	end do 
	if (abs(s(i)).gt.ni) then
 	ni=abs(s(i))
 	end if
	end do
	write (*,*) 'La norma infinito della matrice e''' , ni

c	 definiamo norma infinito di ainv
	do i=1,n										    
 	s(i)=0
	do j=1,n
  	s(i)=s(i)+abs(ainv(i,j))
	end do 
	if (abs(s(i)).gt.ni1) then
 	ni1=abs(s(i))
 	end if
	end do
	write (*,*) 'La norma infinito della matrice inversa e''' , ni1
	write(*,*)

c	 calcolo indice di condizionamento
	u=ni*ni1
	write(*,*)'L''indice di condizionamento e''',u

	x(n)=n
	y(n)=u

	write(2,*)x(n), y(n)
	end


	subroutine s_hilbert (n,a,mdim)
	real a(mdim,n)
	integer n,i,j
	do i=1,n
	do j=1,n
	a(i,j)=(1.)/(i+j-1)
	end do
	end do
	end


c	subroutine s_wilkinson (n,a,mdim)
c sottoprogramma per la costruzione della matrice di wilkinson
c	real a(mdim,n)
c	integer n,i,j,m

c	do i=1,n
c	do j=1,n
c	a(i,j)=0
c	end do 
c	end do
c 	 costruisco l'ultima colonna
c	do i=1,n-1
c	 a(1,n)=-1
c	 if (i.eq.i/2*2) then
c	  a(i,n)=1
c   	 else
c	  a(i,n)=-1
c	 end if
c	end do
c       costruisco la diagonale principale e la sottodiagonale
c	do j=1,n
c	 a(j,j)=1
c	 a(j+1,j)=1
c       costruisco i termini sotto la sottodiagonale
c	 do i=j+2,n
c	  m=j-i
c	  if (m.eq.m/2*2) then
c	   a(i,j)=-1
c	  else
c	   a(i,j)=1
c	  end if
c	 end do
c	end do
c	end
