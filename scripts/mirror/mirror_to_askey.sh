#Setup VPN
echo  -e "\033[31m==================== WiFi5 top , Wave2 , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5.git
#echo -e "\033[31m====================  WiFi5 platform , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-platform.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-platform.git
#echo -e "\033[31m==================== WiFi5 vendor-askey , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-vendor-askey.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-vendoraskey.git
#echo -e "\033[31m==================== WiFi5 vendor-charter , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-vendor-charter.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-vendorcharter.git
#echo -e "\033[31m==================== WiFi5 core , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-core.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-core.git
echo -e "\033[31m==================== WiFi5 sdk , Wave2 , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-sdk.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-sdk.git
echo -e "\033[31m==================== WiFi5 cujo , Wave2 , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-scp-device-cujo.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-cujo.git
#echo -e "\033[31m==================== WiFi5 common-vendor-charter , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-vendor-charter.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-common-vendor-charter.git
#echo -e "\033[31m==================== WiFi5 common-vendor-charter-fw-utils , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-vendor-charter-fw-utils.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-common-vendor-charter-fw-utils.git
#echo -e "\033[31m==================== WiFi5 common-vendor-charter-vm , Wave2 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-vendor-charter-vm.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cco-wifi5-common-vendor-charter-vm.git
#
echo -e "\033[31m==================== WiFi6 top , WiFi6 , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6.git
#echo -e "\033[31m==================== WiFi6 platform , WiFi6 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-platform.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-platform.git
#echo -e "\033[31m==================== WiFi6 vendor-askey , WiFi6 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-vendor-askey.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-vendoraskey.git
#echo -e "\033[31m==================== WiFi6 vendor-charter , WiFi6 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-vendor-charter.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-vendorcharter.git
echo -e "\033[31m==================== WiFi6 openwrt , WiFi6 , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-openwrt.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-openwrt.git
#echo -e "\033[31m==================== WiFi6 opensync , WiFi6 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-opensync.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-opensync.git
echo -e "\033[31m==================== WiFi6 cujo , WiFi6 , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6ask-device-cujo.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-cujo.git
#echo -e "\033[31m==================== WiFi6 common-vendor-charter , OpenSync 2.0 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6com-vendor-charter.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-common-vendor-charter.git
#echo -e "\033[31m==================== WiFi6 common-webservices , OpenSync 2.0 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6com-webservices.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-common-webservices.git
#echo -e "\033[31m==================== WiFi6 common-opensync , OpenSync 2.0 , git mirror push ====================\033[0m"
#cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6com-opensync.git
#sed -i '/pull-requests/d' packed-refs
#rm -rf refs/pull-requests/*
#git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/cco-wifi6-common-opensync.git

echo  -e "\033[31m==================== WiFi6e top , MDU , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6eask-device.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pggrtwd/cco-wifi6e.git
echo -e "\033[31m==================== WiFi6e openwrt , MDU, git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi6eask-device-openwrt.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pggrtwd/cco-wifi6e-sdk.git

echo  -e "\033[31m==================== WiFi7 top , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi7ask-device.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/scp-wifi7ask-device.git
echo  -e "\033[31m==================== WiFi7 openwrt , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi7ask-openwrt.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/scp-wifi7ask-openwrt.git
echo  -e "\033[31m==================== WiFi7 Charter feeds , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-wifi7chtr-feed.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/scp-wifi7chtr-feed.git
echo  -e "\033[31m==================== WiFi7 oem package sbe1v1k repo, git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/sbe1v1k.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/sbe1v1k.git

echo  -e "\033[31m==================== WiFi7 oem package askey repo, git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/askey.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/ncwbr/oem_pkgs.git

echo -e "\033[31m==================== Charter packages , git mirror push ====================\033[0m"
echo -e "\033[31m==================== cujo package , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/charter-cujo-stack.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pggrtwd/cco-wifi6e-cujo.git

echo -e "\033[31m==================== busybox package , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/busybox.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/busybox.git

echo -e "\033[31m==================== odhcp6c , git mirror push ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/odhcp6c.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/odhcp6c.git


echo -e "\033[31m==================== Charter OpenSync Stack-COSS ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/package.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/coss-package.git
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/coss-package.git

echo -e "\033[31m==================== COSS SCP Feed ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pgrtwdscp/coss-scp.git
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/coss-scp.git
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/pggrtwd/cco-wifi6e-scp.git

echo -e "\033[31m==================== COSS Core ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/core.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/core.git

echo -e "\033[31m==================== COSS opensync platform qca ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/opensync-platform-qca.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/opensync-platform-qca.git

echo -e "\033[31m==================== COSS opensync vendor qca template ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/opensync-vendor-qca-template.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/opensync-vendor-qca-template.git

echo -e "\033[31m==================== COSS Stack WiKi ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/package.wiki.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/charter_coss_stack_wiki.git

echo -e "\033[31m==================== Charter Automation CD-router ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/cd-router.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/cd-router.git

echo -e "\033[31m==================== Charter Automation scp-router-custodian ====================\033[0m"
cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/scp-router-custodian.git
sed -i '/pull-requests/d' packed-refs
rm -rf refs/pull-requests/*
git push --mirror ssh://git@bitbucket.askey.com.tw:7999/purtwd/scp-router-custodian.git

cd ~/Askey/SourceCodeSync/ws/bb.mirror_gitlab/
