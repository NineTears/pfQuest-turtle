local function overrite(src, ovr)
    for key, value in pairs(ovr) do   -- 遍历原始对象的键值对
        if type(value) == 'table' then
            overrite(src[key], value) -- 递归复制键和值到新的表
        else
            src[key] = value
        end
    end
end



-- 任务文本整体修正：

-- local db = {
--     ["quests"] = {
--         ["zhCN-turtle"] = {

--         }
--     }
-- }

overrite(pfDB, OverriteDB)

OverriteDB = nil
