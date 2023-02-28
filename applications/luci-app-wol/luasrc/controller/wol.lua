module("luci.controller.wol", package.seeall)

function index()
    entry({ "admin", "control" }, firstchild(), "Control", 44).dependent = false
    entry({ "admin", "control", "wol" }, form("wol"), _("Wake on LAN"), 90)
    entry({ "mini", "control", "wol" }, form("wol"), _("Wake on LAN"), 90)
end
