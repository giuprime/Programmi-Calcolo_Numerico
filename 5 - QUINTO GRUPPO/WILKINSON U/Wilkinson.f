c	subroutine che tenta di costruire la matrice di wilkinson il più velocemente possibile	
      subroutine Wilkinson(mdim, n, m)
	integer mdim,n
	real m(mdim,n)
		
	do j = 1, n-1
c			diagonale principale
	m(j, j) = 1
c			sottodiagonali		
	do i=j+1,n,2
c			elementi correnti
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
