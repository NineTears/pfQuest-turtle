local function overrite(src, ovr)
    for key, value in pairs(ovr) do -- 遍历原始对象的键值对
        local src_v = src[key]

        if nil == src_v then
            src[key] = value
        else
            if type(value) == 'table' and type(src_v) == 'table' then
                overrite(src_v, value) -- 递归复制键和值到新的表
            else
                src[key] = value
            end
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
