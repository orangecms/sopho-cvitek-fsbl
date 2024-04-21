#include <platform.h>
#include <ddr.h>
#include <ddr_sys_bring_up.h>
#include <ddr_pkg_info.h>


int ddr_init(const struct ddr_param *ddr_param)
{
	NOTICE("cv181x DDR init.\n");
	NOTICE("ddr_param[0]=0x%x.\n", ((const uint32_t *)ddr_param)[0]);

	// read_ddr_pkg_info();
	// bldp_init((void *)ddr_param);
#ifdef NO_DDR_CFG
	NOTICE("no DDR configuration\n");
#else
	read_ddr_pkg_info();
	ddr_sys_bring_up();
#endif //NO_DDR_CFG

	return 0;
}
