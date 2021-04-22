      program Norme_Matriciali
	use msimsl
	parameter (mdim=100) 
	integer n, i,j,k
 	real n1, ni,n2, a(mdim,mdim),s(mdim),b(mdim,mdim),
	*at(mdim,mdim),m,r,nf
	real eval(mdim)
c    	complex eval(mdim)
               
    	write (*,*) 'Inserisci la dimensione'
	read (*,*) n
c	call s_hilbert(n,a,mdim)
	call s_wilkinson(n,a,mdim)
      write(*,*) 'La matrice A e'''
	do i=1,n
	 write(*,*) (a(i,j),j=1,n)
	write(*,*)
	end do 


c definisco la norma infinito
	ni=0
	do i=1,n										    
	s=0
	do j=1,n
 	s=s+abs(a(i,j))
	end do 
	if (s(i).gt.ni) then
 	ni=s(i)
 	end if
c		do i=1,n										    
c	s(i)=0
c	do j=1,n
c	s(i)=s(i)+abs(a(i,j))
c	end do 
c	if (abs(s(i)).gt.ni) then
c 	ni=abs(s(i))
c 	end if
	end do

c	end do
	write (*,*) 'La norma infinito della matrice e''' , ni 

c	 definisco la norma 2
c	calcolo della matrice at trasposta di a
	do i=1,n
 	do j=1,n
	at(i,j)=a(j,i)
	end do
	end do
	write(*,*) 'La trasposta e'''
	do i=1,n
	 write(*,*) (at(i,j),j=1,n)
	write(*,*)
	end do 
c at*a
	do i=1,n
	do j=1,n 
 	b(i,j)=0
	do k=1,n
	b(i,j)=b(i,j)+at(j,k)*a(k,i)
	end do
	end do
	end do
	write(*,*) 'La matrice prodotto A trasposta per A e'''
	do i=1,n
	write(*,*) (b(i,j),j=1,n)
	write(*,*)
	end do 
c      calcolo degli autovalori di a trasposta per a
	call evlsf(n,b,mdim,eval)
c      call evlrg(n,b,mdim,eval)
	write(*,*)'Gli autovalori della matrice A trasposta per A sono'
	do i=1,n
	write(*,*) eval(i)
	end do
c      calcolo del raggio spettrale
c	m=0
c	do i=1,n
  
c  	if (abs(eval(i)).gt.m) then
c	m=abs(eval(i))
c	end if
c	end do
	m=abs(eval(1))
	n2=sqrt(m)
	write(*,*) 'La norma 2 della matrice A e''',n2

c definisco la norma 1
	do j=1,n
	s(j)=0
	do i=1,n
	s(j)=s(j)+abs(a(i,j))
	end do
	if (abs(s(j)).gt.n1) then
 	n1=abs(s(j))
 	end if
	end do
	write (*,*) 'La norma 1 della matrice e''' , n1

c      definisco la norma di frobenius. simile alla norma 2 vettoriale
    	r=0
	do i=1,n
	r=r+eval(i)	
    	end do
	nf=sqrt(r)
   	write(*,*) 'La norma di Frobenius e''',nf

	                                                                                                            
	end



	subroutine s_wilkinson (n,a,mdim)
c sottoprogramma per la costruzione della matrice di wilkinson
	real a(mdim,n)
	integer n,i,j,m

	do i=1,n
	do j=1,n
	a(i,j)=0
	end do 
	end do
c 	 costruisco l'ultima colonna
	do i=1,n-1
	a(1,n)=-1
	if (i.eq.i/2*2) then
	a(i,n)=1
    	else
	a(i,n)=-1
	end if
	end do
c       costruisco la diagonale principale e la sottodiagonale
	do j=1,n
	a(j,j)=1
	a(j+1,j)=1
c       costruisco i termini sotto la sottodiagonale
	do i=j+2,n
	m=j-i
	if (m.eq.m/2*2) then
	a(i,j)=-1
	else
	a(i,j)=1
	end if
	end do
	end do
	end


c	subroutine s_hilbert (n,a,mdim)
c	real a(mdim,n)
c	integer n,i,j
c	do i=1,n
c	do j=1,n
c	a(i,j)=(1.)/(i+j-1)
c	end do
c	end do
c	end
