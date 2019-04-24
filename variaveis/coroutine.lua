function getNumero( )
    
    local function getNumeroHelper()
        thread = coroutine.create( function( ) 
            coroutine.yield( 1 )
            coroutine.yield( 2 )
            coroutine.yield( 3 )

        end )
        return thread
    end

    if numeroHelper then
        status, numero = coroutine.resume( numeroHelper )
        if coroutine.status( numeroHelper) == "dead" then
            numeroHelper = getNumeroHelper()
            status, numero = coroutine.resume( numeroHelper )            
        end
        return numero
    else
        numeroHelper = getNumeroHelper()
        status, numero = coroutine.resume( numeroHelper)
        return numero
    end
end

for i=1, 7 do
    print(i, getNumero())
end