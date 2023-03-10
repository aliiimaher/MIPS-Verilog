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
static const char *ng0 = "G:/Term5/CA Lab/Mips/Mips/InstructionMemory.v";
static const char *ng1 = "input.txt";
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {4, 0};
static int ng5[] = {3, 0};
static int ng6[] = {2, 0};
static int ng7[] = {7, 0};
static int ng8[] = {6, 0};
static int ng9[] = {5, 0};
static int ng10[] = {11, 0};
static int ng11[] = {10, 0};
static int ng12[] = {9, 0};
static int ng13[] = {8, 0};
static int ng14[] = {15, 0};
static int ng15[] = {14, 0};
static int ng16[] = {13, 0};
static int ng17[] = {12, 0};
static int ng18[] = {0, 0};



static void Initial_32_0(char *t0)
{
    char *t1;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1768);
    xsi_vlogfile_readmemh(ng1, 0, t1, 0, 0, 0, 0);

LAB1:    return;
}

static void Always_34_1(char *t0)
{
    char t4[8];
    char t16[8];
    char t26[8];
    char t48[8];
    char t50[8];
    char t61[32];
    char t80[8];
    char t91[8];
    char t95[8];
    char t108[8];
    char t119[8];
    char t123[8];
    char t134[8];
    char t138[8];
    char t149[8];
    char t153[8];
    char t164[8];
    char t168[8];
    char t179[8];
    char t183[8];
    char t194[8];
    char t198[8];
    char t209[8];
    char t213[8];
    char t224[8];
    char t228[8];
    char t239[8];
    char t243[8];
    char t254[8];
    char t258[8];
    char t269[8];
    char t273[8];
    char t284[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t92;
    char *t93;
    char *t94;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t120;
    char *t121;
    char *t122;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t135;
    char *t136;
    char *t137;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    char *t143;
    char *t144;
    char *t145;
    char *t146;
    char *t147;
    char *t148;
    char *t150;
    char *t151;
    char *t152;
    char *t154;
    char *t155;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    char *t160;
    char *t161;
    char *t162;
    char *t163;
    char *t165;
    char *t166;
    char *t167;
    char *t169;
    char *t170;
    char *t171;
    char *t172;
    char *t173;
    char *t174;
    char *t175;
    char *t176;
    char *t177;
    char *t178;
    char *t180;
    char *t181;
    char *t182;
    char *t184;
    char *t185;
    char *t186;
    char *t187;
    char *t188;
    char *t189;
    char *t190;
    char *t191;
    char *t192;
    char *t193;
    char *t195;
    char *t196;
    char *t197;
    char *t199;
    char *t200;
    char *t201;
    char *t202;
    char *t203;
    char *t204;
    char *t205;
    char *t206;
    char *t207;
    char *t208;
    char *t210;
    char *t211;
    char *t212;
    char *t214;
    char *t215;
    char *t216;
    char *t217;
    char *t218;
    char *t219;
    char *t220;
    char *t221;
    char *t222;
    char *t223;
    char *t225;
    char *t226;
    char *t227;
    char *t229;
    char *t230;
    char *t231;
    char *t232;
    char *t233;
    char *t234;
    char *t235;
    char *t236;
    char *t237;
    char *t238;
    char *t240;
    char *t241;
    char *t242;
    char *t244;
    char *t245;
    char *t246;
    char *t247;
    char *t248;
    char *t249;
    char *t250;
    char *t251;
    char *t252;
    char *t253;
    char *t255;
    char *t256;
    char *t257;
    char *t259;
    char *t260;
    char *t261;
    char *t262;
    char *t263;
    char *t264;
    char *t265;
    char *t266;
    char *t267;
    char *t268;
    char *t270;
    char *t271;
    char *t272;
    char *t274;
    char *t275;
    char *t276;
    char *t277;
    char *t278;
    char *t279;
    char *t280;
    char *t281;
    char *t282;
    char *t283;
    char *t285;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3824);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t5 = (t0 + 1928);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 4);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 4);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 268435455U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 268435455U);
    t17 = (t0 + 1048U);
    t18 = *((char **)t17);
    memset(t16, 0, 8);
    t17 = (t16 + 4);
    t19 = (t18 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (t20 >> 4);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 4);
    *((unsigned int *)t17) = t23;
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 268435455U);
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 268435455U);
    memset(t26, 0, 8);
    t27 = (t4 + 4);
    t28 = (t16 + 4);
    t29 = *((unsigned int *)t4);
    t30 = *((unsigned int *)t16);
    t31 = (t29 ^ t30);
    t32 = *((unsigned int *)t27);
    t33 = *((unsigned int *)t28);
    t34 = (t32 ^ t33);
    t35 = (t31 | t34);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t28);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB7;

LAB6:    if (t38 != 0)
        goto LAB8;

LAB9:    t42 = (t26 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t26);
    t46 = (t45 & t44);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t20 = (t12 | t15);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t8);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB17;

LAB14:    if (t23 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t4) = 1;

LAB17:    t17 = (t4 + 4);
    t29 = *((unsigned int *)t17);
    t30 = (~(t29));
    t31 = *((unsigned int *)t4);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(46, ng0);

LAB22:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 3, t6, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 3);

LAB20:
LAB12:    goto LAB2;

LAB7:    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB8:    t41 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(35, ng0);

LAB13:    xsi_set_current_line(36, ng0);
    t49 = ((char*)((ng2)));
    t51 = (t0 + 1048U);
    t52 = *((char **)t51);
    memset(t50, 0, 8);
    t51 = (t50 + 4);
    t53 = (t52 + 4);
    t54 = *((unsigned int *)t52);
    t55 = (t54 >> 4);
    *((unsigned int *)t50) = t55;
    t56 = *((unsigned int *)t53);
    t57 = (t56 >> 4);
    *((unsigned int *)t51) = t57;
    t58 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t58 & 268435455U);
    t59 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t59 & 268435455U);
    xsi_vlogtype_concat(t48, 32, 32, 2U, t50, 28, t49, 4);
    t60 = (t0 + 1928);
    xsi_vlogvar_assign_value(t60, t48, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 3, t6, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 3);
    goto LAB12;

LAB16:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(39, ng0);

LAB21:    xsi_set_current_line(40, ng0);
    t18 = (t0 + 1768);
    t19 = (t18 + 56U);
    t27 = *((char **)t19);
    t28 = (t0 + 1768);
    t41 = (t28 + 72U);
    t42 = *((char **)t41);
    t49 = (t0 + 1768);
    t51 = (t49 + 64U);
    t52 = *((char **)t51);
    t53 = (t0 + 1928);
    t60 = (t53 + 56U);
    t62 = *((char **)t60);
    t63 = ((char*)((ng5)));
    memset(t26, 0, 8);
    xsi_vlog_unsigned_add(t26, 32, t62, 32, t63, 32);
    xsi_vlog_generic_get_array_select_value(t16, 8, t27, t42, t52, 2, 1, t26, 32, 2);
    t64 = (t0 + 1768);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = (t0 + 1768);
    t68 = (t67 + 72U);
    t69 = *((char **)t68);
    t70 = (t0 + 1768);
    t71 = (t70 + 64U);
    t72 = *((char **)t71);
    t73 = (t0 + 1928);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    t76 = ((char*)((ng6)));
    memset(t50, 0, 8);
    xsi_vlog_unsigned_add(t50, 32, t75, 32, t76, 32);
    xsi_vlog_generic_get_array_select_value(t48, 8, t66, t69, t72, 2, 1, t50, 32, 2);
    t77 = (t0 + 1768);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    t81 = (t0 + 1768);
    t82 = (t81 + 72U);
    t83 = *((char **)t82);
    t84 = (t0 + 1768);
    t85 = (t84 + 64U);
    t86 = *((char **)t85);
    t87 = (t0 + 1928);
    t88 = (t87 + 56U);
    t89 = *((char **)t88);
    t90 = ((char*)((ng3)));
    memset(t91, 0, 8);
    xsi_vlog_unsigned_add(t91, 32, t89, 32, t90, 32);
    xsi_vlog_generic_get_array_select_value(t80, 8, t79, t83, t86, 2, 1, t91, 32, 2);
    t92 = (t0 + 1768);
    t93 = (t92 + 56U);
    t94 = *((char **)t93);
    t96 = (t0 + 1768);
    t97 = (t96 + 72U);
    t98 = *((char **)t97);
    t99 = (t0 + 1768);
    t100 = (t99 + 64U);
    t101 = *((char **)t100);
    t102 = (t0 + 1928);
    t103 = (t102 + 56U);
    t104 = *((char **)t103);
    xsi_vlog_generic_get_array_select_value(t95, 8, t94, t98, t101, 2, 1, t104, 32, 2);
    t105 = (t0 + 1768);
    t106 = (t105 + 56U);
    t107 = *((char **)t106);
    t109 = (t0 + 1768);
    t110 = (t109 + 72U);
    t111 = *((char **)t110);
    t112 = (t0 + 1768);
    t113 = (t112 + 64U);
    t114 = *((char **)t113);
    t115 = (t0 + 1928);
    t116 = (t115 + 56U);
    t117 = *((char **)t116);
    t118 = ((char*)((ng7)));
    memset(t119, 0, 8);
    xsi_vlog_unsigned_add(t119, 32, t117, 32, t118, 32);
    xsi_vlog_generic_get_array_select_value(t108, 8, t107, t111, t114, 2, 1, t119, 32, 2);
    t120 = (t0 + 1768);
    t121 = (t120 + 56U);
    t122 = *((char **)t121);
    t124 = (t0 + 1768);
    t125 = (t124 + 72U);
    t126 = *((char **)t125);
    t127 = (t0 + 1768);
    t128 = (t127 + 64U);
    t129 = *((char **)t128);
    t130 = (t0 + 1928);
    t131 = (t130 + 56U);
    t132 = *((char **)t131);
    t133 = ((char*)((ng8)));
    memset(t134, 0, 8);
    xsi_vlog_unsigned_add(t134, 32, t132, 32, t133, 32);
    xsi_vlog_generic_get_array_select_value(t123, 8, t122, t126, t129, 2, 1, t134, 32, 2);
    t135 = (t0 + 1768);
    t136 = (t135 + 56U);
    t137 = *((char **)t136);
    t139 = (t0 + 1768);
    t140 = (t139 + 72U);
    t141 = *((char **)t140);
    t142 = (t0 + 1768);
    t143 = (t142 + 64U);
    t144 = *((char **)t143);
    t145 = (t0 + 1928);
    t146 = (t145 + 56U);
    t147 = *((char **)t146);
    t148 = ((char*)((ng9)));
    memset(t149, 0, 8);
    xsi_vlog_unsigned_add(t149, 32, t147, 32, t148, 32);
    xsi_vlog_generic_get_array_select_value(t138, 8, t137, t141, t144, 2, 1, t149, 32, 2);
    t150 = (t0 + 1768);
    t151 = (t150 + 56U);
    t152 = *((char **)t151);
    t154 = (t0 + 1768);
    t155 = (t154 + 72U);
    t156 = *((char **)t155);
    t157 = (t0 + 1768);
    t158 = (t157 + 64U);
    t159 = *((char **)t158);
    t160 = (t0 + 1928);
    t161 = (t160 + 56U);
    t162 = *((char **)t161);
    t163 = ((char*)((ng4)));
    memset(t164, 0, 8);
    xsi_vlog_unsigned_add(t164, 32, t162, 32, t163, 32);
    xsi_vlog_generic_get_array_select_value(t153, 8, t152, t156, t159, 2, 1, t164, 32, 2);
    t165 = (t0 + 1768);
    t166 = (t165 + 56U);
    t167 = *((char **)t166);
    t169 = (t0 + 1768);
    t170 = (t169 + 72U);
    t171 = *((char **)t170);
    t172 = (t0 + 1768);
    t173 = (t172 + 64U);
    t174 = *((char **)t173);
    t175 = (t0 + 1928);
    t176 = (t175 + 56U);
    t177 = *((char **)t176);
    t178 = ((char*)((ng10)));
    memset(t179, 0, 8);
    xsi_vlog_unsigned_add(t179, 32, t177, 32, t178, 32);
    xsi_vlog_generic_get_array_select_value(t168, 8, t167, t171, t174, 2, 1, t179, 32, 2);
    t180 = (t0 + 1768);
    t181 = (t180 + 56U);
    t182 = *((char **)t181);
    t184 = (t0 + 1768);
    t185 = (t184 + 72U);
    t186 = *((char **)t185);
    t187 = (t0 + 1768);
    t188 = (t187 + 64U);
    t189 = *((char **)t188);
    t190 = (t0 + 1928);
    t191 = (t190 + 56U);
    t192 = *((char **)t191);
    t193 = ((char*)((ng11)));
    memset(t194, 0, 8);
    xsi_vlog_unsigned_add(t194, 32, t192, 32, t193, 32);
    xsi_vlog_generic_get_array_select_value(t183, 8, t182, t186, t189, 2, 1, t194, 32, 2);
    t195 = (t0 + 1768);
    t196 = (t195 + 56U);
    t197 = *((char **)t196);
    t199 = (t0 + 1768);
    t200 = (t199 + 72U);
    t201 = *((char **)t200);
    t202 = (t0 + 1768);
    t203 = (t202 + 64U);
    t204 = *((char **)t203);
    t205 = (t0 + 1928);
    t206 = (t205 + 56U);
    t207 = *((char **)t206);
    t208 = ((char*)((ng12)));
    memset(t209, 0, 8);
    xsi_vlog_unsigned_add(t209, 32, t207, 32, t208, 32);
    xsi_vlog_generic_get_array_select_value(t198, 8, t197, t201, t204, 2, 1, t209, 32, 2);
    t210 = (t0 + 1768);
    t211 = (t210 + 56U);
    t212 = *((char **)t211);
    t214 = (t0 + 1768);
    t215 = (t214 + 72U);
    t216 = *((char **)t215);
    t217 = (t0 + 1768);
    t218 = (t217 + 64U);
    t219 = *((char **)t218);
    t220 = (t0 + 1928);
    t221 = (t220 + 56U);
    t222 = *((char **)t221);
    t223 = ((char*)((ng13)));
    memset(t224, 0, 8);
    xsi_vlog_unsigned_add(t224, 32, t222, 32, t223, 32);
    xsi_vlog_generic_get_array_select_value(t213, 8, t212, t216, t219, 2, 1, t224, 32, 2);
    t225 = (t0 + 1768);
    t226 = (t225 + 56U);
    t227 = *((char **)t226);
    t229 = (t0 + 1768);
    t230 = (t229 + 72U);
    t231 = *((char **)t230);
    t232 = (t0 + 1768);
    t233 = (t232 + 64U);
    t234 = *((char **)t233);
    t235 = (t0 + 1928);
    t236 = (t235 + 56U);
    t237 = *((char **)t236);
    t238 = ((char*)((ng14)));
    memset(t239, 0, 8);
    xsi_vlog_unsigned_add(t239, 32, t237, 32, t238, 32);
    xsi_vlog_generic_get_array_select_value(t228, 8, t227, t231, t234, 2, 1, t239, 32, 2);
    t240 = (t0 + 1768);
    t241 = (t240 + 56U);
    t242 = *((char **)t241);
    t244 = (t0 + 1768);
    t245 = (t244 + 72U);
    t246 = *((char **)t245);
    t247 = (t0 + 1768);
    t248 = (t247 + 64U);
    t249 = *((char **)t248);
    t250 = (t0 + 1928);
    t251 = (t250 + 56U);
    t252 = *((char **)t251);
    t253 = ((char*)((ng15)));
    memset(t254, 0, 8);
    xsi_vlog_unsigned_add(t254, 32, t252, 32, t253, 32);
    xsi_vlog_generic_get_array_select_value(t243, 8, t242, t246, t249, 2, 1, t254, 32, 2);
    t255 = (t0 + 1768);
    t256 = (t255 + 56U);
    t257 = *((char **)t256);
    t259 = (t0 + 1768);
    t260 = (t259 + 72U);
    t261 = *((char **)t260);
    t262 = (t0 + 1768);
    t263 = (t262 + 64U);
    t264 = *((char **)t263);
    t265 = (t0 + 1928);
    t266 = (t265 + 56U);
    t267 = *((char **)t266);
    t268 = ((char*)((ng16)));
    memset(t269, 0, 8);
    xsi_vlog_unsigned_add(t269, 32, t267, 32, t268, 32);
    xsi_vlog_generic_get_array_select_value(t258, 8, t257, t261, t264, 2, 1, t269, 32, 2);
    t270 = (t0 + 1768);
    t271 = (t270 + 56U);
    t272 = *((char **)t271);
    t274 = (t0 + 1768);
    t275 = (t274 + 72U);
    t276 = *((char **)t275);
    t277 = (t0 + 1768);
    t278 = (t277 + 64U);
    t279 = *((char **)t278);
    t280 = (t0 + 1928);
    t281 = (t280 + 56U);
    t282 = *((char **)t281);
    t283 = ((char*)((ng17)));
    memset(t284, 0, 8);
    xsi_vlog_unsigned_add(t284, 32, t282, 32, t283, 32);
    xsi_vlog_generic_get_array_select_value(t273, 8, t272, t276, t279, 2, 1, t284, 32, 2);
    xsi_vlogtype_concat(t61, 128, 128, 16U, t273, 8, t258, 8, t243, 8, t228, 8, t213, 8, t198, 8, t183, 8, t168, 8, t153, 8, t138, 8, t123, 8, t108, 8, t95, 8, t80, 8, t48, 8, t16, 8);
    t285 = (t0 + 1608);
    xsi_vlogvar_assign_value(t285, t61, 0, 0, 128);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB20;

}

static void Always_52_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3840);
    *((int *)t2) = 1;
    t3 = (t0 + 3536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t4 = ((char*)((ng18)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    goto LAB2;

}


extern void work_m_00000000004070884233_2138213552_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Always_34_1,(void *)Always_52_2};
	xsi_register_didat("work_m_00000000004070884233_2138213552", "isim/MIPS_TB_isim_beh.exe.sim/work/m_00000000004070884233_2138213552.didat");
	xsi_register_executes(pe);
}
