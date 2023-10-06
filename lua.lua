local module = {}

function module.new(v)
module.__index = module
local t = {}
for i=1,string.len(v),1 do
table.insert(t,string.sub(v,i,i))
end
setmetatable(t,module)
return t
end

function module:getT()
    s = ""
   for i,v in pairs(self) do
       s = s..v
   end   
return s
end    

function module:get(p)
return self[p]
end

function module:compare(v,p)
local val = self[p]
return (v == val)
end

function module:replace(v,p)
    self[v] = p
end


return module
