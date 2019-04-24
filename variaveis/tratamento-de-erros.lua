function multi( a , b )
    assert(type(a) == "number", "a não é numero")
    assert(type(b) == "number", "b não é numero")
    return a*b
end

function div( a , b )
    return a/b
end

function divNoParam( )
    return 2/1
end

function meuError(err)
    print("Erro: ", err)
end

if xpcall(divNoParam, meuError) then
    print("Sucesso")
else
    print("Erro")
end

print(multi(2,2))