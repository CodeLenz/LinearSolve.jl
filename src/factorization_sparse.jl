# Specialize QR for the non-square case
# Missing ldiv! definitions: https://github.com/JuliaSparse/SparseArrays.jl/issues/242
function _ldiv!(x::Vector,
    A::Union{SparseArrays.QR, LinearAlgebra.QRCompactWY,
        SuiteSparse.SPQR.QRSparse,
        SuiteSparse.CHOLMOD.Factor}, b::Vector)
    x .= A \ b
end

function _ldiv!(x::AbstractVector,
    A::Union{SparseArrays.QR, LinearAlgebra.QRCompactWY,
        SuiteSparse.SPQR.QRSparse,
        SuiteSparse.CHOLMOD.Factor}, b::AbstractVector)
    x .= A \ b
end
