/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_2092195719_3212880686_init();
    work_a_1490199415_1568986933_init();
    work_a_0704849835_3212880686_init();
    work_a_2615964831_3212880686_init();
    work_a_1246009064_3212880686_init();
    ieee_p_1242562249_init();
    work_a_2464056600_3212880686_init();
    work_a_3112044328_3212880686_init();
    work_a_3385561392_3751539708_init();
    work_a_0312234686_3212880686_init();
    work_a_3011198190_3212880686_init();
    work_a_2166728934_3212880686_init();
    work_a_1292655293_3212880686_init();
    work_a_1451239384_3212880686_init();
    work_a_2878905872_3212880686_init();
    work_a_2429904220_3212880686_init();
    work_a_4202284216_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_0503873392_2372691052_init();


    xsi_register_tops("work_a_0503873392_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
