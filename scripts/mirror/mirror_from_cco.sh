#!/bin/sh
# Setup Charter VPN
echo -e "\033[31m==================== COSS WiKi ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/package.wiki.git
git remote update
echo -e "\033[31m==================== WiFi5 top , Wave2 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device.git
git remote update
echo -e "\033[31m==================== WiFi5 sdk , Wave2 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-sdk.git
git remote update
echo -e "\033[31m==================== WiFi5 cujo , Wave2 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-cujo.git
git remote update
echo -e "\033[31m==================== WiFi6 top , WiFi6 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device.git
git remote update
echo -e "\033[31m==================== WiFi6 openwrt , WiFi6 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-openwrt.git
git remote update
echo -e "\033[31m==================== WiFi6 cujo , WiFi6 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-cujo.git
git remote update
echo -e "\033[31m==================== WiFi6e top , WiFi6e , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6eask-device.git
git remote update
echo -e "\033[31m==================== WiFi6e openwrt , WiFi6e , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6eask-device-openwrt.git
git remote update
echo -e "\033[31m==================== WiFi7 top , WiFi7 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi7ask-device.git
git remote update
echo -e "\033[31m==================== WiFi7 openwrt , WiFi7 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi7ask-openwrt.git
git remote update
echo -e "\033[31m==================== WiFi7 Charter feeds , WiFi7 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi7chtr-feed.git
git remote update
echo -e "\033[31m==================== WiFi7 oem package , WiFi7 , git mirror update ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/sbe1v1k.git
git remote update
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/askey.git
git remote update
echo -e "\033[31m==================== Charter package repo ========================\033[0m"
echo -e "\033[31m==================== cujo , package  =========================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-cujo-stack.git
git remote update
echo -e "\033[31m==================== busybox , package  =========================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/busybox.git
git remote update
echo -e "\033[31m==================== odhcp6c , package  =========================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/odhcp6c.git
git remote update
echo -e "\033[31m==================== Charter OpenSync Stack - COSS ==================\033[0m"
echo -e "\033[31m==================== COSS package  ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/package.git
git remote update
echo -e "\033[31m==================== COSS SCP  ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp.git
git remote update
echo -e "\033[31m==================== COSS core  ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/core.git
git remote update
echo -e "\033[31m==================== COSS opensync platform qca  ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/opensync-platform-qca.git
git remote update
echo -e "\033[31m==================== COSS opensync vendor qca template  ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/opensync-vendor-qca-template.git
git remote update

echo -e "\033[31m==================== Automation CD-ROUTER  ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/cd-router.git
#git remote update
echo -e "\033[31m==================== Automation scp-router-custodian ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-router-custodian.git
#git remote update

echo -e "\033[31m==================== DONE ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/



