mt = setmetatable({1, 2, 3}, {
    __add = function ( t, newTable )
        for i =1, #newTable do
            table.insert( t, #t + 1, newTable[i] )
        end
        return t
    end,

    __sub = function(t, newTable)
        for k, value in ipairs(t) do
            for i, v in ipairs(newTable) do
                if value == v then
                    table.remove( t, k)
                end
            end
        end
        return t
    end,

    --__sub - subtração

    --__mul - multiplicação

    --__mod

    __concat = function(t, newTable)
        return table.concat(t, ', ') .. ", ".. table.concat(newTable, ', ')
    end

    --__tostring
})

mt2 = {4, 1, 6}

local x = mt .. mt2

--for i,v in ipairs(x) do
    print(x)
--end