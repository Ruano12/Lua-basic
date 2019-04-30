postgree = require("luasql.postgres")

local env = postgree.postgres()
local db, user, pass = 'test', 'root', ''
conn = env:connect(db, user, pass)

function createTable()
    local sql = [[create table pessoa(id int not null primary key auto_increment, nome text, idade int)]]
    status, erro = conn:execute(sql)
    print(status, erro)
end

function insertTable()
    local sql = [[insert into pessoa values(null, 'teste', 20)]]
    status, erro = conn:execute(sql)
    print(status, erro)
end

function select()
    local sql = [[select * from pessoa]]
    cursor, erro = conn:execute(sql)
    row = cursor:fetch({}, 'a')

    while row do
        print(string.format( "id: %s, nome: %s, idade: %s", row.id, row.nome, row.idade ))
        row = cursor:fetch({}, 'a')
    end

    cursor:close()
end

conn:execute("START TRANSACTION;")
conn:execute("ROLLBACK;")
conn:execute("COMMIT;")