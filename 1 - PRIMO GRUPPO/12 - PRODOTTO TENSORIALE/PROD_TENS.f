	PROGRAM PRODTENS
C SIANO DATI DU VETTORI, MOLTIPLICHIAMO OGNI COMPONENTE E LA INSERIAMO IN UNA MATRICE
	REAL X(100),Y(100),A(100,100)
	INTEGER I,J,N
	WRITE (*,*) 'LA DIMENSIONE DELLO SPAZIO E'''
	READ (*,*) N
	WRITE (*,*) 'INSERISCI LE COMPONENTI DEL PRIMO VETTORE'
	READ (*,*) (X(I), I=1,N) 
	WRITE (*,*) 'INSERISCI LE COMPONENTI DEL SECONDO VETTORE'
	READ (*,*) (Y(I), I=1,N)
	DO I=1,N
	DO J=1,N
	A(I,J)=X(I)*Y(J)
	ENDDO
	ENDDO
	WRITE (*,*) 'IL PRODOTTO TENSORIALE TRA I DUE VETTORI E'''
	DO I=1,N
	WRITE (*,*) (A(I,J), J=1,N)
	WRITE (*,*)
	ENDDO
	END