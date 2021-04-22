C ANALIZZARE QUANTO VALE LA PRECISIONE DI MACCHINA IN SINGOLA O DOPPIA PRECISIONE
      
	program precisione_macchina
C      real i,n
	real*8 i,n
	i=1
10    i=i/2
	if (i+1.gt.1) go to 10
	n=i*2
	write(*,*) 'La precisione di macchina e''',n
	end	
C E' IL PIU' PICCOLO VALORE POSITIVO SENTITO NELLA SOMMA 1