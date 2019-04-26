function soma( n1, n2 )
    return n1 + n2
end

function sub(n1, n2)
    return n1 - n2
end

local math = {}
math.soma = soma
math.sub = sub

return math