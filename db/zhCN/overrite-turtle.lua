-- 需要临时使用英文名称的任务ID列表：
local ids = { 41053, 41039, 41040, 807 }

local cn = pfDB["quests"]["zhCN-turtle"]
local en = pfDB["quests"]["enUS-turtle"]

for i,id in pairs(ids) do
    cn[id].T = en[id].T
end
