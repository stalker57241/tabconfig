local vis = _G.vis

local module = {
    treeview = nil,
    tabview = nil,
    tabdisplay = nil
}


function module.settabs(tbv, td)
    module.tabview = tbv
    if td ~= nil then 
        module.tabdisplay = td(tbv)
    end
end
function module.settreeview(trv)
    module.treeview = trv
end

function module.setup()
    vis.events.subscribe(vis.events.INIT, function()
        if module.tabview ~= nil then 
            module.tabview.init() 
        end
    end)
    
    vis.events.subscribe(vis.events.START, function()
        if module.treeview ~= nil then
            module.treeview.setup()
            module.treeview.setwidth(50)
        end
        if module.tabdisplay ~= nil then 
            module.tabdisplay.init() 
        end
    end)
    
    vis.events.subscribe(vis.events.QUIT, function()
        if module.tabview ~= nil then module.tabview.terminate() end
    end)
    vis:map(vis.modes.NORMAL, "tt", function() vis:command("tab_toggle") end)
    vis:map(vis.modes.NORMAL, "tl", function() vis:command("nexttab") end)
    vis:map(vis.modes.NORMAL, "th", function() vis:command("prevtab") end)
    vis:map(vis.modes.NORMAL, "tq", function() vis:command("closetab") end)
    vis:map(vis.modes.NORMAL, "<Tab>", function() vis:command("tree") end)
end

return module
