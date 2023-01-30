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
static const char *ng0 = "G:/Term5/CA Lab/Mips/Mips/Cache.v";
static int ng1[] = {0, 0};
static int ng2[] = {8, 0};
static int ng3[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ng4[] = {1, 0};
static int ng5[] = {153, 0};
static unsigned int ng6[] = {4294967295U, 4294967295U, 4294967295U, 4294967295U, 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {0U, 0U};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {3U, 0U};
static unsigned int ng11[] = {4294967295U, 4294967295U};



static void Initial_23_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(23, ng0);

LAB2:    xsi_set_current_line(24, ng0);
    xsi_set_current_line(24, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2248);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);

LAB6:    xsi_set_current_line(26, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 2088);
    t16 = (t0 + 2088);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2088);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2248);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 2248);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB8;

}

static void Always_39_1(char *t0)
{
    char t4[8];
    char t15[40];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4872);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 4);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 4);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 7U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 7U);
    t14 = (t0 + 2568);
    xsi_vlogvar_assign_value(t14, t4, 0, 0, 3);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 2);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 2);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);
    t6 = (t0 + 2728);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 2);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2088);
    t7 = (t6 + 72U);
    t14 = *((char **)t7);
    t16 = (t0 + 2088);
    t17 = (t16 + 64U);
    t18 = *((char **)t17);
    t19 = (t0 + 2568);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t15, 154, t5, t14, t18, 2, 1, t21, 3, 2);
    t22 = (t0 + 2088);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t4, 1, t15, t24, 2, t25, 32, 1);
    t26 = (t0 + 2888);
    xsi_vlogvar_assign_value(t26, t4, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2088);
    t7 = (t6 + 72U);
    t14 = *((char **)t7);
    t16 = (t0 + 2088);
    t17 = (t16 + 64U);
    t18 = *((char **)t17);
    t19 = (t0 + 2568);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t15, 154, t5, t14, t18, 2, 1, t21, 3, 2);
    memset(t4, 0, 8);
    t22 = (t4 + 4);
    t23 = (t15 + 32);
    t24 = (t15 + 36);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 0);
    *((unsigned int *)t22) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 33554431U);
    t13 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t13 & 33554431U);
    t25 = (t0 + 2408);
    xsi_vlogvar_assign_value(t25, t4, 0, 0, 25);
    goto LAB2;

}

static void Always_47_2(char *t0)
{
    char t6[32];
    char t13[40];
    char t14[32];
    char t17[8];
    char t28[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    int t41;
    char *t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4888);
    *((int *)t2) = 1;
    t3 = (t0 + 4336);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng6)));
    xsi_vlog_unsigned_case_noteq(t6, 128, t5, 128, t4, 128);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);

LAB9:    xsi_set_current_line(50, ng0);
    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    xsi_vlog_get_part_select_value(t14, 128, t16, 127, 0);
    t15 = (t0 + 1048U);
    t18 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t19 = (t18 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (t20 >> 7);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 7);
    *((unsigned int *)t15) = t23;
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 & 33554431U);
    t25 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t25 & 33554431U);
    t26 = ((char*)((ng7)));
    xsi_vlogtype_concat(t13, 154, 154, 3U, t26, 1, t17, 25, t14, 128);
    t27 = (t0 + 2088);
    t30 = (t0 + 2088);
    t31 = (t30 + 72U);
    t32 = *((char **)t31);
    t33 = (t0 + 2088);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 2568);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    xsi_vlog_generic_convert_array_indices(t28, t29, t32, t35, 2, 1, t38, 3, 2);
    t39 = (t28 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (!(t40));
    t42 = (t29 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    t46 = *((unsigned int *)t28);
    t47 = *((unsigned int *)t29);
    t48 = (t46 - t47);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t27, t13, 0, *((unsigned int *)t29), t49);
    goto LAB11;

}

static void Always_55_3(char *t0)
{
    char t4[8];
    char t17[8];
    char t33[8];
    char t48[8];
    char t56[8];
    char t96[40];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;

LAB0:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4904);
    *((int *)t2) = 1;
    t3 = (t0 + 4584);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 7);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 7);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 33554431U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 33554431U);
    t14 = (t0 + 2408);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t18 = (t4 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB9;

LAB6:    if (t29 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t17) = 1;

LAB9:    memset(t33, 0, 8);
    t34 = (t17 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t17);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t34) != 0)
        goto LAB12;

LAB13:    t41 = (t33 + 4);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t41);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB14;

LAB15:    memcpy(t56, t33, 8);

LAB16:    t88 = (t56 + 4);
    t89 = *((unsigned int *)t88);
    t90 = (~(t89));
    t91 = *((unsigned int *)t56);
    t92 = (t91 & t90);
    t93 = (t92 != 0);
    if (t93 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(66, ng0);

LAB38:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB26:    goto LAB2;

LAB8:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t33) = 1;
    goto LAB13;

LAB12:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB13;

LAB14:    t45 = (t0 + 2888);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memset(t48, 0, 8);
    t49 = (t47 + 4);
    t50 = *((unsigned int *)t49);
    t51 = (~(t50));
    t52 = *((unsigned int *)t47);
    t53 = (t52 & t51);
    t54 = (t53 & 1U);
    if (t54 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t49) != 0)
        goto LAB19;

LAB20:    t57 = *((unsigned int *)t33);
    t58 = *((unsigned int *)t48);
    t59 = (t57 & t58);
    *((unsigned int *)t56) = t59;
    t60 = (t33 + 4);
    t61 = (t48 + 4);
    t62 = (t56 + 4);
    t63 = *((unsigned int *)t60);
    t64 = *((unsigned int *)t61);
    t65 = (t63 | t64);
    *((unsigned int *)t62) = t65;
    t66 = *((unsigned int *)t62);
    t67 = (t66 != 0);
    if (t67 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB16;

LAB17:    *((unsigned int *)t48) = 1;
    goto LAB20;

LAB19:    t55 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t55) = 1;
    goto LAB20;

LAB21:    t68 = *((unsigned int *)t56);
    t69 = *((unsigned int *)t62);
    *((unsigned int *)t56) = (t68 | t69);
    t70 = (t33 + 4);
    t71 = (t48 + 4);
    t72 = *((unsigned int *)t33);
    t73 = (~(t72));
    t74 = *((unsigned int *)t70);
    t75 = (~(t74));
    t76 = *((unsigned int *)t48);
    t77 = (~(t76));
    t78 = *((unsigned int *)t71);
    t79 = (~(t78));
    t80 = (t73 & t75);
    t81 = (t77 & t79);
    t82 = (~(t80));
    t83 = (~(t81));
    t84 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t84 & t82);
    t85 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t85 & t83);
    t86 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t86 & t82);
    t87 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t87 & t83);
    goto LAB23;

LAB24:    xsi_set_current_line(56, ng0);

LAB27:    xsi_set_current_line(57, ng0);
    t94 = ((char*)((ng4)));
    t95 = (t0 + 1928);
    xsi_vlogvar_assign_value(t95, t94, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB28:    t6 = ((char*)((ng8)));
    t80 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t80 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng7)));
    t80 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t80 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng9)));
    t80 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t80 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng10)));
    t80 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t80 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB26;

LAB29:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 2088);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 2088);
    t18 = (t16 + 72U);
    t19 = *((char **)t18);
    t32 = (t0 + 2088);
    t34 = (t32 + 64U);
    t40 = *((char **)t34);
    t41 = (t0 + 2568);
    t45 = (t41 + 56U);
    t46 = *((char **)t45);
    xsi_vlog_generic_get_array_select_value(t96, 154, t15, t19, t40, 2, 1, t46, 3, 2);
    memset(t4, 0, 8);
    t47 = (t4 + 4);
    t49 = (t96 + 4);
    t8 = *((unsigned int *)t96);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t49);
    t11 = (t10 >> 0);
    *((unsigned int *)t47) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t13 & 4294967295U);
    t55 = (t0 + 1768);
    xsi_vlogvar_assign_value(t55, t4, 0, 0, 32);
    goto LAB37;

LAB31:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 2088);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t14 = (t0 + 2088);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t18 = (t0 + 2088);
    t19 = (t18 + 64U);
    t32 = *((char **)t19);
    t34 = (t0 + 2568);
    t40 = (t34 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_array_select_value(t96, 154, t7, t16, t32, 2, 1, t41, 3, 2);
    memset(t4, 0, 8);
    t45 = (t4 + 4);
    t46 = (t96 + 8);
    t47 = (t96 + 12);
    t8 = *((unsigned int *)t46);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t47);
    t11 = (t10 >> 0);
    *((unsigned int *)t45) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t13 & 4294967295U);
    t49 = (t0 + 1768);
    xsi_vlogvar_assign_value(t49, t4, 0, 0, 32);
    goto LAB37;

LAB33:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 2088);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t14 = (t0 + 2088);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t18 = (t0 + 2088);
    t19 = (t18 + 64U);
    t32 = *((char **)t19);
    t34 = (t0 + 2568);
    t40 = (t34 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_array_select_value(t96, 154, t7, t16, t32, 2, 1, t41, 3, 2);
    memset(t4, 0, 8);
    t45 = (t4 + 4);
    t46 = (t96 + 16);
    t47 = (t96 + 20);
    t8 = *((unsigned int *)t46);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t47);
    t11 = (t10 >> 0);
    *((unsigned int *)t45) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t13 & 4294967295U);
    t49 = (t0 + 1768);
    xsi_vlogvar_assign_value(t49, t4, 0, 0, 32);
    goto LAB37;

LAB35:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2088);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t14 = (t0 + 2088);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t18 = (t0 + 2088);
    t19 = (t18 + 64U);
    t32 = *((char **)t19);
    t34 = (t0 + 2568);
    t40 = (t34 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_array_select_value(t96, 154, t7, t16, t32, 2, 1, t41, 3, 2);
    memset(t4, 0, 8);
    t45 = (t4 + 4);
    t46 = (t96 + 24);
    t47 = (t96 + 28);
    t8 = *((unsigned int *)t46);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t47);
    t11 = (t10 >> 0);
    *((unsigned int *)t45) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t13 & 4294967295U);
    t49 = (t0 + 1768);
    xsi_vlogvar_assign_value(t49, t4, 0, 0, 32);
    goto LAB37;

}


extern void work_m_00000000000944614439_2386836622_init()
{
	static char *pe[] = {(void *)Initial_23_0,(void *)Always_39_1,(void *)Always_47_2,(void *)Always_55_3};
	xsi_register_didat("work_m_00000000000944614439_2386836622", "isim/MIPS_TB_isim_beh.exe.sim/work/m_00000000000944614439_2386836622.didat");
	xsi_register_executes(pe);
}
