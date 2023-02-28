module("luci.controller.eqos", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/eqos") then
        return
    end
    local page
    entry({ "admin", "control" }, firstchild(), "Control", 44).dependent = false
    page = entry({ "admin", "control", "eqos" }, cbi("eqos"), "EQoS")
    page.dependent = true
end
