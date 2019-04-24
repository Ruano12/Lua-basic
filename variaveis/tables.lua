local p = {"lua", "curso"}

--Insete o valor legal no ultimo indice da lista p(#p- pega o ultimo indice da lista)
table.insert( p, #p+1, "legal")
table.remove(p, 2)