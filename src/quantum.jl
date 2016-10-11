__precompile__() # Este comando es para que julia precompile el paquete

module quantum

export random_state, projector, sigma_x, sigma_y, sigma_z, sigmas

function random_state(dim=2::Int)
    v=randn(1,dim)+randn(1,dim)im
    v=v/norm(v)
    return v'
end

function projector(state)
    return state*state'
end

sigma_x=[0. 1.; 1. 0.]
sigma_y=[0. -im; im 0]
sigma_z=[1. 0.;0. -1.]
sigmas=[sigma_x, sigma_y, sigma_z]

end
