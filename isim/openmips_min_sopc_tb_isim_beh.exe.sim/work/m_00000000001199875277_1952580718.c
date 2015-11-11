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

/* This file is designed for use with ISim build 0x6dd86d03 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Workspace/ISE/OpenMIPS/code/ex.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {37U, 0U};
static unsigned int ng4[] = {36U, 0U};
static unsigned int ng5[] = {39U, 0U};
static unsigned int ng6[] = {38U, 0U};
static unsigned int ng7[] = {124U, 0U};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {3U, 0U};
static int ng10[] = {32, 0};
static unsigned int ng11[] = {32U, 0U};



static void Always_40_0(char *t0)
{
    char t6[8];
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
    int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;

LAB0:    t1 = (t0 + 2272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2756);
    *((int *)t2) = 1;
    t3 = (t0 + 2300);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 600U);
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

LAB11:    xsi_set_current_line(43, ng0);

LAB14:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB22;

LAB23:
LAB25:
LAB24:    xsi_set_current_line(57, ng0);

LAB45:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB26:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(41, ng0);

LAB13:    xsi_set_current_line(42, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(45, ng0);

LAB27:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB28;

LAB29:
LAB30:    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    goto LAB26;

LAB18:    xsi_set_current_line(48, ng0);

LAB31:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB32;

LAB33:
LAB34:    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    goto LAB26;

LAB20:    xsi_set_current_line(51, ng0);

LAB35:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t40) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t40 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB36;

LAB37:
LAB38:    memset(t6, 0, 8);
    t29 = (t6 + 4);
    t41 = (t40 + 4);
    t36 = *((unsigned int *)t40);
    t37 = (~(t36));
    *((unsigned int *)t6) = t37;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t41) != 0)
        goto LAB40;

LAB39:    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & 4294967295U);
    t45 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t45 & 4294967295U);
    t46 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t46, t6, 0, 0, 32, 0LL);
    goto LAB26;

LAB22:    xsi_set_current_line(54, ng0);

LAB41:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB42;

LAB43:
LAB44:    t22 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t22, t6, 0, 0, 32, 0LL);
    goto LAB26;

LAB28:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t5);
    t31 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t32 = (t26 & t25);
    t27 = (~(t31));
    t33 = (~(t32));
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t27);
    t35 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t35 & t33);
    goto LAB30;

LAB32:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (~(t25));
    t27 = *((unsigned int *)t28);
    t33 = (~(t27));
    t31 = (t20 & t24);
    t32 = (t26 & t33);
    t34 = (~(t31));
    t35 = (~(t32));
    t36 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t36 & t34);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & t35);
    t38 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t38 & t34);
    t39 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t39 & t35);
    goto LAB34;

LAB36:    t17 = *((unsigned int *)t40);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t40) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t5);
    t31 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t32 = (t26 & t25);
    t27 = (~(t31));
    t33 = (~(t32));
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t27);
    t35 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t35 & t33);
    goto LAB38;

LAB40:    t38 = *((unsigned int *)t6);
    t39 = *((unsigned int *)t41);
    *((unsigned int *)t6) = (t38 | t39);
    t42 = *((unsigned int *)t29);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t29) = (t42 | t43);
    goto LAB39;

LAB42:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    goto LAB44;

}

static void Always_64_1(char *t0)
{
    char t6[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t35[8];
    char t36[8];
    char t39[8];
    char t43[8];
    char t44[8];
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
    int t30;
    char *t34;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;

LAB0:    t1 = (t0 + 2416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2764);
    *((int *)t2) = 1;
    t3 = (t0 + 2444);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 600U);
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

LAB11:    xsi_set_current_line(67, ng0);

LAB14:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(78, ng0);

LAB31:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB24:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);

LAB13:    xsi_set_current_line(66, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(69, ng0);

LAB25:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 968U);
    t5 = *((char **)t4);
    t4 = (t0 + 876U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 31U);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_lshift(t31, 32, t5, 32, t6, 5);
    t21 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t21, t31, 0, 0, 32, 0LL);
    goto LAB24;

LAB18:    xsi_set_current_line(72, ng0);

LAB26:    xsi_set_current_line(73, ng0);
    t4 = (t0 + 968U);
    t5 = *((char **)t4);
    t4 = (t0 + 876U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 31U);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_rshift(t31, 32, t5, 32, t6, 5);
    t21 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t21, t31, 0, 0, 32, 0LL);
    goto LAB24;

LAB20:    xsi_set_current_line(75, ng0);

LAB27:    xsi_set_current_line(76, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t0 + 968U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t31) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t5) = t14;
    xsi_vlog_mul_concat(t6, 32, 1, t4, 1U, t31, 1);
    t21 = ((char*)((ng11)));
    t22 = (t0 + 876U);
    t28 = *((char **)t22);
    memset(t33, 0, 8);
    t22 = (t33 + 4);
    t29 = (t28 + 4);
    t15 = *((unsigned int *)t28);
    t16 = (t15 >> 0);
    *((unsigned int *)t33) = t16;
    t17 = *((unsigned int *)t29);
    t18 = (t17 >> 0);
    *((unsigned int *)t22) = t18;
    t19 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t19 & 31U);
    t20 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t20 & 31U);
    t34 = ((char*)((ng2)));
    xsi_vlogtype_concat(t32, 6, 6, 2U, t34, 1, t33, 5);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_minus(t35, 6, t21, 6, t32, 6);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_lshift(t36, 32, t6, 32, t35, 6);
    t37 = (t0 + 968U);
    t38 = *((char **)t37);
    t37 = (t0 + 876U);
    t40 = *((char **)t37);
    memset(t39, 0, 8);
    t37 = (t39 + 4);
    t41 = (t40 + 4);
    t23 = *((unsigned int *)t40);
    t24 = (t23 >> 0);
    *((unsigned int *)t39) = t24;
    t25 = *((unsigned int *)t41);
    t26 = (t25 >> 0);
    *((unsigned int *)t37) = t26;
    t27 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t27 & 31U);
    t42 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t42 & 31U);
    memset(t43, 0, 8);
    xsi_vlog_unsigned_rshift(t43, 32, t38, 32, t39, 5);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t43);
    t47 = (t45 | t46);
    *((unsigned int *)t44) = t47;
    t48 = (t36 + 4);
    t49 = (t43 + 4);
    t50 = (t44 + 4);
    t51 = *((unsigned int *)t48);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB28;

LAB29:
LAB30:    t72 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t72, t44, 0, 0, 32, 0LL);
    goto LAB24;

LAB28:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t44) = (t56 | t57);
    t58 = (t36 + 4);
    t59 = (t43 + 4);
    t60 = *((unsigned int *)t58);
    t61 = (~(t60));
    t62 = *((unsigned int *)t36);
    t63 = (t62 & t61);
    t64 = *((unsigned int *)t59);
    t65 = (~(t64));
    t66 = *((unsigned int *)t43);
    t67 = (t66 & t65);
    t68 = (~(t63));
    t69 = (~(t67));
    t70 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t70 & t68);
    t71 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t71 & t69);
    goto LAB30;

}

static void Always_85_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2772);
    *((int *)t2) = 1;
    t3 = (t0 + 2588);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);

LAB5:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 1060U);
    t5 = *((char **)t4);
    t4 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(95, ng0);

LAB16:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(89, ng0);

LAB14:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 1656);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB13;

LAB9:    xsi_set_current_line(92, ng0);

LAB15:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 1748);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB13;

}


extern void work_m_00000000001199875277_1952580718_init()
{
	static char *pe[] = {(void *)Always_40_0,(void *)Always_64_1,(void *)Always_85_2};
	xsi_register_didat("work_m_00000000001199875277_1952580718", "isim/openmips_min_sopc_tb_isim_beh.exe.sim/work/m_00000000001199875277_1952580718.didat");
	xsi_register_executes(pe);
}
