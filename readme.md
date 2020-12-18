Systemd Reset NIC Service
===

This provides a script to reset your network card and an example systemd service file.

When dual booting, Windows may retain ownership of your NIC. It will appear to
be link up, but DHCP will be ineffective. Disabling Wake Up On LAN may solve
this, but not for me. See this
[thread](https://bbs.archlinux.org/viewtopic.php?id=191981).

As described in the thread, you can resolve the issue by resetting the NIC.

May be limited to the `e1000e` driver, or only the `Intel Corporation Ethernet Connection I217-V` chipset.

Usage
---
1. Clone this repo.

2. Edit `reset-nic.service`, update the `ExecStart` path.

3. Copy `reset-nic.service` to `/etc/systemd/system`. I had trouble simply linking the file, systemd would fail to find the service or would remove the link when disabling the service.

4. Run `systemctl enable reset-nic.service`.
