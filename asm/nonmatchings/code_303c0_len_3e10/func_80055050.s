.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80055050
/* 030450 80055050 24020001 */  addiu $v0, $zero, 1
/* 030454 80055054 3C018008 */  lui   $at, 0x8008
/* 030458 80055058 A4228DB4 */  sh    $v0, -0x724c($at)
/* 03045C 8005505C 3C018008 */  lui   $at, 0x8008
/* 030460 80055060 03E00008 */  jr    $ra
/* 030464 80055064 AC208DB0 */   sw    $zero, -0x7250($at)

/* 030468 80055068 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03046C 8005506C AFB00010 */  sw    $s0, 0x10($sp)
/* 030470 80055070 0080802D */  daddu $s0, $a0, $zero
/* 030474 80055074 3203000F */  andi  $v1, $s0, 0xf
/* 030478 80055078 3C048008 */  lui   $a0, 0x8008
/* 03047C 8005507C 94848DB4 */  lhu   $a0, -0x724c($a0)
/* 030480 80055080 24020001 */  addiu $v0, $zero, 1
/* 030484 80055084 1482001E */  bne   $a0, $v0, .L80055100
/* 030488 80055088 AFBF0014 */   sw    $ra, 0x14($sp)
/* 03048C 8005508C 2C620004 */  sltiu $v0, $v1, 4
/* 030490 80055090 10400007 */  beqz  $v0, .L800550B0
/* 030494 80055094 2C620002 */   sltiu $v0, $v1, 2
/* 030498 80055098 10400019 */  beqz  $v0, .L80055100
/* 03049C 8005509C 00000000 */   nop   
/* 0304A0 800550A0 1064000C */  beq   $v1, $a0, .L800550D4
/* 0304A4 800550A4 00102102 */   srl   $a0, $s0, 4
/* 0304A8 800550A8 08015440 */  j     .L80055100
/* 0304AC 800550AC 00000000 */   nop   

.L800550B0:
/* 0304B0 800550B0 24020004 */  addiu $v0, $zero, 4
/* 0304B4 800550B4 14620012 */  bne   $v1, $v0, .L80055100
/* 0304B8 800550B8 00502006 */   srlv  $a0, $s0, $v0
/* 0304BC 800550BC 0000282D */  daddu $a1, $zero, $zero
/* 0304C0 800550C0 00A0302D */  daddu $a2, $a1, $zero
/* 0304C4 800550C4 0C015490 */  jal   func_80055240
/* 0304C8 800550C8 00A0382D */   daddu $a3, $a1, $zero
/* 0304CC 800550CC 08015440 */  j     .L80055100
/* 0304D0 800550D0 00000000 */   nop   

.L800550D4:
/* 0304D4 800550D4 308400FF */  andi  $a0, $a0, 0xff
/* 0304D8 800550D8 0C015635 */  jal   func_800558D4
/* 0304DC 800550DC 0000282D */   daddu $a1, $zero, $zero
/* 0304E0 800550E0 3C033020 */  lui   $v1, 0x3020
/* 0304E4 800550E4 34632000 */  ori   $v1, $v1, 0x2000
/* 0304E8 800550E8 0062182B */  sltu  $v1, $v1, $v0
/* 0304EC 800550EC 10600004 */  beqz  $v1, .L80055100
/* 0304F0 800550F0 0040202D */   daddu $a0, $v0, $zero
/* 0304F4 800550F4 00102B02 */  srl   $a1, $s0, 0xc
/* 0304F8 800550F8 0C01565C */  jal   func_80055970
/* 0304FC 800550FC 30A50003 */   andi  $a1, $a1, 3
.L80055100:
/* 030500 80055100 8FBF0014 */  lw    $ra, 0x14($sp)
/* 030504 80055104 8FB00010 */  lw    $s0, 0x10($sp)
/* 030508 80055108 03E00008 */  jr    $ra
/* 03050C 8005510C 27BD0018 */   addiu $sp, $sp, 0x18
