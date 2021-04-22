	program Metodo_Iterativo
	use msimsl
	parameter (mdim=100)
	integer i,j,n,k,kmax,scelta
	real a(mdim,mdim),c(mdim,mdim),d(mdim,mdim),b(mdim,mdim), e,
     *m(mdim,mdim),l(mdim,mdim),t(mdim),pj(mdim,mdim),xnuov(mdim),n2,		 
	*somma1,somma2,xvecc(mdim),prodgs(mdim,mdim),minv(mdim,mdim),n1,err
c     t = termini noti		pj = matrice iterazione jacobi	     xnuov = trasposta
c     prodgs = prodotto Gauss - Seidel	   n1 e n2 = somme

c	 metodi iterativi
	write(*,*)'Inserisci la dimensione dello spazio'
	read(*,*) n
	write(*,*)'Inserisci le componenti della matrice a'
	do i=1,n
	do j=1,n
	read(*,*) a(i,j)
	end do
	end do
	write(*,*)'La matrice a e'''
	do i=1,n
	write(*,*) (a(i,j),j=1,n)
	end do

	write(*,*)'Inserisci i termini noti'
 	do i=1,n
	
	read(*,*) t(i)
	end do
	
	write(*,*)'Il vettore dei termini noti e'''
	do i=1,n
	write(*,*) t(i)
	end do
	write(*,*) 'Inserisci le componeneti del vettore iniziale'
 	do i=1,n
	read(*,*) xvecc(i)
	end do
	write(*,*) 'Inserisci la tolleranza'
	read(*,*) e
	write(*,*) 'Inserisci il numero massimo di iterazioni'
	read(*,*) kmax
	
c	decomponiamo la matrice a
c	  d
	do i=1,n
	do j=1,n
	d(i,i)=a(i,i)
	end do
	end do
	write(*,*)'La matrice d e'''
	do i=1,n
	write(*,*) (d(i,j),j=1,n)
	end do
c	  b
	do i=1,n
	do j=1,n
	if(i.gt.j) then
	b(i,j)=-a(i,j)
	end if
	end do 
	end do
	write(*,*) 'La matrice b e'''
	do i=1,n
	write(*,*) (b(i,j),j=1,n)
	end do
c     c
	do i=1,n
 	do j=1,n
	if(i.lt.j) then
	c(i,j)=-a(i,j)
	end if
	end do 
	end do
	write(*,*) 'La matrice c e'''
	do i=1,n
	write(*,*) (c(i,j),j=1,n)
	end do
	write(*,*)'Quale metodo vuoi? jac=1 o gs=2'
	read(*,*) scelta
	if (scelta.eq.1) then
c      metodo di jacobi
c	 m=d e n=b+c
      write(*,*)'------ Metodo di Jacobi ------'
	do i=1,n
	do j=1,n
	m(i,j)=d(i,j)
	l(i,j)=b(i,j)+c(i,j)
	end do
	end do
	write(*,*) 'La matrice m e'''
 	do i=1,n
	write(*,*) (m(i,j),j=1,n)
	end do
	write(*,*)
	write(*,*) 'La matrice n e'''
 	do i=1,n
 	write(*,*) (l(i,j),j=1,n)
	end do
c      pj=d**(-1)*(b+c)
	call linrg (n, m, mdim , minv, mdim)
	do i=1,n
 	do j=1,n
	pj(i,j)=0
	do k=1,n
	pj(i,j)=pj(i,j)+minv(i,k)*l(k,j)
	end do
	end do
	end do
	write(*,*) 'La matrice di iterazione di jacobi e'''
	do i=1,n
	write(*,*) (pj(i,j),j=1,n)
	write(*,*)
	end do
	
c    	iterazione di jacobi
      do k=1,kmax
	do i=1,n
	somma1=0.
 	somma2=0.
	do j=1,i-1
	somma1=somma1+a(i,j)*xvecc(j)
	end do
	do j=i+1,n
	somma2=somma2+a(i,j)*xvecc(j)
	end do
	xnuov(i)=(t(i)-somma1-somma2)/a(i,i)
	write(*,*) 'L''iterato al passo',k,'e''',xnuov(i)
 	write(*,*)
	end do
 
c
c	definiamo l errore assoluto con il calcolo della norma 1 
      n1=0
 	do i=1,n
	n1=n1+abs(xnuov(i)-xvecc(i))
	end do
	n2=0
  	do i=1,n
	n2=n2+abs(xnuov(i))
	end do
	if(n2.ne.0) then 
	err=n1/n2
	else 
	err=n1
	end if
  	write(*,*)'L''errore al passo',k,'e''',err
	write(*,*)
	write(*,*) k,err
						  
	
	if(err.le.e) then
	 write(*,*)'Abbiamo raggiunto la convergenza in ',k,' passi'
	write(*,*)'La soluzione del sistema e'''
	write(*,*) (xnuov(i), i=1,n)
	stop
	end if
	 do i=1,n
	 xvecc(i)=xnuov(i)
	 end do

	end do
	write(*,*)'Non abbiamo raggiunto la convergenza in',kmax,' passi'
	write(*,*)'L''ultimo iterato e''', (xnuov(i), i=1,n)

 	 else
	 
c 	 metodo di gauss-seidel
c      m=d-b e n=c
      write(*,*)'------ Metodo di Gauss-Seidel ------'
	do i=1,n
 	do j=1,n
  	m(i,j)=d(i,j)-b(i,j)
 	l(i,j)=c(i,j)
	end do
	end do
	write(*,*) 'La matrice m e'''
 	do i=1,n
	write(*,*) (m(i,j),j=1,n)
	end do
	write(*,*)
	write(*,*) 'la matrice n e'''
 	do i=1,n
 	write(*,*) (l(i,j),j=1,n)
	end do
c 	  prodgs
	call linrg (n, m, mdim , minv, mdim)
 	do i=1,n
  	do j=1,n
	prodgs(i,j)=0
	do k=1,n
	prodgs(i,j)=prodgs(i,j)+minv(i,k)*l(k,j)
	end do
	end do
	end do
	write(*,*) 'La matrice di iterazione di gauss-seidel e'''
	do i=1,n
	write(*,*) (prodgs(i,j),j=1,n)
	write(*,*)
	end do
c    	iterazione di gauss-seidel
      do k=1,kmax
	do i=1,n
	somma1=0
	somma2=0
 	do j=1,i-1
	somma1=somma1+a(i,j)*xnuov(j)
 	end do
	do j=i+1,n
	somma2=somma2+a(i,j)*xvecc(j)
 	end do
	xnuov(i)=(t(i)-somma1-somma2)/a(i,i)
	write(*,*)'L''iterato al passo',k,'e''',xnuov(i)
	write(*,*)
	end do
c	 calcolo della norma
	n1=0
  	do i=1,n
 	n1=n1+abs(xnuov(i)-xvecc(i))
	end do
	n2=0
  	do i=1,n
	n2=n2+abs(xnuov(i))
	end do
	if(n2.ne.0) then 
	err=n1/n2
	else 
	err=n1
	end if
  	write(*,*)'L''errore al passo',k,'e''',err
	write(*,*)
						  
	 do i=1,n
	 xvecc(i)=xnuov(i)
	 end do
	
	if(err.le.e) then
	 write(*,*)'Abbiamo raggiunto la convergenza in ',k,' passi'
	write(*,*)'La soluzione del sistema e'''
	write(*,*) (xnuov(i), i=1,n)
	stop
	end if
c	  stampiamo l errore .dat e i file .dot con i passi e gli errori
	write(*,*) k,err
	end do
	write(*,*)'Non abbiamo raggiunto la convergenza in',kmax,' passi'
	write(*,*)'L''ultimo iterato e''', (xnuov(i), i=1,n)
	end if
	end
