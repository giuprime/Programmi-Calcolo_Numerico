c verificare il teorema di equivalenza tra le norme vettoriali. 
c   in particolare le relazioni tra le tre norme vettoriali studiate.
	
      program NormeVettoriali
	integer n, i
	real n1, n2, ni, x(100), s, c, w
	write (*,*) 'Quante componenti ha il vettore?'
	read (*,*) n
	write (*,*) 'Inserisci le', n, ' componenti'
	read (*,*) (x(i), i=1,n)
c definiamo la norma 1
	n1=0
	do i=1,n
	n1=n1+abs(x(i))
	enddo
	write (*,*) 'La norma 1 del vettore e''' , n1
	write(*,*)n1
c definiamo la norma 2
	s=0
	do i=1,n
	s=s+x(i)*x(i)
	end do 
	n2=sqrt(s)
	write (*,*) 'La norma 2 del vettore e''' , n2
	write(*,*)n2
c definiamo la norma infinito
	ni=0
 	do i=1,n
	w=abs(x(i))
	if (w.gt.ni) then
	ni=w
	end if

c		do i=1,n
c	if (abs(x(i)).gt.ni) then
c	ni=abs(x(i))
c	end if

	end do 
	write (*,*) 'La norma infinito del vettore e''' , ni
	c=sqrt(float(n))
	write(*,*)c
c     vediamo se e' verificata la prima relazione di equivalenza
	if (ni.le.n2.and.n2.le.c*ni) then
	write(*,*)'La relazione' ,ni, ' <=', n2,'<=',c, 'x' ,ni,' e''vera'
	else 
	 write(*,*)'La relazione',n1, ' <=', n2,'<=',c, 'x' ,ni,' non 
     _e'' vera'
	end if
c     vediamo se e' verificata la seconda relazione di equivalenza
	if (n2.le.n1.and.n1.le.c*n2) then
 	write(*,*)'La relazione',n2, ' <=', n1,'<=',c, 'x' ,n2,' e'' vera'
	else 
	write(*,*)'La relazione',n2, ' <=', n1,'<=',c, 'x' ,n2,' non 
     _e'' vera'
	end if
c     vediamo se e' verificata la terza relazione di equivalenza
 	 if (ni.le.n1.and.n1.le.n*ni) then
 	write(*,*)'La relazione',ni, ' <=', n1,'<=',n, 'x' ,ni,'
     _ e'' vera'
	else 
	write(*,*)'La relazione',ni, ' <=', n1,'<=',n, 'x' ,ni,' non 
     _e'' vera'
	end if
      
	end

nel caso particolare del vettore di componenti (-1,1) abbiamo osservato che, nonostante
teoricamente la seconda relazione e' verificata, il compilatore non la considera vera.
questo e' un problema di tipo numerico ed e' dovuto all'errore di arrotondamento in difetto che si ha per la radice di 2.
