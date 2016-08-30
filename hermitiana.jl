function matriz_aleatoria(n)
a=rand(n,n)+1im*rand(n,n);
b=triu(a,1);
c=transpose(conj(b))+b;
eigvals(c)
end;

#La diagonal debe ser con numeros reales
