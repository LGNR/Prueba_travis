

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
       print(A);
end
