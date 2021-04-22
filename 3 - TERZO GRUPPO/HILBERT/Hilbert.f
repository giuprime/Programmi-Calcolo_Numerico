	program Hilbert
	parameter (mdim=100)
	real h(mdim,mdim)
	integer n,i,j
	write(*,*) 'Ordine matrice : '
	read(*,*) n
	write(*,*)
	call s_hilbert (n,h,mdim )

c   stampa della matrice di hilbert
	write(*,*) 'La matrice di hilbert di ordine',n,' e'''
	write(*,*)
	do i=1,n
	write(*,*)(h(i,j),j=1,n)
	write(*,*)
	end do
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
