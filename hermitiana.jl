function matriz_aleatoria(n)
a=rand(n,n)+1im*rand(n,n);
b=triu(a,1);
c=transpose(conj(b))+b;
eigen=sort(eigvals(c));
espaciamiento=Array(Float64,size(eigen)[1]-1);
for i=2:size(eigen)[1]
	espaciamiento[i-1]=eigen[i]-eigen[i-1];
end
espaciamiento
end;

#La diagonal debe ser con numeros reales

# TAREA:
# Calcular la distribución de espaciaiento de eignvalores del ensamble de matrices hermitianas
# Generar el conjunto convexo
