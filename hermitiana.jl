a=rand(10,10)+1im*rand(10,10)
b=triu(a,1)
c=transpose(conj(b))+b

#La diagonal debe ser con numeros reales
