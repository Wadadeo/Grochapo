ClotheLine = Object:extend()

function ClotheLine:new()
  self.line = {}
  self.head = nil
end

function ClotheLine:isHeadInvalid()
    return self.head == nil or self.head < 1 or self.head > #self.line  
end

function ClotheLine:addHangerAtHead(hanger)
    if ClotheLine:isHeadInvalid() then
        self.head = 1
    end
    table.insert(self.line, self.head, hanger) -- add hanger at head
end

function ClotheLine:moveHead()
    if self:isHeadInvalid() then
        return nil
    end

    local next = self.head + 1
    if next > #self.line then
        next = 1 -- rotate head at start of line
    end
    self.head = next

    self:printLine()

    return self.head
end

function ClotheLine:getHangerAtHead()
    if self.isHeadInvalid() then
        return nil
    end

    return self.line[self.head]
end

-------------------------
---- DEBUG FUNCTIONS ----
-------------------------

function ClotheLine:printHead()
    print("Head is : " .. self.line[self.head]);
end

function ClotheLine:printLine()
    local line = "Line : "
    for k, v in pairs(self.line) do
        line = line .. " " .. v .. " "
        if k == self.head then line = line .. "[HEAD] " end
    end
    print(line);
end