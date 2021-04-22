	PROGRAM PRODSCAL
C	QUESTO PROGRAMMA CALCOLA IL PRODOTTO SCALARE TRA DUE VETTORI
	REAL N,I,X(1,100),Y(100,1),S(1,1),C
      WRITE(*,*)'Inserisci la dimensione dello spazio'
	READ(*,*) N
C INSERIMENTO PRIMO VETTORE
	WRITE(*,*) 'Inserisci le componenti del primo vettore' 
	DO I=1,N
	READ(*,*) X(1,I)
	END DO
C STAMPA DEL PRIMO VETTORE
	WRITE(*,*) 'Il primo vettore e'''
	DO I=1,N
	WRITE(*,*) X(1,I)
	END DO
C INSERIMENTO SECONDO VETTORE
	WRITE(*,*) 'Inserisci le componenti del secondo vettore'
	DO I=1,N
	READ(*,*) Y(I,1)
	END DO
CSTAMPA DEL SECONDO VETTORE
	WRITE(*,*) 'Il secondo vettore e'''
	DO I=1,N
	WRITE(*,*) Y(I,1)
	END DO
C PRODOTTO SCALARE X=(1, 0, 3) Y=(1, 2, 3) PROD_SCAL=1*1 + 0*2 + 3*3=10
	C=0
	DO I=1,N
	S(1,1)=X(1,I)*Y(I,1)
	C=C+S(1,1)
	END DO
	WRITE(*,*) 'Il prodotto scalare dei due vettori e''',C
	END