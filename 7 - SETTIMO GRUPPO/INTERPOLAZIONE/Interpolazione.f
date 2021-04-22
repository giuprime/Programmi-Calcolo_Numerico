	Program Interpolazione
interpolazione polinomiale
	use msimsl
	integer i,j,n,k, puntgraf
	real a,b,lg(0:99),l 
	real xg(0:99),yg(0:99), x(0:30), y(0:30)

c    puntgraf = Numero punti di graficazione

c inseriamo i dati del problema 
	write(*,*) 'Inserisci gli estremi dell intervallo e il numero dei 
     *punti di tabulazione'
	read(*,*) a,b,n
	call subgraf(a,b,n,x,y)
c	call subgrco(n,x,y)
c scegliamo il numero di punti di graficazione
	write (*,*) 'Quanti sono i punti di graficazione?'
	read (*,*) puntgraf
	call subgraf(a,b,puntgraf,xg,yg)
c memorizziamo i dati x e y	
	do i=0,n
	write(*,*) x(i),y(i)
	write(2,*) x(i),y(i)
	end do 
c creiamo il file runge
	do i=0,puntgraf
	write(*,*) xg(i),yg(i)
	write(3,*) xg(i),yg(i)
	end do 
			 
c scriviamo le funzioni della base di lagrange
	do k=0,puntgraf
c facciamo la sommatoria 
	lg(k)=0
	do i=0,n
c facciamo la produttoria 
	l=1
 	do j=0,n
  	if (j.ne.i) then
    	l=l*((xg(k)-x(j))/(x(i)-x(j)))
    	end if 
	end do
	lg(k)=lg(k)+y(i)*l
	end do 
	end do
		
	do i=0,puntgraf
	write(*,*) xg(i),lg(i)
	write(7,*) xg(i),lg(i)
	end do 

	end
	
      real function  f(x)
c	f=abs(x)
	f=1/(25*x*x+1)
c	f=x/(1+x*x)
	end



	subroutine subgraf(a,b,n,x,y)
	integer i, n
	real a,b
	real x(0:99),y(0:99)
	n=n-1
	h=(b-a)/n
	x(0)=a
	y(0)=f(x(0))
	do i=1,n-1
	x(i)=x(i-1)+h
	y(i)=f(x(i))
	end do
	x(n)=b
	y(n)=f(x(n))
	
	end


   	subroutine subgrco(n,x,y)
	parameter (pg=3.1415)
	integer i,n
	real x(0:99),y(0:99)
	
c      n=n-1
	do i=0,n
	x(i)=cos(((2*(n-i)+1)*pg)/(2*(n+1)))
	y(i)=f(x(i))
	enddo
	end
