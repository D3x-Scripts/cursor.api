

function initc(v)
local t = {}
local s,e = pcall(function ()
for i=1,string.len(v),1 do
table.insert(t,string.sub(v,i,i))
end
_G.ff5c2dc8d81d9b59 = t
end)
if s then
return true
else
return false
end
end

function cursor()
return _G.ff5c2dc8d81d9b59
end

function getc(p)
local gt = _G.ff5c2dc8d81d9b59
return gt[p]
end


return {
  initc = initc,
  cursor = cursor,
  getp = getp,
       }
