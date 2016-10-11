using quantum
using Base.Test

"""
Traza parcial 
"""
function partial_trace_pure_bipartite_mat(state,dim,system)
    dimtotal=length(state)[1]
    dimcomp=Int(dimtotal/dim)
    if system==1
    psi=reshape(state,(dimcomp,dim))'
        return psi*psi'
        elseif system==2
     psi=reshape(state,(dim,dimcomp))'
        return psi'*psi
    end
end

"""
Checa estado aleatorio
"""

function checa()
  state_A=random_state(3);  
  state_B=random_state(5);
  stateAB=kron(state_A,state_B);  
  trace(partial_trace_pure_bipartite_mat(stateAB,3,1))
  trace(partial_trace_pure_bipartite_mat(stateAB,5,2))
end

@test checa()
