local file = io.open("variaveis\\avancado\\t.txt", "r")--r le, w escrevve, a escreve no fim
local file2 = io.open("variaveis\\avancado\\t.txt", "a")

--print(file)
print(file:read())

for v in file:lines() do
    print(v)
end

io.close(file)

local texto = io.read()
io.output(file2)
io.write(texto)