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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/Term5/CA Lab/Mips/Mips/DataMemory.v";
static unsigned int ng1[] = {1U, 0U};



static void Always_30_0(char *t0)
{
    char t6[8];
    char t31[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t41;
    int t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(33, ng0);

LAB13:    xsi_set_current_line(34, ng0);
    t28 = (t0 + 2248);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 2248);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 2248);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = (t0 + 1208U);
    t39 = *((char **)t38);
    xsi_vlog_generic_get_array_select_value(t31, 32, t30, t34, t37, 2, 1, t39, 32, 2);
    t38 = (t0 + 2088);
    xsi_vlogvar_assign_value(t38, t31, 0, 0, 32);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(37, ng0);

LAB21:    xsi_set_current_line(38, ng0);
    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = (t0 + 2248);
    t28 = (t0 + 2248);
    t29 = (t28 + 72U);
    t30 = *((char **)t29);
    t32 = (t0 + 2248);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 1208U);
    t36 = *((char **)t35);
    xsi_vlog_generic_convert_array_indices(t31, t40, t30, t34, 2, 1, t36, 32, 2);
    t35 = (t31 + 4);
    t41 = *((unsigned int *)t35);
    t42 = (!(t41));
    t37 = (t40 + 4);
    t43 = *((unsigned int *)t37);
    t44 = (!(t43));
    t45 = (t42 && t44);
    if (t45 == 1)
        goto LAB22;

LAB23:    goto LAB20;

LAB22:    t46 = *((unsigned int *)t31);
    t47 = *((unsigned int *)t40);
    t48 = (t46 - t47);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t21, t22, 0, *((unsigned int *)t40), t49);
    goto LAB23;

}


extern void work_m_00000000001623338238_2461264495_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000001623338238_2461264495", "isim/MIPS_TB_isim_beh.exe.sim/work/m_00000000001623338238_2461264495.didat");
	xsi_register_executes(pe);
}
