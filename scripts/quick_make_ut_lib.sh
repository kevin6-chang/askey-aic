#!/bin/bash
# 01/17/2026
# quick_make1.sh : make system ut lib module which conforms to openwrt make
# with compilation flags
date

CFILE="$1"
CFILES=""

shift

for arg in "$@"; do
    case "$arg" in
        *.c)
            CFILES="$CFILES $arg"
            ;;
        *)
            echo "Unknown input: $arg" >&2
            exit 1
            ;;
    esac
done

if [ -z "$CFILE" ]; then
    echo "ERROR: no .c file provided" >&2
    exit 1
fi

OUTBIN="$(basename "$CFILE" .c)"
LOCAL_DIR=$(dirname $CFILE)


#
# What OpenWrt toolchain wrapper expects
#
export STAGING_DIR=/workspace/openwrt/sdk/qsdk/staging_dir

STAGING_ARCH=$STAGING_DIR/target-aarch64

#
# Toolchain binaries
#
export PATH=$STAGING_DIR/toolchain-aarch64/bin:$PATH

# Askey overwrite 
VENDORBASE="/workspace/openwrt/sdk/qsdk/build_dir/target-aarch64/coss-5.4/vendor/askey"
# Adjust COREBASE automatically from input file
COREBASE="/workspace/openwrt/sdk/qsdk/build_dir/target-aarch64/coss-5.4/core"
PLATFORMBASE="/workspace/openwrt/sdk/qsdk/build_dir/target-aarch64/coss-5.4/platform/qca/src/lib"
WORKDIR="$COREBASE/work/CBE1V1K"

###############################################################################
# BIGD
###############################################################################
BIGD=(
"-DINET6"
"-D_U_=\"__attribute__((unused))\""
"-DMONT_NO_RFMON_MODE"
"-DMONT_LINUX"
"-DQCA_10_4"
"-DOVS_PACKAGE_VERNUM=21200"
"-DTARGET_CBE1V1K"
"-DTARGET_NAME=\"CBE1V1K\""
"-DOPENSYNC_NL_SUPPORT"
"-DJSON_MEMDBG"
"-DWITH_LIBGCC_BACKTRACE"
"-DTARGET_H=\"target_CBE1V1K.h\""
)

###############################################################################
# Flags
###############################################################################
#-Os -pipe -fno-caller-saves -fhonour-copts -Werror -fasynchronous-unwind-tables \
CFLAGS="\
-MMD \
-Wl,--copy-dt-needed-entries \
-Wl,-rpath,/usr/opensync/lib \
-Wl,--start-group \
-pipe \
-fno-caller-saves \
-fhonour-copts \
-fasynchronous-unwind-tables \
-rdynamic \
-fno-omit-frame-pointer \
-Wno-clobbered \
-g \
-Wno-error=cpp \
-Wno-error=format-truncation \
-Wno-error=implicit-fallthrough \
-Wno-error=tautological-compare \
"

LFLAGS="\
-Wl,--enable-new-dtags \
-Wl,--export-dynamic \
-Wl,-rpath,/usr/opensync/lib \
-Wl,--start-group \
"


###############################################################################
# Include paths
# Note
# -I${COREBASE}/src/lib/target/inc has been pulled to front for nested preference
# -I${COREBASE}/src/lib/common/inc has been pulled to front for os.h preference
###############################################################################
INC="\
-I${LOCAL_DIR} \
-I${LOCAL_DIR}/../src \
-I${LOCAL_DIR}/../ \
-I${LOCAL_DIR}/../inc \
-I${VENDORBASE}/src/ltem/inc \
-I${VENDORBASE}/src/lib/osp/inc \
-I${VENDORBASE}/src/lib/ioctl80211/inc \
-I${STAGING_DIR}/toolchain-aarch64/include \
-I${STAGING_DIR}/toolchain-aarch64/usr/include \
-I${PLATFORMBASE}/bsal \
-I${PLATFORMBASE}/hw_acc \
-I${PLATFORMBASE}/inet \
-I${PLATFORMBASE}/ioctl80211 \
-I${PLATFORMBASE}/osa \
-I${PLATFORMBASE}/osn \
-I${PLATFORMBASE}/osp \
-I${PLATFORMBASE}/osw \
-I${PLATFORMBASE}/target \
-I${COREBASE}/src/lib/target/inc \
-I${COREBASE}/src/lib/common/inc \
-I${STAGING_ARCH}/include \
-I${STAGING_ARCH}/usr/include \
-I${STAGING_ARCH}/usr/include/protobuf-c \
-I${STAGING_ARCH}/usr/include/openvswitch \
-I${STAGING_ARCH}/usr/include/libnl3 \
-I${COREBASE}/platform/qca/src/lib/ioctl80211/inc \
-I${COREBASE}/src/dm/inc \
-I${COREBASE}/src/fcm/inc \
-I${COREBASE}/src/lib/accel_evict_msg/inc \
-I${COREBASE}/src/lib/arp_parse/inc \
-I${COREBASE}/src/lib/brctl_mac_learn/inc \
-I${COREBASE}/src/lib/connector/inc \
-I${COREBASE}/src/lib/const/inc \
-I${COREBASE}/src/lib/ct_stats/inc \
-I${COREBASE}/src/lib/daemon/inc \
-I${COREBASE}/src/lib/data_report_tags/inc \
-I${COREBASE}/src/lib/data_report_tags/src \
-I${COREBASE}/src/lib/datapipeline/inc \
-I${COREBASE}/src/lib/dhcp_parse/inc \
-I${COREBASE}/src/lib/dhcp_relay/inc \
-I${COREBASE}/src/lib/dns_cache/inc \
-I${COREBASE}/src/lib/dns_parse/inc \
-I${COREBASE}/src/lib/dpi_stats/inc \
-I${COREBASE}/src/lib/ds/inc \
-I${COREBASE}/src/lib/evsched/inc \
-I${COREBASE}/src/lib/evx/inc \
-I${COREBASE}/src/lib/execsh/inc \
-I${COREBASE}/src/lib/fcm_filter/inc \
-I${COREBASE}/src/lib/ff/inc \
-I${COREBASE}/src/lib/ff_provider_ps/inc \
-I${COREBASE}/src/lib/fsm/inc \
-I${COREBASE}/src/lib/fsm_demo_dpi_plugin/inc \
-I${COREBASE}/src/lib/fsm_demo_plugin/inc \
-I${COREBASE}/src/lib/fsm_dpi_adt/inc \
-I${COREBASE}/src/lib/fsm_dpi_adt_upnp/inc \
-I${COREBASE}/src/lib/fsm_dpi_client/inc \
-I${COREBASE}/src/lib/fsm_dpi_dns/inc \
-I${COREBASE}/src/lib/fsm_dpi_mdns_responder/inc \
-I${COREBASE}/src/lib/fsm_dpi_ndp/inc \
-I${COREBASE}/src/lib/fsm_dpi_sec_portmap/inc \
-I${COREBASE}/src/lib/fsm_dpi_sni/inc \
-I${COREBASE}/src/lib/fsm_policy/inc \
-I${COREBASE}/src/lib/fsm_utils/inc \
-I${COREBASE}/src/lib/gatekeeper_cache/inc \
-I${COREBASE}/src/lib/gatekeeper_msg/inc \
-I${COREBASE}/src/lib/gatekeeper_plugin/inc \
-I${COREBASE}/src/lib/hostap/inc \
-I${COREBASE}/src/lib/hostap2/inc \
-I${COREBASE}/src/lib/http_parse/inc \
-I${COREBASE}/src/lib/hw_acc/inc \
-I${COREBASE}/src/lib/imc/inc \
-I${COREBASE}/src/lib/inet/inc \
-I${COREBASE}/src/lib/intf_stats/inc \
-I${COREBASE}/src/lib/ipc/inc \
-I${COREBASE}/src/lib/ipthreat_dpi/inc \
-I${COREBASE}/src/lib/json_mqtt/inc \
-I${COREBASE}/src/lib/json_util/inc \
-I${COREBASE}/src/lib/kconfig/inc \
-I${COREBASE}/src/lib/l2uf_parse/inc \
-I${COREBASE}/src/lib/lan_stats/inc \
-I${COREBASE}/src/lib/log/inc \
-I${COREBASE}/src/lib/lte_info/inc \
-I${COREBASE}/src/lib/mdns_plugin/inc \
-I${COREBASE}/src/lib/mdnsd/inc \
-I${COREBASE}/src/lib/module/inc \
-I${COREBASE}/src/lib/mosqev/inc \
-I${COREBASE}/src/lib/ndp_parse/inc \
-I${COREBASE}/src/lib/neigh_table/inc \
-I${COREBASE}/src/lib/network_metadata/inc \
-I${COREBASE}/src/lib/network_telemetry/inc \
-I${COREBASE}/src/lib/network_zone/inc \
-I${COREBASE}/src/lib/nf_utils/inc \
-I${COREBASE}/src/lib/nfe/inc \
-I${COREBASE}/src/lib/nl/inc \
-I${COREBASE}/src/lib/objmfs/inc \
-I${COREBASE}/src/lib/oms/inc \
-I${COREBASE}/src/lib/osa/inc \
-I${COREBASE}/src/lib/osn/inc \
-I${COREBASE}/src/lib/osp/inc \
-I${COREBASE}/src/lib/osw/inc \
-I${COREBASE}/src/lib/ovs_mac_learn/inc \
-I${COREBASE}/src/lib/ovsdb/inc \
-I${COREBASE}/src/lib/ow/inc \
-I${COREBASE}/src/lib/pasync/inc \
-I${COREBASE}/src/lib/pjs/inc \
-I${COREBASE}/src/lib/policy_tags/inc \
-I${COREBASE}/src/lib/procfs/inc \
-I${COREBASE}/src/lib/ps_mgmt/inc \
-I${COREBASE}/src/lib/psfs/inc \
-I${COREBASE}/src/lib/read_until/inc \
-I${COREBASE}/src/lib/reflink/inc \
-I${COREBASE}/src/lib/rq/inc \
-I${COREBASE}/src/lib/rts/inc \
-I${COREBASE}/src/lib/schema/inc \
-I${COREBASE}/src/lib/stam/inc \
-I${COREBASE}/src/lib/statssim/inc \
-I${COREBASE}/src/lib/synclist/inc \
-I${COREBASE}/src/lib/tailf/inc \
-I${COREBASE}/src/lib/timevt/inc \
-I${COREBASE}/src/lib/unit_test_utils/inc \
-I${COREBASE}/src/lib/unity/inc \
-I${COREBASE}/src/lib/upnp_parse/inc \
-I${COREBASE}/src/lib/ustack/inc \
-I${COREBASE}/src/lib/version/inc \
-I${COREBASE}/src/lib/walleye/inc \
-I${COREBASE}/src/lib/wc_null_plugin/inc \
-I${COREBASE}/src/cm2/inc \
-I${COREBASE}/src/cm2/src \
-I${COREBASE}/src/nm2/inc \
-I${COREBASE}/src/qm/qm_conn/src \
-I${COREBASE}/src/fsm/inc \
-I${COREBASE}/src/sm/inc \
-I${COREBASE}/src/sm/src \
-I${COREBASE}/vendor/askey/src/lib/target/inc \
-I${COREBASE}/vendor/plume/src/blem/inc \
-I${WORKDIR}/obj/src.lib.brctl_mac_learn \
-I${WORKDIR}/obj/src.lib.ovs_mac_learn \
-I${WORKDIR}/pb-inc \
-I${WORKDIR}/obj/src.lib.schema \
"

###############################################################################
# Library search paths
###############################################################################
BIGL="\
-L${WORKDIR}/lib \
-L${STAGING_ARCH}/usr/lib \
-L${STAGING_ARCH}/lib \
-L${STAGING_ARCH}/root-ipq95xx/usr/opensync/lib \
-L${STAGING_DIR}/toolchain-aarch64/usr/lib \
"

###############################################################################
# Linked libraries
###############################################################################
LITTLEL="\
-lcrypto \
-lcurl \
-ldl \
-lev \
-lfcm_ct_stats \
-lfcm_intfstats \
-lfcm_lanstats \
-lff \
-lff_provider_env \
-lff_provider_ps \
-lfcm_lanstats \
-lfsm_demo \
-lfsm_demo_dpi \
-lfsm_dhcp \
-lfsm_dhcp_relay \
-lfsm_dns \
-lfsm_dpi_adt \
-lfsm_dpi_adt_upnp \
-lfsm_dpi_client \
-lfsm_dpi_dns \
-lfsm_dpi_mdns_responder \
-lfsm_dpi_ndp \
-lfsm_dpi_sni \
-lfsm_gatekeeper \
-lfsm_http \
-lfsm_ipthreat_dpi \
-lfsm_l2uf \
-lfsm_mdns \
-lfsm_metadata \
-lfsm_mia \
-lfsm_ndp \
-lfsm_radiotap \
-lfsm_tether \
-lfsm_upnp \
-lfsm_walleye_dpi \
-lfsm_wcnull \
-lgcc_s \
-limc \
-ljansson \
-lmnl \
-lmosquitto \
-lmxml \
-lnghttp2 \
-lnl-3 \
-lnl-genl-3 \
-lnl-route-3 \
-lopenthread \
-lopenvswitch \
-lpcap \
-lprotobuf-c \
-lpthread \
-lqca_nl80211_wrapper \
-lqca_tools \
-lrt \
-lssl \
-lunbound \
-lupgrade \
-lopensync \
-lz \
"
STATICL="
${WORKDIR}/obj/src.lib.unit_test_utils/libunit_test_utils.a \
${WORKDIR}/obj/src.lib.unity/libunity.a \
"

###############################################################################
# Build
###############################################################################
echo "Building: $CFILE $CFILES -> $OUTBIN"
OBJS=()

for c in $CFILE $CFILES; do
    o="$(basename "$c" .c).o"

    aarch64-openwrt-linux-musl-gcc \
        ${CFLAGS} \
        "${BIGD[@]}" \
        -include "${WORKDIR}/kconfig/CBE1V1K.h" \
        $INC \
        -c "$c" \
        -o "$o" || exit 1

    OBJS+=("$o")
done

echo ".o made"

set -x
aarch64-openwrt-linux-musl-gcc \
    ${LFLAGS} \
    "${OBJS[@]}" \
    $BIGL \
    $LITTLEL \
    -Wl,--end-group \
    ${STATICL} \
    -o "$OUTBIN" || exit 1

echo "Done. Output = $OUTBIN"
date
