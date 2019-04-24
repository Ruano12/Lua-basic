--Executa um ciclo completo de coleta de lixo
print(collectgarbage("collect"))

--Retorna a quantidade de memória atualmente usada pelo programa em kilobytes
print(collectgarbage("count"))

--Se o coleto de lixo foi parad, ele o reinicia
print(collectgarbage("restart"))

--[[
    Define o valor dado como segundo parametro dividido por 100 para a variavel de pausa do coletor de lixo
    Retorna o valor anterior para a etapa
]]--
print(collectgarbage("setpause"))

--[[
    Define o valor dado como segundo parametro divido por 100 para a variavel do multiplicador da etapa de lixo
    Retorna o valor anterior a pausa
]]--
print(collectgarbage("setstepmul"))

--[[
    Executa um passo da coleta de lixo
    Quanto maior o segundo argumento, maior será esse passo
    O collectgarbage retornará true se a etpaca desencadeada for a ultima etapa de um ciclo de coleta de lixo
]]--
print(collectgarbage("step"))

--Para o coleto de lixo, se estiver em execução
print("stop")