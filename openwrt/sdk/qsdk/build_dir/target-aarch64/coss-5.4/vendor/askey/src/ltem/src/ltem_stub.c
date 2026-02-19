#include <getopt.h>
#include <time.h>
#include <string.h>

#include "memutil.h"
#include "log.h"
#include "json_util.h"
#include "os.h"
#include "ovsdb.h"
#include "target.h"
#include "network_metadata.h"

#include "ltem_mgr.h"


void osa_assert_dump(
        const char *cond,
        const char *func,
        const char *file,
        const int line,
        const char *fmt,
        ...)
{
    while (1); 
}

int osn_lte_esim_download_profile(const char *activation_code)
{
    return 0;
}


osn_lte_modem_info_t *osn_get_modem_info(void)
{
    return NULL;
}

int osn_lte_esim_enable_profile(const char *iccid)
{
    return 0;
}

bool target_log_open(char *name, int flags)
{
    return true;
}

bool target_close(target_init_opt_t opt, struct ev_loop *loop)
{
    return true;
}

bool target_init(target_init_opt_t opt, struct ev_loop *loop)
{
    return true;
}

void backtrace_init(void)
{
}

int osn_lte_get_cfun(char *buf, int buf_len)
{
    return 0;
}

bool ovsdb_init_loop(struct ev_loop *loop, const char *name)
{
    return true;
}

bool ovsdb_stop_loop(struct ev_loop *loop)
{
    return true;
}

bool ovsdb_stop(void)
{
    return true;
}

