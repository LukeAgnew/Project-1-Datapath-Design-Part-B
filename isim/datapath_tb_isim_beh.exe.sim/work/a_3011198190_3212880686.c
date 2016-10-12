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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/temp/Project-1-Datapath-Design-Part-B/logic_unit_mux4_16bit.vhd";



static void work_a_3011198190_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    int64 t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    int64 t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned char t31;
    char *t32;
    char *t33;
    unsigned char t34;
    unsigned char t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    int64 t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned char t46;
    char *t47;
    char *t48;
    unsigned char t49;
    unsigned char t50;
    char *t51;
    unsigned char t52;
    unsigned char t53;
    int64 t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    int64 t61;
    char *t62;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;

LAB0:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 1832U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)2);
    if (t20 == 1)
        goto LAB10;

LAB11:    t16 = (unsigned char)0;

LAB12:    if (t16 != 0)
        goto LAB8;

LAB9:    t32 = (t0 + 1832U);
    t33 = *((char **)t32);
    t34 = *((unsigned char *)t33);
    t35 = (t34 == (unsigned char)3);
    if (t35 == 1)
        goto LAB15;

LAB16:    t31 = (unsigned char)0;

LAB17:    if (t31 != 0)
        goto LAB13;

LAB14:    t47 = (t0 + 1832U);
    t48 = *((char **)t47);
    t49 = *((unsigned char *)t48);
    t50 = (t49 == (unsigned char)3);
    if (t50 == 1)
        goto LAB20;

LAB21:    t46 = (unsigned char)0;

LAB22:    if (t46 != 0)
        goto LAB18;

LAB19:
LAB23:    t61 = (5 * 1000LL);
    t62 = (t0 + 5670);
    t64 = (t0 + 3552);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    memcpy(t68, t62, 16U);
    xsi_driver_first_trans_delta(t64, 0U, 16U, t61);
    t69 = (t0 + 3552);
    xsi_driver_intertial_reject(t69, t61, t61);

LAB2:    t70 = (t0 + 3472);
    *((int *)t70) = 1;

LAB1:    return;
LAB3:    t9 = (5 * 1000LL);
    t2 = (t0 + 1032U);
    t10 = *((char **)t2);
    t2 = (t0 + 3552);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 16U);
    xsi_driver_first_trans_delta(t2, 0U, 16U, t9);
    t15 = (t0 + 3552);
    xsi_driver_intertial_reject(t15, t9, t9);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    t24 = (5 * 1000LL);
    t17 = (t0 + 1192U);
    t25 = *((char **)t17);
    t17 = (t0 + 3552);
    t26 = (t17 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 16U);
    xsi_driver_first_trans_delta(t17, 0U, 16U, t24);
    t30 = (t0 + 3552);
    xsi_driver_intertial_reject(t30, t24, t24);
    goto LAB2;

LAB10:    t17 = (t0 + 1672U);
    t21 = *((char **)t17);
    t22 = *((unsigned char *)t21);
    t23 = (t22 == (unsigned char)3);
    t16 = t23;
    goto LAB12;

LAB13:    t39 = (5 * 1000LL);
    t32 = (t0 + 1352U);
    t40 = *((char **)t32);
    t32 = (t0 + 3552);
    t41 = (t32 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t40, 16U);
    xsi_driver_first_trans_delta(t32, 0U, 16U, t39);
    t45 = (t0 + 3552);
    xsi_driver_intertial_reject(t45, t39, t39);
    goto LAB2;

LAB15:    t32 = (t0 + 1672U);
    t36 = *((char **)t32);
    t37 = *((unsigned char *)t36);
    t38 = (t37 == (unsigned char)2);
    t31 = t38;
    goto LAB17;

LAB18:    t54 = (5 * 1000LL);
    t47 = (t0 + 1512U);
    t55 = *((char **)t47);
    t47 = (t0 + 3552);
    t56 = (t47 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    memcpy(t59, t55, 16U);
    xsi_driver_first_trans_delta(t47, 0U, 16U, t54);
    t60 = (t0 + 3552);
    xsi_driver_intertial_reject(t60, t54, t54);
    goto LAB2;

LAB20:    t47 = (t0 + 1672U);
    t51 = *((char **)t47);
    t52 = *((unsigned char *)t51);
    t53 = (t52 == (unsigned char)3);
    t46 = t53;
    goto LAB22;

LAB24:    goto LAB2;

}


extern void work_a_3011198190_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3011198190_3212880686_p_0};
	xsi_register_didat("work_a_3011198190_3212880686", "isim/datapath_tb_isim_beh.exe.sim/work/a_3011198190_3212880686.didat");
	xsi_register_executes(pe);
}
