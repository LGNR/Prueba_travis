using Base.Test

function estoca(n,m)
       A=zeros(Float64,n,m);
       for i = 1:n
       sum=0;
           for j=1:m
               A[i,j]=rand();
               sum=sum+A[i,j];
           end
	   for j=1:m
		A[i,j]= A[i,j]/sum;
	   end
       end
       A
end

function prueba(A)
	dim=size(A);
	check=0;
	for i=1:dim[1]
		sum=0;
		for j=1:dim[2]
			sum=sum+A[i,j];
		end
		if sum==1
			check=check+1;
		end
	end
	check==dim[1]

end
		
@test prueba(estoca(3,3))
