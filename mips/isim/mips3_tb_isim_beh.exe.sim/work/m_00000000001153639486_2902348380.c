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
static const char *ng0 = "E:/ISEhomework/p77/mips/TimCou.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {1717986918U, 0U};
static int ng6[] = {1, 0};
static int ng7[] = {3, 0};



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(35, ng0);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Cont_41_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t15[8];
    char t42[8];
    char t43[8];
    char t60[8];
    char t61[8];
    char t62[8];
    char t73[8];
    char t107[8];
    char t108[8];
    char t109[8];
    char t120[8];
    char *t1;
    char *t2;
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
    unsigned int t18;
    unsigned int t19;
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
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t147;
    char *t148;
    char *t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    char *t160;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 2);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 2);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);
    t14 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB7;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    memset(t4, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t31) != 0)
        goto LAB10;

LAB11:    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB12;

LAB13:    t56 = *((unsigned int *)t4);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t57 || t58);
    if (t59 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t38) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t60, 8);

LAB20:    t155 = (t0 + 4560);
    t156 = (t155 + 56U);
    t157 = *((char **)t156);
    t158 = (t157 + 56U);
    t159 = *((char **)t158);
    memcpy(t159, t3, 8);
    xsi_driver_vfirst_trans(t155, 0, 31);
    t160 = (t0 + 4464);
    *((int *)t160) = 1;

LAB1:    return;
LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t37 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t44 = (t0 + 2568);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memset(t43, 0, 8);
    t47 = (t43 + 4);
    t48 = (t46 + 4);
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 0);
    *((unsigned int *)t43) = t50;
    t51 = *((unsigned int *)t48);
    t52 = (t51 >> 0);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t53 & 15U);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t54 & 15U);
    t55 = ((char*)((ng2)));
    xsi_vlogtype_concat(t42, 32, 32, 2U, t55, 28, t43, 4);
    goto LAB13;

LAB14:    t63 = (t0 + 1368U);
    t64 = *((char **)t63);
    memset(t62, 0, 8);
    t63 = (t62 + 4);
    t65 = (t64 + 4);
    t66 = *((unsigned int *)t64);
    t67 = (t66 >> 2);
    *((unsigned int *)t62) = t67;
    t68 = *((unsigned int *)t65);
    t69 = (t68 >> 2);
    *((unsigned int *)t63) = t69;
    t70 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t70 & 3U);
    t71 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t71 & 3U);
    t72 = ((char*)((ng3)));
    memset(t73, 0, 8);
    t74 = (t62 + 4);
    t75 = (t72 + 4);
    t76 = *((unsigned int *)t62);
    t77 = *((unsigned int *)t72);
    t78 = (t76 ^ t77);
    t79 = *((unsigned int *)t74);
    t80 = *((unsigned int *)t75);
    t81 = (t79 ^ t80);
    t82 = (t78 | t81);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t75);
    t85 = (t83 | t84);
    t86 = (~(t85));
    t87 = (t82 & t86);
    if (t87 != 0)
        goto LAB24;

LAB21:    if (t85 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t73) = 1;

LAB24:    memset(t61, 0, 8);
    t89 = (t73 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t73);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t89) != 0)
        goto LAB27;

LAB28:    t96 = (t61 + 4);
    t97 = *((unsigned int *)t61);
    t98 = *((unsigned int *)t96);
    t99 = (t97 || t98);
    if (t99 > 0)
        goto LAB29;

LAB30:    t103 = *((unsigned int *)t61);
    t104 = (~(t103));
    t105 = *((unsigned int *)t96);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t96) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t61) > 0)
        goto LAB35;

LAB36:    memcpy(t60, t107, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t42, 32, t60, 32);
    goto LAB20;

LAB18:    memcpy(t3, t42, 8);
    goto LAB20;

LAB23:    t88 = (t73 + 4);
    *((unsigned int *)t73) = 1;
    *((unsigned int *)t88) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t61) = 1;
    goto LAB28;

LAB27:    t95 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB28;

LAB29:    t100 = (t0 + 2728);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    goto LAB30;

LAB31:    t110 = (t0 + 1368U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 2);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 2);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 3U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 3U);
    t119 = ((char*)((ng4)));
    memset(t120, 0, 8);
    t121 = (t109 + 4);
    t122 = (t119 + 4);
    t123 = *((unsigned int *)t109);
    t124 = *((unsigned int *)t119);
    t125 = (t123 ^ t124);
    t126 = *((unsigned int *)t121);
    t127 = *((unsigned int *)t122);
    t128 = (t126 ^ t127);
    t129 = (t125 | t128);
    t130 = *((unsigned int *)t121);
    t131 = *((unsigned int *)t122);
    t132 = (t130 | t131);
    t133 = (~(t132));
    t134 = (t129 & t133);
    if (t134 != 0)
        goto LAB41;

LAB38:    if (t132 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t120) = 1;

LAB41:    memset(t108, 0, 8);
    t136 = (t120 + 4);
    t137 = *((unsigned int *)t136);
    t138 = (~(t137));
    t139 = *((unsigned int *)t120);
    t140 = (t139 & t138);
    t141 = (t140 & 1U);
    if (t141 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t136) != 0)
        goto LAB44;

LAB45:    t143 = (t108 + 4);
    t144 = *((unsigned int *)t108);
    t145 = *((unsigned int *)t143);
    t146 = (t144 || t145);
    if (t146 > 0)
        goto LAB46;

LAB47:    t150 = *((unsigned int *)t108);
    t151 = (~(t150));
    t152 = *((unsigned int *)t143);
    t153 = (t151 || t152);
    if (t153 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t143) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t108) > 0)
        goto LAB52;

LAB53:    memcpy(t107, t154, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t60, 32, t102, 32, t107, 32);
    goto LAB37;

LAB35:    memcpy(t60, t102, 8);
    goto LAB37;

LAB40:    t135 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t108) = 1;
    goto LAB45;

LAB44:    t142 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t142) = 1;
    goto LAB45;

LAB46:    t147 = (t0 + 2408);
    t148 = (t147 + 56U);
    t149 = *((char **)t148);
    goto LAB47;

LAB48:    t154 = ((char*)((ng5)));
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t107, 32, t149, 32, t154, 32);
    goto LAB54;

LAB52:    memcpy(t107, t149, 8);
    goto LAB54;

}

static void Always_45_2(char *t0)
{
    char t13[8];
    char t20[8];
    char t49[8];
    char t58[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t59;

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4480);
    *((int *)t2) = 1;
    t3 = (t0 + 4176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(61, ng0);

LAB29:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 1);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 1);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 3U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 3U);

LAB30:    t12 = ((char*)((ng2)));
    t44 = xsi_vlog_unsigned_case_compare(t13, 2, t12, 2);
    if (t44 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng3)));
    t44 = xsi_vlog_unsigned_case_compare(t13, 2, t2, 2);
    if (t44 == 1)
        goto LAB33;

LAB34:
LAB36:
LAB35:    xsi_set_current_line(118, ng0);

LAB117:
LAB37:
LAB13:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);

LAB9:    xsi_set_current_line(48, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(56, ng0);

LAB14:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 2);
    *((unsigned int *)t13) = t15;
    t16 = *((unsigned int *)t11);
    t17 = (t16 >> 2);
    *((unsigned int *)t4) = t17;
    t18 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t18 & 3U);
    t19 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t19 & 3U);
    t12 = ((char*)((ng2)));
    memset(t20, 0, 8);
    t21 = (t13 + 4);
    t22 = (t12 + 4);
    t23 = *((unsigned int *)t13);
    t24 = *((unsigned int *)t12);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB18;

LAB15:    if (t32 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t20) = 1;

LAB18:    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 2);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 2);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);
    t5 = ((char*)((ng3)));
    memset(t20, 0, 8);
    t11 = (t13 + 4);
    t12 = (t5 + 4);
    t15 = *((unsigned int *)t13);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t12);
    t23 = (t18 ^ t19);
    t24 = (t17 | t23);
    t25 = *((unsigned int *)t11);
    t26 = *((unsigned int *)t12);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB25;

LAB22:    if (t27 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t20) = 1;

LAB25:    t22 = (t20 + 4);
    t30 = *((unsigned int *)t22);
    t31 = (~(t30));
    t32 = *((unsigned int *)t20);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB26;

LAB27:
LAB28:
LAB21:    goto LAB13;

LAB17:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(57, ng0);
    t42 = (t0 + 1048U);
    t43 = *((char **)t42);
    t42 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t42, t43, 0, 0, 32, 0LL);
    goto LAB21;

LAB24:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(58, ng0);
    t35 = (t0 + 1048U);
    t36 = *((char **)t35);
    t35 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t35, t36, 0, 0, 32, 0LL);
    goto LAB28;

LAB31:    xsi_set_current_line(63, ng0);

LAB38:    xsi_set_current_line(64, ng0);
    t21 = (t0 + 2568);
    t22 = (t21 + 56U);
    t35 = *((char **)t22);
    memset(t20, 0, 8);
    t36 = (t20 + 4);
    t42 = (t35 + 4);
    t15 = *((unsigned int *)t35);
    t16 = (t15 >> 0);
    t17 = (t16 & 1);
    *((unsigned int *)t20) = t17;
    t18 = *((unsigned int *)t42);
    t19 = (t18 >> 0);
    t23 = (t19 & 1);
    *((unsigned int *)t36) = t23;
    t43 = (t20 + 4);
    t24 = *((unsigned int *)t43);
    t25 = (~(t24));
    t26 = *((unsigned int *)t20);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(83, ng0);

LAB70:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 3);
    t8 = (t7 & 1);
    *((unsigned int *)t20) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 3);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = ((char*)((ng2)));
    memset(t49, 0, 8);
    t21 = (t20 + 4);
    t22 = (t12 + 4);
    t15 = *((unsigned int *)t20);
    t16 = *((unsigned int *)t12);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t23 = (t18 ^ t19);
    t24 = (t17 | t23);
    t25 = *((unsigned int *)t21);
    t26 = *((unsigned int *)t22);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB74;

LAB71:    if (t27 != 0)
        goto LAB73;

LAB72:    *((unsigned int *)t49) = 1;

LAB74:    t36 = (t49 + 4);
    t30 = *((unsigned int *)t36);
    t31 = (~(t30));
    t32 = *((unsigned int *)t49);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB75;

LAB76:    xsi_set_current_line(86, ng0);

LAB78:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);

LAB77:
LAB41:    goto LAB37;

LAB33:    xsi_set_current_line(93, ng0);

LAB79:    xsi_set_current_line(94, ng0);
    t3 = (t0 + 2568);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t20, 0, 8);
    t11 = (t20 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t20) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    t14 = (t10 & 1);
    *((unsigned int *)t11) = t14;
    t21 = (t20 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (~(t15));
    t17 = *((unsigned int *)t20);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB80;

LAB81:    xsi_set_current_line(109, ng0);

LAB108:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 3);
    t8 = (t7 & 1);
    *((unsigned int *)t20) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 3);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = ((char*)((ng2)));
    memset(t49, 0, 8);
    t21 = (t20 + 4);
    t22 = (t12 + 4);
    t15 = *((unsigned int *)t20);
    t16 = *((unsigned int *)t12);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t23 = (t18 ^ t19);
    t24 = (t17 | t23);
    t25 = *((unsigned int *)t21);
    t26 = *((unsigned int *)t22);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB112;

LAB109:    if (t27 != 0)
        goto LAB111;

LAB110:    *((unsigned int *)t49) = 1;

LAB112:    t36 = (t49 + 4);
    t30 = *((unsigned int *)t36);
    t31 = (~(t30));
    t32 = *((unsigned int *)t49);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB113;

LAB114:    xsi_set_current_line(112, ng0);

LAB116:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);

LAB115:
LAB82:    goto LAB37;

LAB39:    xsi_set_current_line(65, ng0);

LAB42:    xsi_set_current_line(66, ng0);
    t45 = (t0 + 2408);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = ((char*)((ng3)));
    memset(t49, 0, 8);
    t50 = (t47 + 4);
    if (*((unsigned int *)t50) != 0)
        goto LAB44;

LAB43:    t51 = (t48 + 4);
    if (*((unsigned int *)t51) != 0)
        goto LAB44;

LAB47:    if (*((unsigned int *)t47) > *((unsigned int *)t48))
        goto LAB45;

LAB46:    t53 = (t49 + 4);
    t29 = *((unsigned int *)t53);
    t30 = (~(t29));
    t31 = *((unsigned int *)t49);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t20, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t23 = (t15 & t19);
    if (t23 != 0)
        goto LAB55;

LAB52:    if (t18 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t20) = 1;

LAB55:    t22 = (t20 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t20);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(77, ng0);

LAB69:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB58:
LAB50:    goto LAB41;

LAB44:    t52 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB46;

LAB45:    *((unsigned int *)t49) = 1;
    goto LAB46;

LAB48:    xsi_set_current_line(67, ng0);

LAB51:    xsi_set_current_line(68, ng0);
    t54 = (t0 + 2408);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng6)));
    memset(t58, 0, 8);
    xsi_vlog_unsigned_minus(t58, 32, t56, 32, t57, 32);
    t59 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t59, t58, 0, 0, 32, 0LL);
    goto LAB50;

LAB54:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(71, ng0);

LAB59:    xsi_set_current_line(72, ng0);
    t35 = (t0 + 2408);
    t36 = (t35 + 56U);
    t42 = *((char **)t36);
    t43 = ((char*)((ng6)));
    memset(t49, 0, 8);
    xsi_vlog_unsigned_minus(t49, 32, t42, 32, t43, 32);
    t45 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t45, t49, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t20, t11, 2, t12, 32, 1);
    t21 = (t20 + 4);
    t6 = *((unsigned int *)t21);
    t44 = (!(t6));
    if (t44 == 1)
        goto LAB60;

LAB61:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2568);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t21 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t20, 32, t4, t12, 2, t21, 32, 1);
    t22 = ((char*)((ng6)));
    memset(t49, 0, 8);
    t35 = (t20 + 4);
    t36 = (t22 + 4);
    t6 = *((unsigned int *)t20);
    t7 = *((unsigned int *)t22);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t35);
    t10 = *((unsigned int *)t36);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t35);
    t17 = *((unsigned int *)t36);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t23 = (t15 & t19);
    if (t23 != 0)
        goto LAB65;

LAB62:    if (t18 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t49) = 1;

LAB65:    t43 = (t49 + 4);
    t24 = *((unsigned int *)t43);
    t25 = (~(t24));
    t26 = *((unsigned int *)t49);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB66;

LAB67:
LAB68:    goto LAB58;

LAB60:    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t20), 1, 0LL);
    goto LAB61;

LAB64:    t42 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB65;

LAB66:    xsi_set_current_line(74, ng0);
    t45 = ((char*)((ng6)));
    t46 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 1, 0LL);
    goto LAB68;

LAB73:    t35 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB74;

LAB75:    xsi_set_current_line(84, ng0);
    t42 = ((char*)((ng1)));
    t43 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t43, t42, 0, 0, 1, 0LL);
    goto LAB77;

LAB80:    xsi_set_current_line(95, ng0);

LAB83:    xsi_set_current_line(96, ng0);
    t22 = (t0 + 2408);
    t35 = (t22 + 56U);
    t36 = *((char **)t35);
    t42 = ((char*)((ng3)));
    memset(t49, 0, 8);
    t43 = (t36 + 4);
    if (*((unsigned int *)t43) != 0)
        goto LAB85;

LAB84:    t45 = (t42 + 4);
    if (*((unsigned int *)t45) != 0)
        goto LAB85;

LAB88:    if (*((unsigned int *)t36) > *((unsigned int *)t42))
        goto LAB86;

LAB87:    t47 = (t49 + 4);
    t23 = *((unsigned int *)t47);
    t24 = (~(t23));
    t25 = *((unsigned int *)t49);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB89;

LAB90:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t20, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t23 = (t15 & t19);
    if (t23 != 0)
        goto LAB95;

LAB92:    if (t18 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t20) = 1;

LAB95:    t22 = (t20 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t20);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB96;

LAB97:    xsi_set_current_line(103, ng0);

LAB107:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB98:
LAB91:    goto LAB82;

LAB85:    t46 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB87;

LAB86:    *((unsigned int *)t49) = 1;
    goto LAB87;

LAB89:    xsi_set_current_line(96, ng0);
    t48 = (t0 + 2408);
    t50 = (t48 + 56U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng6)));
    memset(t58, 0, 8);
    xsi_vlog_unsigned_minus(t58, 32, t51, 32, t52, 32);
    t53 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t53, t58, 0, 0, 32, 0LL);
    goto LAB91;

LAB94:    t21 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB95;

LAB96:    xsi_set_current_line(98, ng0);

LAB99:    xsi_set_current_line(99, ng0);
    t35 = (t0 + 2408);
    t36 = (t35 + 56U);
    t42 = *((char **)t36);
    t43 = ((char*)((ng6)));
    memset(t49, 0, 8);
    xsi_vlog_unsigned_minus(t49, 32, t42, 32, t43, 32);
    t45 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t45, t49, 0, 0, 32, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2568);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t21 = ((char*)((ng7)));
    xsi_vlog_generic_get_index_select_value(t20, 32, t4, t12, 2, t21, 32, 1);
    t22 = ((char*)((ng6)));
    memset(t49, 0, 8);
    t35 = (t20 + 4);
    t36 = (t22 + 4);
    t6 = *((unsigned int *)t20);
    t7 = *((unsigned int *)t22);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t35);
    t10 = *((unsigned int *)t36);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t35);
    t17 = *((unsigned int *)t36);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t23 = (t15 & t19);
    if (t23 != 0)
        goto LAB103;

LAB100:    if (t18 != 0)
        goto LAB102;

LAB101:    *((unsigned int *)t49) = 1;

LAB103:    t43 = (t49 + 4);
    t24 = *((unsigned int *)t43);
    t25 = (~(t24));
    t26 = *((unsigned int *)t49);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB104;

LAB105:
LAB106:    goto LAB98;

LAB102:    t42 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB103;

LAB104:    xsi_set_current_line(100, ng0);
    t45 = ((char*)((ng6)));
    t46 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 1, 0LL);
    goto LAB106;

LAB111:    t35 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB112;

LAB113:    xsi_set_current_line(110, ng0);
    t42 = ((char*)((ng1)));
    t43 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t43, t42, 0, 0, 1, 0LL);
    goto LAB115;

}


extern void work_m_00000000001153639486_2902348380_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Cont_41_1,(void *)Always_45_2};
	xsi_register_didat("work_m_00000000001153639486_2902348380", "isim/mips3_tb_isim_beh.exe.sim/work/m_00000000001153639486_2902348380.didat");
	xsi_register_executes(pe);
}
