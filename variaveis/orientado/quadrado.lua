Quadrado = {area = 0}

function  Quadrado:new( o, lado )
    
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    lado = lado or 0
    self.area = lado * lado

    return o
end

function Quadrado:getArea()
    return self.area
end

function Quadrado:setArea(toArea)
    self.area = toArea * toArea
end

function Quadrado:printArea()
    print(self.area)
end

return Quadrado