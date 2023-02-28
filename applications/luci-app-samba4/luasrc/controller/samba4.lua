-- Licensed to the public under the Apache License 2.0.

module("luci.controller.samba4", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/samba4") then
        return
    end

    entry({ "admin", "network", "samba4" }, cbi("samba4"), _("Network Shares")).dependent = true

    --entry({ "admin", "network", "samba4" }, alias("admin", "network", "mwan", "interface"), _("Load Balancing"), 601)
end
