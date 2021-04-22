	program grafico_funzione
      integer i
      real a,b
      real x(0:99),y(0:99)
C posso dare alla x o alla y da 0 a 99 punti
      write (*,*) 'Inserisci gli estermi dell''intervallo e il 
	*numero di punti'
C per disegnare N punti della funzione compresi nell'intervallo [A,B]
      read (*,*) a,b,n
      n=n-1
      h=(b-a)/n
C H E' L'AMPIEZZA DEL'INTERVALLO DI PUNTI EQUIDISTANTI
C nel punto iniziale faccio assumere il valore del primo estremo 
      x(0)=a
      y(0)=f(x(0))
	do i=1,n-1
C X(1)=A+H 
	x(i)=x(i-1)+h
	y(i)=f(x(i))
      end do
C nel punto finale faccio assumere il valore del secondo estremo 
      x(n)=b
	y(n)=f(x(n))
      do i=0,n
      write (*,*) x(i),y(i)
      write (3,*) x(i),Y(i)
C crea un file che poi dovrò aprire in matlab

      end do
      end
C Considerare almeno due delle seguenti funzioni
      real function f(x)
      f=1/(1+25*x*x)
C      f=x/(1+x*x)
C      f=abs(x)
C      f=(sin(x))/x
	end