local x = {"Curso", "Lua"}


function elementSomente( a )
    local i = 0
    local c = #a

    return function ( )
        i = i+1
        if i <= c then
            return a[i]
        end
    end 
end

for el in elementSomente(x) do
    print(el)
end