.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel __osEPiRawReadIo
/* 47280 8006BE80 3C02A460 */  lui       $v0, (0xA4600010 >> 16)
/* 47284 8006BE84 34420010 */  ori       $v0, $v0, (0xA4600010 & 0xFFFF)
/* 47288 8006BE88 8C420000 */  lw        $v0, 0x0($v0)
/* 4728C 8006BE8C 30420003 */  andi      $v0, $v0, 0x3
/* 47290 8006BE90 10400007 */  beqz      $v0, .LIQUE_8006BEB0
/* 47294 8006BE94 00804021 */   addu     $t0, $a0, $zero
/* 47298 8006BE98 3C03A460 */  lui       $v1, (0xA4600010 >> 16)
/* 4729C 8006BE9C 34630010 */  ori       $v1, $v1, (0xA4600010 & 0xFFFF)
.LIQUE_8006BEA0:
/* 472A0 8006BEA0 8C620000 */  lw        $v0, 0x0($v1)
/* 472A4 8006BEA4 30420003 */  andi      $v0, $v0, 0x3
/* 472A8 8006BEA8 1440FFFD */  bnez      $v0, .LIQUE_8006BEA0
/* 472AC 8006BEAC 00000000 */   nop
.LIQUE_8006BEB0:
/* 472B0 8006BEB0 91090009 */  lbu       $t1, 0x9($t0)
/* 472B4 8006BEB4 00091080 */  sll       $v0, $t1, 2
/* 472B8 8006BEB8 3C078009 */  lui       $a3, %hi(__osCurrentHandle)
/* 472BC 8006BEBC 00E23821 */  addu      $a3, $a3, $v0
/* 472C0 8006BEC0 8CE74540 */  lw        $a3, %lo(__osCurrentHandle)($a3)
/* 472C4 8006BEC4 91030004 */  lbu       $v1, 0x4($t0)
/* 472C8 8006BEC8 90E40004 */  lbu       $a0, 0x4($a3)
/* 472CC 8006BECC 50830044 */  beql      $a0, $v1, .LIQUE_8006BFE0
/* 472D0 8006BED0 8D02000C */   lw       $v0, 0xC($t0)
/* 472D4 8006BED4 1520001C */  bnez      $t1, .LIQUE_8006BF48
/* 472D8 8006BED8 90E30005 */   lbu      $v1, 0x5($a3)
/* 472DC 8006BEDC 91020005 */  lbu       $v0, 0x5($t0)
/* 472E0 8006BEE0 10620004 */  beq       $v1, $v0, .LIQUE_8006BEF4
/* 472E4 8006BEE4 3C02A460 */   lui      $v0, (0xA4600014 >> 16)
/* 472E8 8006BEE8 91030005 */  lbu       $v1, 0x5($t0)
/* 472EC 8006BEEC 34420014 */  ori       $v0, $v0, (0xA4600014 & 0xFFFF)
/* 472F0 8006BEF0 AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BEF4:
/* 472F4 8006BEF4 90E30006 */  lbu       $v1, 0x6($a3)
/* 472F8 8006BEF8 91020006 */  lbu       $v0, 0x6($t0)
/* 472FC 8006BEFC 10620004 */  beq       $v1, $v0, .LIQUE_8006BF10
/* 47300 8006BF00 3C02A460 */   lui      $v0, (0xA460001C >> 16)
/* 47304 8006BF04 91030006 */  lbu       $v1, 0x6($t0)
/* 47308 8006BF08 3442001C */  ori       $v0, $v0, (0xA460001C & 0xFFFF)
/* 4730C 8006BF0C AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BF10:
/* 47310 8006BF10 90E30007 */  lbu       $v1, 0x7($a3)
/* 47314 8006BF14 91020007 */  lbu       $v0, 0x7($t0)
/* 47318 8006BF18 10620004 */  beq       $v1, $v0, .LIQUE_8006BF2C
/* 4731C 8006BF1C 3C02A460 */   lui      $v0, (0xA4600020 >> 16)
/* 47320 8006BF20 91030007 */  lbu       $v1, 0x7($t0)
/* 47324 8006BF24 34420020 */  ori       $v0, $v0, (0xA4600020 & 0xFFFF)
/* 47328 8006BF28 AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BF2C:
/* 4732C 8006BF2C 90E30008 */  lbu       $v1, 0x8($a3)
/* 47330 8006BF30 91020008 */  lbu       $v0, 0x8($t0)
/* 47334 8006BF34 1062001F */  beq       $v1, $v0, .LIQUE_8006BFB4
/* 47338 8006BF38 3C02A460 */   lui      $v0, (0xA4600018 >> 16)
/* 4733C 8006BF3C 91030008 */  lbu       $v1, 0x8($t0)
/* 47340 8006BF40 0801AFEC */  j         .LIQUE_8006BFB0
/* 47344 8006BF44 34420018 */   ori      $v0, $v0, (0xA4600018 & 0xFFFF)
.LIQUE_8006BF48:
/* 47348 8006BF48 91020005 */  lbu       $v0, 0x5($t0)
/* 4734C 8006BF4C 10620004 */  beq       $v1, $v0, .LIQUE_8006BF60
/* 47350 8006BF50 3C02A460 */   lui      $v0, (0xA4600024 >> 16)
/* 47354 8006BF54 91030005 */  lbu       $v1, 0x5($t0)
/* 47358 8006BF58 34420024 */  ori       $v0, $v0, (0xA4600024 & 0xFFFF)
/* 4735C 8006BF5C AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BF60:
/* 47360 8006BF60 90E30006 */  lbu       $v1, 0x6($a3)
/* 47364 8006BF64 91020006 */  lbu       $v0, 0x6($t0)
/* 47368 8006BF68 10620004 */  beq       $v1, $v0, .LIQUE_8006BF7C
/* 4736C 8006BF6C 3C02A460 */   lui      $v0, (0xA460002C >> 16)
/* 47370 8006BF70 91030006 */  lbu       $v1, 0x6($t0)
/* 47374 8006BF74 3442002C */  ori       $v0, $v0, (0xA460002C & 0xFFFF)
/* 47378 8006BF78 AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BF7C:
/* 4737C 8006BF7C 90E30007 */  lbu       $v1, 0x7($a3)
/* 47380 8006BF80 91020007 */  lbu       $v0, 0x7($t0)
/* 47384 8006BF84 10620004 */  beq       $v1, $v0, .LIQUE_8006BF98
/* 47388 8006BF88 3C02A460 */   lui      $v0, (0xA4600030 >> 16)
/* 4738C 8006BF8C 91030007 */  lbu       $v1, 0x7($t0)
/* 47390 8006BF90 34420030 */  ori       $v0, $v0, (0xA4600030 & 0xFFFF)
/* 47394 8006BF94 AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BF98:
/* 47398 8006BF98 90E30008 */  lbu       $v1, 0x8($a3)
/* 4739C 8006BF9C 91020008 */  lbu       $v0, 0x8($t0)
/* 473A0 8006BFA0 10620004 */  beq       $v1, $v0, .LIQUE_8006BFB4
/* 473A4 8006BFA4 3C02A460 */   lui      $v0, (0xA4600028 >> 16)
/* 473A8 8006BFA8 91030008 */  lbu       $v1, 0x8($t0)
/* 473AC 8006BFAC 34420028 */  ori       $v0, $v0, (0xA4600028 & 0xFFFF)
.LIQUE_8006BFB0:
/* 473B0 8006BFB0 AC430000 */  sw        $v1, 0x0($v0)
.LIQUE_8006BFB4:
/* 473B4 8006BFB4 91020004 */  lbu       $v0, 0x4($t0)
/* 473B8 8006BFB8 A0E20004 */  sb        $v0, 0x4($a3)
/* 473BC 8006BFBC 91030005 */  lbu       $v1, 0x5($t0)
/* 473C0 8006BFC0 A0E30005 */  sb        $v1, 0x5($a3)
/* 473C4 8006BFC4 91020006 */  lbu       $v0, 0x6($t0)
/* 473C8 8006BFC8 A0E20006 */  sb        $v0, 0x6($a3)
/* 473CC 8006BFCC 91030007 */  lbu       $v1, 0x7($t0)
/* 473D0 8006BFD0 A0E30007 */  sb        $v1, 0x7($a3)
/* 473D4 8006BFD4 91020008 */  lbu       $v0, 0x8($t0)
/* 473D8 8006BFD8 A0E20008 */  sb        $v0, 0x8($a3)
/* 473DC 8006BFDC 8D02000C */  lw        $v0, 0xC($t0)
.LIQUE_8006BFE0:
/* 473E0 8006BFE0 3C03A000 */  lui       $v1, %hi(D_A0000000)
/* 473E4 8006BFE4 00451025 */  or        $v0, $v0, $a1
/* 473E8 8006BFE8 00431025 */  or        $v0, $v0, $v1
/* 473EC 8006BFEC 8C440000 */  lw        $a0, %lo(D_A0000000)($v0)
/* 473F0 8006BFF0 00001021 */  addu      $v0, $zero, $zero
/* 473F4 8006BFF4 03E00008 */  jr        $ra
/* 473F8 8006BFF8 ACC40000 */   sw       $a0, 0x0($a2)
/* 473FC 8006BFFC 00000000 */  nop
