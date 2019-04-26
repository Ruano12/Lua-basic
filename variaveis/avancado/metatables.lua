local usuario = {dtNascimento=1989, nome="Marcelo Benjamim", id=1}

mt = setmetatable(usuario, {
    __index = function(mt, key )
        
        if key == "idade" then
            return 2019 - 1989
        else
            return mt[key]
        end
    end,

    __newIndex = function(mt, key, value )
        rawset(mt, key, value)
    end
})

mt.token = "f35b"
print(mt.idade, mt.token)