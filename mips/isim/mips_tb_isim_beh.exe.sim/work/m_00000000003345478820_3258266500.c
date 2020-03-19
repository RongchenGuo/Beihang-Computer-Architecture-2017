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
static const char *ng0 = "E:/ISEhomework/p5/mips/data_memory.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1024, 0};
static int ng4[] = {1, 0};
static const char *ng5 = "%d@%h: *%h <= %h";
static unsigned int ng6[] = {1U, 0U};
static int ng7[] = {31, 0};
static int ng8[] = {16, 0};
static int ng9[] = {15, 0};
static unsigned int ng10[] = {2U, 0U};
static int ng11[] = {7, 0};
static int ng12[] = {8, 0};
static int ng13[] = {23, 0};
static unsigned int ng14[] = {3U, 0U};
static int ng15[] = {24, 0};



static void Cont_36_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 2);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 2);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 4095U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 4095U);
    t12 = (t0 + 5408);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 4095U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 11);
    t25 = (t0 + 5280);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_37_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2888);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2888);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 12, 2);
    t12 = (t0 + 5472);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 5296);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_38_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 32, 32, 3U, t4, 18, t5, 12, t2, 2);
    t6 = (t0 + 5536);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 8);
    xsi_driver_vfirst_trans(t6, 0, 31);
    t11 = (t0 + 5312);
    *((int *)t11) = 1;

LAB1:    return;
}

static void Initial_40_3(char *t0)
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

LAB0:    xsi_set_current_line(40, ng0);

LAB2:    xsi_set_current_line(41, ng0);
    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 3048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
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
LAB4:    xsi_set_current_line(41, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 2888);
    t16 = (t0 + 2888);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 3048);
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
        goto LAB6;

LAB7:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 3048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 3048);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB7;

}

static void Always_44_4(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t55[16];
    char t56[8];
    char t69[8];
    char t75[8];
    char t109[8];
    char t120[8];
    char t121[8];
    char t130[8];
    char t131[8];
    char t132[8];
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
    char *t14;
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
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
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
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    unsigned int t138;
    char *t139;
    unsigned int t140;
    char *t141;
    unsigned int t142;
    int t143;
    int t144;
    char *t145;
    unsigned int t146;
    int t147;
    int t148;
    char *t149;
    unsigned int t150;
    int t151;
    int t152;
    unsigned int t153;
    int t154;
    unsigned int t155;
    unsigned int t156;
    int t157;
    unsigned int t158;
    unsigned int t159;
    int t160;
    int t161;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5328);
    *((int *)t2) = 1;
    t3 = (t0 + 4992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 2168U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(45, ng0);

LAB9:    xsi_set_current_line(46, ng0);
    xsi_set_current_line(46, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 3048);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(46, ng0);
    t12 = ((char*)((ng2)));
    t14 = (t0 + 2888);
    t17 = (t0 + 2888);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2888);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 3048);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 3048);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB13:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(48, ng0);

LAB18:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t5 + 4);
    t12 = (t4 + 4);
    t27 = *((unsigned int *)t5);
    t30 = *((unsigned int *)t4);
    t33 = (t27 ^ t30);
    t34 = *((unsigned int *)t11);
    t37 = *((unsigned int *)t12);
    t38 = (t34 ^ t37);
    t39 = (t33 | t38);
    t40 = *((unsigned int *)t11);
    t41 = *((unsigned int *)t12);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB22;

LAB19:    if (t42 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t13) = 1;

LAB22:    t17 = (t13 + 4);
    t45 = *((unsigned int *)t17);
    t46 = (~(t45));
    t47 = *((unsigned int *)t13);
    t48 = (t47 & t46);
    t49 = (t48 != 0);
    if (t49 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB32;

LAB29:    if (t37 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t13) = 1;

LAB32:    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t12) != 0)
        goto LAB35;

LAB36:    t17 = (t15 + 4);
    t45 = *((unsigned int *)t15);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB37;

LAB38:    memcpy(t75, t15, 8);

LAB39:    t103 = (t75 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t75);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB60;

LAB57:    if (t37 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t13) = 1;

LAB60:    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB61;

LAB62:    if (*((unsigned int *)t12) != 0)
        goto LAB63;

LAB64:    t17 = (t15 + 4);
    t45 = *((unsigned int *)t15);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB65;

LAB66:    memcpy(t75, t15, 8);

LAB67:    t103 = (t75 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t75);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB79;

LAB80:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB88;

LAB85:    if (t37 != 0)
        goto LAB87;

LAB86:    *((unsigned int *)t13) = 1;

LAB88:    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t12) != 0)
        goto LAB91;

LAB92:    t17 = (t15 + 4);
    t45 = *((unsigned int *)t15);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB93;

LAB94:    memcpy(t75, t15, 8);

LAB95:    t103 = (t75 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t75);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB107;

LAB108:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB116;

LAB113:    if (t37 != 0)
        goto LAB115;

LAB114:    *((unsigned int *)t13) = 1;

LAB116:    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB117;

LAB118:    if (*((unsigned int *)t12) != 0)
        goto LAB119;

LAB120:    t17 = (t15 + 4);
    t45 = *((unsigned int *)t15);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB121;

LAB122:    memcpy(t75, t15, 8);

LAB123:    t103 = (t75 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t75);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB135;

LAB136:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB144;

LAB141:    if (t37 != 0)
        goto LAB143;

LAB142:    *((unsigned int *)t13) = 1;

LAB144:    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB145;

LAB146:    if (*((unsigned int *)t12) != 0)
        goto LAB147;

LAB148:    t17 = (t15 + 4);
    t45 = *((unsigned int *)t15);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB149;

LAB150:    memcpy(t75, t15, 8);

LAB151:    t103 = (t75 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t75);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB163;

LAB164:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB172;

LAB169:    if (t37 != 0)
        goto LAB171;

LAB170:    *((unsigned int *)t13) = 1;

LAB172:    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB173;

LAB174:    if (*((unsigned int *)t12) != 0)
        goto LAB175;

LAB176:    t17 = (t15 + 4);
    t45 = *((unsigned int *)t15);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB177;

LAB178:    memcpy(t75, t15, 8);

LAB179:    t103 = (t75 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t75);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB191;

LAB192:
LAB193:
LAB165:
LAB137:
LAB109:
LAB81:
LAB53:
LAB25:    goto LAB17;

LAB21:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(50, ng0);

LAB26:    xsi_set_current_line(51, ng0);
    t18 = (t0 + 1208U);
    t19 = *((char **)t18);
    t18 = (t0 + 2888);
    t20 = (t0 + 2888);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t0 + 2888);
    t24 = (t23 + 64U);
    t25 = *((char **)t24);
    t26 = (t0 + 2328U);
    t29 = *((char **)t26);
    xsi_vlog_generic_convert_array_indices(t15, t16, t22, t25, 2, 1, t29, 12, 2);
    t26 = (t15 + 4);
    t50 = *((unsigned int *)t26);
    t28 = (!(t50));
    t51 = (t16 + 4);
    t52 = *((unsigned int *)t51);
    t31 = (!(t52));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(52, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 1208U);
    t11 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t11, 32);
    goto LAB25;

LAB27:    t53 = *((unsigned int *)t15);
    t54 = *((unsigned int *)t16);
    t35 = (t53 - t54);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t18, t19, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB28;

LAB31:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB32;

LAB33:    *((unsigned int *)t15) = 1;
    goto LAB36;

LAB35:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB36;

LAB37:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t48 = *((unsigned int *)t19);
    t49 = (t48 >> 1);
    t50 = (t49 & 1);
    *((unsigned int *)t16) = t50;
    t52 = *((unsigned int *)t20);
    t53 = (t52 >> 1);
    t54 = (t53 & 1);
    *((unsigned int *)t18) = t54;
    t21 = ((char*)((ng6)));
    memset(t56, 0, 8);
    t22 = (t16 + 4);
    t23 = (t21 + 4);
    t57 = *((unsigned int *)t16);
    t58 = *((unsigned int *)t21);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t22);
    t61 = *((unsigned int *)t23);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t23);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB43;

LAB40:    if (t66 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t56) = 1;

LAB43:    memset(t69, 0, 8);
    t25 = (t56 + 4);
    t70 = *((unsigned int *)t25);
    t71 = (~(t70));
    t72 = *((unsigned int *)t56);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t25) != 0)
        goto LAB46;

LAB47:    t76 = *((unsigned int *)t15);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t29 = (t15 + 4);
    t51 = (t69 + 4);
    t79 = (t75 + 4);
    t80 = *((unsigned int *)t29);
    t81 = *((unsigned int *)t51);
    t82 = (t80 | t81);
    *((unsigned int *)t79) = t82;
    t83 = *((unsigned int *)t79);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB39;

LAB42:    t24 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t69) = 1;
    goto LAB47;

LAB46:    t26 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB47;

LAB48:    t85 = *((unsigned int *)t75);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t75) = (t85 | t86);
    t87 = (t15 + 4);
    t88 = (t69 + 4);
    t89 = *((unsigned int *)t15);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t69);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t28 = (t90 & t92);
    t31 = (t94 & t96);
    t97 = (~(t28));
    t98 = (~(t31));
    t99 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t99 & t97);
    t100 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t100 & t98);
    t101 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t101 & t97);
    t102 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t102 & t98);
    goto LAB50;

LAB51:    xsi_set_current_line(54, ng0);

LAB54:    xsi_set_current_line(55, ng0);
    t110 = (t0 + 1208U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 0);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 0);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 65535U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 65535U);
    t119 = (t0 + 2888);
    t122 = (t0 + 2888);
    t123 = (t122 + 72U);
    t124 = *((char **)t123);
    t125 = (t0 + 2888);
    t126 = (t125 + 64U);
    t127 = *((char **)t126);
    t128 = (t0 + 2328U);
    t129 = *((char **)t128);
    xsi_vlog_generic_convert_array_indices(t120, t121, t124, t127, 2, 1, t129, 12, 2);
    t128 = (t0 + 2888);
    t133 = (t128 + 72U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng7)));
    t136 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t130, t131, t132, ((int*)(t134)), 2, t135, 32, 1, t136, 32, 1);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t32 = (!(t138));
    t139 = (t121 + 4);
    t140 = *((unsigned int *)t139);
    t35 = (!(t140));
    t36 = (t32 && t35);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t141);
    t143 = (!(t142));
    t144 = (t36 && t143);
    t145 = (t131 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t144 && t147);
    t149 = (t132 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (!(t150));
    t152 = (t148 && t151);
    if (t152 == 1)
        goto LAB55;

LAB56:    xsi_set_current_line(56, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 2888);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t14 = (t0 + 2888);
    t17 = (t14 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2328U);
    t23 = *((char **)t22);
    xsi_vlog_generic_get_array_select_value(t15, 32, t12, t18, t21, 2, 1, t23, 12, 2);
    memset(t16, 0, 8);
    t22 = (t16 + 4);
    t24 = (t15 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (t6 >> 0);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t24);
    t9 = (t8 >> 0);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 65535U);
    t27 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t27 & 65535U);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    memset(t56, 0, 8);
    t25 = (t56 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 0);
    *((unsigned int *)t56) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 0);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t38 & 65535U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 65535U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t56, 16, t16, 16);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t13, 32);
    goto LAB53;

LAB55:    t153 = *((unsigned int *)t132);
    t154 = (t153 + 0);
    t155 = *((unsigned int *)t121);
    t156 = *((unsigned int *)t131);
    t157 = (t155 + t156);
    t158 = *((unsigned int *)t130);
    t159 = *((unsigned int *)t131);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t119, t109, t154, t157, t161, 0LL);
    goto LAB56;

LAB59:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB60;

LAB61:    *((unsigned int *)t15) = 1;
    goto LAB64;

LAB63:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB64;

LAB65:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t48 = *((unsigned int *)t19);
    t49 = (t48 >> 1);
    t50 = (t49 & 1);
    *((unsigned int *)t16) = t50;
    t52 = *((unsigned int *)t20);
    t53 = (t52 >> 1);
    t54 = (t53 & 1);
    *((unsigned int *)t18) = t54;
    t21 = ((char*)((ng1)));
    memset(t56, 0, 8);
    t22 = (t16 + 4);
    t23 = (t21 + 4);
    t57 = *((unsigned int *)t16);
    t58 = *((unsigned int *)t21);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t22);
    t61 = *((unsigned int *)t23);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t23);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB71;

LAB68:    if (t66 != 0)
        goto LAB70;

LAB69:    *((unsigned int *)t56) = 1;

LAB71:    memset(t69, 0, 8);
    t25 = (t56 + 4);
    t70 = *((unsigned int *)t25);
    t71 = (~(t70));
    t72 = *((unsigned int *)t56);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t25) != 0)
        goto LAB74;

LAB75:    t76 = *((unsigned int *)t15);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t29 = (t15 + 4);
    t51 = (t69 + 4);
    t79 = (t75 + 4);
    t80 = *((unsigned int *)t29);
    t81 = *((unsigned int *)t51);
    t82 = (t80 | t81);
    *((unsigned int *)t79) = t82;
    t83 = *((unsigned int *)t79);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB76;

LAB77:
LAB78:    goto LAB67;

LAB70:    t24 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB71;

LAB72:    *((unsigned int *)t69) = 1;
    goto LAB75;

LAB74:    t26 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB75;

LAB76:    t85 = *((unsigned int *)t75);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t75) = (t85 | t86);
    t87 = (t15 + 4);
    t88 = (t69 + 4);
    t89 = *((unsigned int *)t15);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t69);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t28 = (t90 & t92);
    t31 = (t94 & t96);
    t97 = (~(t28));
    t98 = (~(t31));
    t99 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t99 & t97);
    t100 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t100 & t98);
    t101 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t101 & t97);
    t102 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t102 & t98);
    goto LAB78;

LAB79:    xsi_set_current_line(58, ng0);

LAB82:    xsi_set_current_line(59, ng0);
    t110 = (t0 + 1208U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 0);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 0);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 65535U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 65535U);
    t119 = (t0 + 2888);
    t122 = (t0 + 2888);
    t123 = (t122 + 72U);
    t124 = *((char **)t123);
    t125 = (t0 + 2888);
    t126 = (t125 + 64U);
    t127 = *((char **)t126);
    t128 = (t0 + 2328U);
    t129 = *((char **)t128);
    xsi_vlog_generic_convert_array_indices(t120, t121, t124, t127, 2, 1, t129, 12, 2);
    t128 = (t0 + 2888);
    t133 = (t128 + 72U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng9)));
    t136 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t130, t131, t132, ((int*)(t134)), 2, t135, 32, 1, t136, 32, 1);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t32 = (!(t138));
    t139 = (t121 + 4);
    t140 = *((unsigned int *)t139);
    t35 = (!(t140));
    t36 = (t32 && t35);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t141);
    t143 = (!(t142));
    t144 = (t36 && t143);
    t145 = (t131 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t144 && t147);
    t149 = (t132 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (!(t150));
    t152 = (t148 && t151);
    if (t152 == 1)
        goto LAB83;

LAB84:    xsi_set_current_line(60, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 1208U);
    t11 = *((char **)t3);
    memset(t15, 0, 8);
    t3 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 65535U);
    t27 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t27 & 65535U);
    t14 = (t0 + 2888);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2888);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 2328U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t18, t21, t24, 2, 1, t26, 12, 2);
    memset(t56, 0, 8);
    t25 = (t56 + 4);
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t16);
    t33 = (t30 >> 16);
    *((unsigned int *)t56) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 16);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t38 & 65535U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 65535U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t56, 16, t15, 16);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t13, 32);
    goto LAB81;

LAB83:    t153 = *((unsigned int *)t132);
    t154 = (t153 + 0);
    t155 = *((unsigned int *)t121);
    t156 = *((unsigned int *)t131);
    t157 = (t155 + t156);
    t158 = *((unsigned int *)t130);
    t159 = *((unsigned int *)t131);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t119, t109, t154, t157, t161, 0LL);
    goto LAB84;

LAB87:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB88;

LAB89:    *((unsigned int *)t15) = 1;
    goto LAB92;

LAB91:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB92;

LAB93:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t48 = *((unsigned int *)t19);
    t49 = (t48 >> 0);
    *((unsigned int *)t16) = t49;
    t50 = *((unsigned int *)t20);
    t52 = (t50 >> 0);
    *((unsigned int *)t18) = t52;
    t53 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t53 & 3U);
    t54 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t54 & 3U);
    t21 = ((char*)((ng1)));
    memset(t56, 0, 8);
    t22 = (t16 + 4);
    t23 = (t21 + 4);
    t57 = *((unsigned int *)t16);
    t58 = *((unsigned int *)t21);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t22);
    t61 = *((unsigned int *)t23);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t23);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB99;

LAB96:    if (t66 != 0)
        goto LAB98;

LAB97:    *((unsigned int *)t56) = 1;

LAB99:    memset(t69, 0, 8);
    t25 = (t56 + 4);
    t70 = *((unsigned int *)t25);
    t71 = (~(t70));
    t72 = *((unsigned int *)t56);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB100;

LAB101:    if (*((unsigned int *)t25) != 0)
        goto LAB102;

LAB103:    t76 = *((unsigned int *)t15);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t29 = (t15 + 4);
    t51 = (t69 + 4);
    t79 = (t75 + 4);
    t80 = *((unsigned int *)t29);
    t81 = *((unsigned int *)t51);
    t82 = (t80 | t81);
    *((unsigned int *)t79) = t82;
    t83 = *((unsigned int *)t79);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB104;

LAB105:
LAB106:    goto LAB95;

LAB98:    t24 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB99;

LAB100:    *((unsigned int *)t69) = 1;
    goto LAB103;

LAB102:    t26 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB103;

LAB104:    t85 = *((unsigned int *)t75);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t75) = (t85 | t86);
    t87 = (t15 + 4);
    t88 = (t69 + 4);
    t89 = *((unsigned int *)t15);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t69);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t28 = (t90 & t92);
    t31 = (t94 & t96);
    t97 = (~(t28));
    t98 = (~(t31));
    t99 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t99 & t97);
    t100 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t100 & t98);
    t101 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t101 & t97);
    t102 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t102 & t98);
    goto LAB106;

LAB107:    xsi_set_current_line(62, ng0);

LAB110:    xsi_set_current_line(63, ng0);
    t110 = (t0 + 1208U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 0);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 0);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 255U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 255U);
    t119 = (t0 + 2888);
    t122 = (t0 + 2888);
    t123 = (t122 + 72U);
    t124 = *((char **)t123);
    t125 = (t0 + 2888);
    t126 = (t125 + 64U);
    t127 = *((char **)t126);
    t128 = (t0 + 2328U);
    t129 = *((char **)t128);
    xsi_vlog_generic_convert_array_indices(t120, t121, t124, t127, 2, 1, t129, 12, 2);
    t128 = (t0 + 2888);
    t133 = (t128 + 72U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng11)));
    t136 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t130, t131, t132, ((int*)(t134)), 2, t135, 32, 1, t136, 32, 1);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t32 = (!(t138));
    t139 = (t121 + 4);
    t140 = *((unsigned int *)t139);
    t35 = (!(t140));
    t36 = (t32 && t35);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t141);
    t143 = (!(t142));
    t144 = (t36 && t143);
    t145 = (t131 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t144 && t147);
    t149 = (t132 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (!(t150));
    t152 = (t148 && t151);
    if (t152 == 1)
        goto LAB111;

LAB112:    xsi_set_current_line(64, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 1208U);
    t11 = *((char **)t3);
    memset(t15, 0, 8);
    t3 = (t15 + 4);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (t6 >> 0);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 255U);
    t27 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t27 & 255U);
    t14 = (t0 + 2888);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2888);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 2328U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t18, t21, t24, 2, 1, t26, 12, 2);
    memset(t56, 0, 8);
    t25 = (t56 + 4);
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t16);
    t33 = (t30 >> 8);
    *((unsigned int *)t56) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 8);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t38 & 16777215U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 16777215U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t56, 24, t15, 8);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t13, 32);
    goto LAB109;

LAB111:    t153 = *((unsigned int *)t132);
    t154 = (t153 + 0);
    t155 = *((unsigned int *)t121);
    t156 = *((unsigned int *)t131);
    t157 = (t155 + t156);
    t158 = *((unsigned int *)t130);
    t159 = *((unsigned int *)t131);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t119, t109, t154, t157, t161, 0LL);
    goto LAB112;

LAB115:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB116;

LAB117:    *((unsigned int *)t15) = 1;
    goto LAB120;

LAB119:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB120;

LAB121:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t48 = *((unsigned int *)t19);
    t49 = (t48 >> 0);
    *((unsigned int *)t16) = t49;
    t50 = *((unsigned int *)t20);
    t52 = (t50 >> 0);
    *((unsigned int *)t18) = t52;
    t53 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t53 & 3U);
    t54 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t54 & 3U);
    t21 = ((char*)((ng6)));
    memset(t56, 0, 8);
    t22 = (t16 + 4);
    t23 = (t21 + 4);
    t57 = *((unsigned int *)t16);
    t58 = *((unsigned int *)t21);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t22);
    t61 = *((unsigned int *)t23);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t23);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB127;

LAB124:    if (t66 != 0)
        goto LAB126;

LAB125:    *((unsigned int *)t56) = 1;

LAB127:    memset(t69, 0, 8);
    t25 = (t56 + 4);
    t70 = *((unsigned int *)t25);
    t71 = (~(t70));
    t72 = *((unsigned int *)t56);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB128;

LAB129:    if (*((unsigned int *)t25) != 0)
        goto LAB130;

LAB131:    t76 = *((unsigned int *)t15);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t29 = (t15 + 4);
    t51 = (t69 + 4);
    t79 = (t75 + 4);
    t80 = *((unsigned int *)t29);
    t81 = *((unsigned int *)t51);
    t82 = (t80 | t81);
    *((unsigned int *)t79) = t82;
    t83 = *((unsigned int *)t79);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB132;

LAB133:
LAB134:    goto LAB123;

LAB126:    t24 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB127;

LAB128:    *((unsigned int *)t69) = 1;
    goto LAB131;

LAB130:    t26 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB131;

LAB132:    t85 = *((unsigned int *)t75);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t75) = (t85 | t86);
    t87 = (t15 + 4);
    t88 = (t69 + 4);
    t89 = *((unsigned int *)t15);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t69);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t28 = (t90 & t92);
    t31 = (t94 & t96);
    t97 = (~(t28));
    t98 = (~(t31));
    t99 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t99 & t97);
    t100 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t100 & t98);
    t101 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t101 & t97);
    t102 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t102 & t98);
    goto LAB134;

LAB135:    xsi_set_current_line(66, ng0);

LAB138:    xsi_set_current_line(67, ng0);
    t110 = (t0 + 1208U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 0);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 0);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 255U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 255U);
    t119 = (t0 + 2888);
    t122 = (t0 + 2888);
    t123 = (t122 + 72U);
    t124 = *((char **)t123);
    t125 = (t0 + 2888);
    t126 = (t125 + 64U);
    t127 = *((char **)t126);
    t128 = (t0 + 2328U);
    t129 = *((char **)t128);
    xsi_vlog_generic_convert_array_indices(t120, t121, t124, t127, 2, 1, t129, 12, 2);
    t128 = (t0 + 2888);
    t133 = (t128 + 72U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng9)));
    t136 = ((char*)((ng12)));
    xsi_vlog_convert_partindices(t130, t131, t132, ((int*)(t134)), 2, t135, 32, 1, t136, 32, 1);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t32 = (!(t138));
    t139 = (t121 + 4);
    t140 = *((unsigned int *)t139);
    t35 = (!(t140));
    t36 = (t32 && t35);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t141);
    t143 = (!(t142));
    t144 = (t36 && t143);
    t145 = (t131 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t144 && t147);
    t149 = (t132 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (!(t150));
    t152 = (t148 && t151);
    if (t152 == 1)
        goto LAB139;

LAB140:    xsi_set_current_line(68, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 2888);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t14 = (t0 + 2888);
    t17 = (t14 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2328U);
    t23 = *((char **)t22);
    xsi_vlog_generic_get_array_select_value(t15, 32, t12, t18, t21, 2, 1, t23, 12, 2);
    memset(t16, 0, 8);
    t22 = (t16 + 4);
    t24 = (t15 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (t6 >> 0);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t24);
    t9 = (t8 >> 0);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 255U);
    t27 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t27 & 255U);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    memset(t56, 0, 8);
    t25 = (t56 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 0);
    *((unsigned int *)t56) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 0);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t38 & 255U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 255U);
    t51 = (t0 + 2888);
    t79 = (t51 + 56U);
    t87 = *((char **)t79);
    t88 = (t0 + 2888);
    t103 = (t88 + 72U);
    t110 = *((char **)t103);
    t111 = (t0 + 2888);
    t112 = (t111 + 64U);
    t119 = *((char **)t112);
    t122 = (t0 + 2328U);
    t123 = *((char **)t122);
    xsi_vlog_generic_get_array_select_value(t69, 32, t87, t110, t119, 2, 1, t123, 12, 2);
    memset(t75, 0, 8);
    t122 = (t75 + 4);
    t124 = (t69 + 4);
    t40 = *((unsigned int *)t69);
    t41 = (t40 >> 16);
    *((unsigned int *)t75) = t41;
    t42 = *((unsigned int *)t124);
    t43 = (t42 >> 16);
    *((unsigned int *)t122) = t43;
    t44 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t44 & 65535U);
    t45 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t45 & 65535U);
    xsi_vlogtype_concat(t13, 32, 32, 3U, t75, 16, t56, 8, t16, 8);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t13, 32);
    goto LAB137;

LAB139:    t153 = *((unsigned int *)t132);
    t154 = (t153 + 0);
    t155 = *((unsigned int *)t121);
    t156 = *((unsigned int *)t131);
    t157 = (t155 + t156);
    t158 = *((unsigned int *)t130);
    t159 = *((unsigned int *)t131);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t119, t109, t154, t157, t161, 0LL);
    goto LAB140;

LAB143:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB144;

LAB145:    *((unsigned int *)t15) = 1;
    goto LAB148;

LAB147:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB148;

LAB149:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t48 = *((unsigned int *)t19);
    t49 = (t48 >> 0);
    *((unsigned int *)t16) = t49;
    t50 = *((unsigned int *)t20);
    t52 = (t50 >> 0);
    *((unsigned int *)t18) = t52;
    t53 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t53 & 3U);
    t54 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t54 & 3U);
    t21 = ((char*)((ng10)));
    memset(t56, 0, 8);
    t22 = (t16 + 4);
    t23 = (t21 + 4);
    t57 = *((unsigned int *)t16);
    t58 = *((unsigned int *)t21);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t22);
    t61 = *((unsigned int *)t23);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t23);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB155;

LAB152:    if (t66 != 0)
        goto LAB154;

LAB153:    *((unsigned int *)t56) = 1;

LAB155:    memset(t69, 0, 8);
    t25 = (t56 + 4);
    t70 = *((unsigned int *)t25);
    t71 = (~(t70));
    t72 = *((unsigned int *)t56);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB156;

LAB157:    if (*((unsigned int *)t25) != 0)
        goto LAB158;

LAB159:    t76 = *((unsigned int *)t15);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t29 = (t15 + 4);
    t51 = (t69 + 4);
    t79 = (t75 + 4);
    t80 = *((unsigned int *)t29);
    t81 = *((unsigned int *)t51);
    t82 = (t80 | t81);
    *((unsigned int *)t79) = t82;
    t83 = *((unsigned int *)t79);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB160;

LAB161:
LAB162:    goto LAB151;

LAB154:    t24 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB155;

LAB156:    *((unsigned int *)t69) = 1;
    goto LAB159;

LAB158:    t26 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB159;

LAB160:    t85 = *((unsigned int *)t75);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t75) = (t85 | t86);
    t87 = (t15 + 4);
    t88 = (t69 + 4);
    t89 = *((unsigned int *)t15);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t69);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t28 = (t90 & t92);
    t31 = (t94 & t96);
    t97 = (~(t28));
    t98 = (~(t31));
    t99 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t99 & t97);
    t100 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t100 & t98);
    t101 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t101 & t97);
    t102 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t102 & t98);
    goto LAB162;

LAB163:    xsi_set_current_line(70, ng0);

LAB166:    xsi_set_current_line(71, ng0);
    t110 = (t0 + 1208U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 0);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 0);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 255U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 255U);
    t119 = (t0 + 2888);
    t122 = (t0 + 2888);
    t123 = (t122 + 72U);
    t124 = *((char **)t123);
    t125 = (t0 + 2888);
    t126 = (t125 + 64U);
    t127 = *((char **)t126);
    t128 = (t0 + 2328U);
    t129 = *((char **)t128);
    xsi_vlog_generic_convert_array_indices(t120, t121, t124, t127, 2, 1, t129, 12, 2);
    t128 = (t0 + 2888);
    t133 = (t128 + 72U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng13)));
    t136 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t130, t131, t132, ((int*)(t134)), 2, t135, 32, 1, t136, 32, 1);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t32 = (!(t138));
    t139 = (t121 + 4);
    t140 = *((unsigned int *)t139);
    t35 = (!(t140));
    t36 = (t32 && t35);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t141);
    t143 = (!(t142));
    t144 = (t36 && t143);
    t145 = (t131 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t144 && t147);
    t149 = (t132 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (!(t150));
    t152 = (t148 && t151);
    if (t152 == 1)
        goto LAB167;

LAB168:    xsi_set_current_line(72, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 2888);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t14 = (t0 + 2888);
    t17 = (t14 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2328U);
    t23 = *((char **)t22);
    xsi_vlog_generic_get_array_select_value(t15, 32, t12, t18, t21, 2, 1, t23, 12, 2);
    memset(t16, 0, 8);
    t22 = (t16 + 4);
    t24 = (t15 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (t6 >> 0);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t24);
    t9 = (t8 >> 0);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 65535U);
    t27 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t27 & 65535U);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    memset(t56, 0, 8);
    t25 = (t56 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 0);
    *((unsigned int *)t56) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 0);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t38 & 255U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 255U);
    t51 = (t0 + 2888);
    t79 = (t51 + 56U);
    t87 = *((char **)t79);
    t88 = (t0 + 2888);
    t103 = (t88 + 72U);
    t110 = *((char **)t103);
    t111 = (t0 + 2888);
    t112 = (t111 + 64U);
    t119 = *((char **)t112);
    t122 = (t0 + 2328U);
    t123 = *((char **)t122);
    xsi_vlog_generic_get_array_select_value(t69, 32, t87, t110, t119, 2, 1, t123, 12, 2);
    memset(t75, 0, 8);
    t122 = (t75 + 4);
    t124 = (t69 + 4);
    t40 = *((unsigned int *)t69);
    t41 = (t40 >> 24);
    *((unsigned int *)t75) = t41;
    t42 = *((unsigned int *)t124);
    t43 = (t42 >> 24);
    *((unsigned int *)t122) = t43;
    t44 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t44 & 255U);
    t45 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t45 & 255U);
    xsi_vlogtype_concat(t13, 32, 32, 3U, t75, 8, t56, 8, t16, 16);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t13, 32);
    goto LAB165;

LAB167:    t153 = *((unsigned int *)t132);
    t154 = (t153 + 0);
    t155 = *((unsigned int *)t121);
    t156 = *((unsigned int *)t131);
    t157 = (t155 + t156);
    t158 = *((unsigned int *)t130);
    t159 = *((unsigned int *)t131);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t119, t109, t154, t157, t161, 0LL);
    goto LAB168;

LAB171:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB172;

LAB173:    *((unsigned int *)t15) = 1;
    goto LAB176;

LAB175:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB176;

LAB177:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t16, 0, 8);
    t18 = (t16 + 4);
    t20 = (t19 + 4);
    t48 = *((unsigned int *)t19);
    t49 = (t48 >> 0);
    *((unsigned int *)t16) = t49;
    t50 = *((unsigned int *)t20);
    t52 = (t50 >> 0);
    *((unsigned int *)t18) = t52;
    t53 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t53 & 3U);
    t54 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t54 & 3U);
    t21 = ((char*)((ng14)));
    memset(t56, 0, 8);
    t22 = (t16 + 4);
    t23 = (t21 + 4);
    t57 = *((unsigned int *)t16);
    t58 = *((unsigned int *)t21);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t22);
    t61 = *((unsigned int *)t23);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t23);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB183;

LAB180:    if (t66 != 0)
        goto LAB182;

LAB181:    *((unsigned int *)t56) = 1;

LAB183:    memset(t69, 0, 8);
    t25 = (t56 + 4);
    t70 = *((unsigned int *)t25);
    t71 = (~(t70));
    t72 = *((unsigned int *)t56);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB184;

LAB185:    if (*((unsigned int *)t25) != 0)
        goto LAB186;

LAB187:    t76 = *((unsigned int *)t15);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t29 = (t15 + 4);
    t51 = (t69 + 4);
    t79 = (t75 + 4);
    t80 = *((unsigned int *)t29);
    t81 = *((unsigned int *)t51);
    t82 = (t80 | t81);
    *((unsigned int *)t79) = t82;
    t83 = *((unsigned int *)t79);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB188;

LAB189:
LAB190:    goto LAB179;

LAB182:    t24 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB183;

LAB184:    *((unsigned int *)t69) = 1;
    goto LAB187;

LAB186:    t26 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB187;

LAB188:    t85 = *((unsigned int *)t75);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t75) = (t85 | t86);
    t87 = (t15 + 4);
    t88 = (t69 + 4);
    t89 = *((unsigned int *)t15);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t69);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t28 = (t90 & t92);
    t31 = (t94 & t96);
    t97 = (~(t28));
    t98 = (~(t31));
    t99 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t99 & t97);
    t100 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t100 & t98);
    t101 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t101 & t97);
    t102 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t102 & t98);
    goto LAB190;

LAB191:    xsi_set_current_line(74, ng0);

LAB194:    xsi_set_current_line(75, ng0);
    t110 = (t0 + 1208U);
    t111 = *((char **)t110);
    memset(t109, 0, 8);
    t110 = (t109 + 4);
    t112 = (t111 + 4);
    t113 = *((unsigned int *)t111);
    t114 = (t113 >> 0);
    *((unsigned int *)t109) = t114;
    t115 = *((unsigned int *)t112);
    t116 = (t115 >> 0);
    *((unsigned int *)t110) = t116;
    t117 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t117 & 255U);
    t118 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t118 & 255U);
    t119 = (t0 + 2888);
    t122 = (t0 + 2888);
    t123 = (t122 + 72U);
    t124 = *((char **)t123);
    t125 = (t0 + 2888);
    t126 = (t125 + 64U);
    t127 = *((char **)t126);
    t128 = (t0 + 2328U);
    t129 = *((char **)t128);
    xsi_vlog_generic_convert_array_indices(t120, t121, t124, t127, 2, 1, t129, 12, 2);
    t128 = (t0 + 2888);
    t133 = (t128 + 72U);
    t134 = *((char **)t133);
    t135 = ((char*)((ng7)));
    t136 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t130, t131, t132, ((int*)(t134)), 2, t135, 32, 1, t136, 32, 1);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t32 = (!(t138));
    t139 = (t121 + 4);
    t140 = *((unsigned int *)t139);
    t35 = (!(t140));
    t36 = (t32 && t35);
    t141 = (t130 + 4);
    t142 = *((unsigned int *)t141);
    t143 = (!(t142));
    t144 = (t36 && t143);
    t145 = (t131 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t144 && t147);
    t149 = (t132 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (!(t150));
    t152 = (t148 && t151);
    if (t152 == 1)
        goto LAB195;

LAB196:    xsi_set_current_line(76, ng0);
    t2 = xsi_vlog_time(t55, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2488U);
    t5 = *((char **)t3);
    t3 = (t0 + 2888);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t14 = (t0 + 2888);
    t17 = (t14 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2888);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2328U);
    t23 = *((char **)t22);
    xsi_vlog_generic_get_array_select_value(t15, 32, t12, t18, t21, 2, 1, t23, 12, 2);
    memset(t16, 0, 8);
    t22 = (t16 + 4);
    t24 = (t15 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (t6 >> 0);
    *((unsigned int *)t16) = t7;
    t8 = *((unsigned int *)t24);
    t9 = (t8 >> 0);
    *((unsigned int *)t22) = t9;
    t10 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t10 & 16777215U);
    t27 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t27 & 16777215U);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    memset(t56, 0, 8);
    t25 = (t56 + 4);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t26);
    t33 = (t30 >> 0);
    *((unsigned int *)t56) = t33;
    t34 = *((unsigned int *)t29);
    t37 = (t34 >> 0);
    *((unsigned int *)t25) = t37;
    t38 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t38 & 255U);
    t39 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t39 & 255U);
    xsi_vlogtype_concat(t13, 32, 32, 2U, t56, 8, t16, 24);
    xsi_vlogfile_write(1, 0, 0, ng5, 5, t0, (char)118, t55, 64, (char)118, t4, 32, (char)118, t5, 32, (char)118, t13, 32);
    goto LAB193;

LAB195:    t153 = *((unsigned int *)t132);
    t154 = (t153 + 0);
    t155 = *((unsigned int *)t121);
    t156 = *((unsigned int *)t131);
    t157 = (t155 + t156);
    t158 = *((unsigned int *)t130);
    t159 = *((unsigned int *)t131);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t119, t109, t154, t157, t161, 0LL);
    goto LAB196;

}


extern void work_m_00000000003345478820_3258266500_init()
{
	static char *pe[] = {(void *)Cont_36_0,(void *)Cont_37_1,(void *)Cont_38_2,(void *)Initial_40_3,(void *)Always_44_4};
	xsi_register_didat("work_m_00000000003345478820_3258266500", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000003345478820_3258266500.didat");
	xsi_register_executes(pe);
}
