.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80249420
.L80249420:
/* 13C760 80249420 3C038027 */  lui   $v1, 0x8027
/* 13C764 80249424 8C630280 */  lw    $v1, 0x280($v1)
/* 13C768 80249428 00031040 */  sll   $v0, $v1, 1
/* 13C76C 8024942C 00431021 */  addu  $v0, $v0, $v1
/* 13C770 80249430 00021080 */  sll   $v0, $v0, 2
/* 13C774 80249434 3C048027 */  lui   $a0, 0x8027
/* 13C778 80249438 00822021 */  addu  $a0, $a0, $v0
/* 13C77C 8024943C 9084028A */  lbu   $a0, 0x28a($a0)
/* 13C780 80249440 00A40018 */  mult  $a1, $a0
/* 13C784 80249444 00005012 */  mflo  $t2
/* 13C788 80249448 000A1040 */  sll   $v0, $t2, 1
/* 13C78C 8024944C 3C038027 */  lui   $v1, 0x8027
/* 13C790 80249450 00621821 */  addu  $v1, $v1, $v0
/* 13C794 80249454 84630180 */  lh    $v1, 0x180($v1)
/* 13C798 80249458 24027FFE */  addiu $v0, $zero, 0x7ffe
/* 13C79C 8024945C 10620012 */  beq   $v1, $v0, .L802494A8
/* 13C7A0 80249460 3C020004 */   lui   $v0, 4
/* 13C7A4 80249464 3C038027 */  lui   $v1, 0x8027
/* 13C7A8 80249468 8C6300C0 */  lw    $v1, 0xc0($v1)
/* 13C7AC 8024946C 00621024 */  and   $v0, $v1, $v0
/* 13C7B0 80249470 10400006 */  beqz  $v0, .L8024948C
/* 13C7B4 80249474 3C020008 */   lui   $v0, 8
/* 13C7B8 80249478 2508FFFF */  addiu $t0, $t0, -1
/* 13C7BC 8024947C 0502000B */  bltzl $t0, .L802494AC
/* 13C7C0 80249480 2488FFFF */   addiu $t0, $a0, -1
/* 13C7C4 80249484 0809252B */  j     func_802494AC
/* 13C7C8 80249488 00000000 */   nop   

.L8024948C:
/* 13C7CC 8024948C 00621024 */  and   $v0, $v1, $v0
/* 13C7D0 80249490 10400006 */  beqz  $v0, .L802494AC
/* 13C7D4 80249494 00000000 */   nop   
/* 13C7D8 80249498 25080001 */  addiu $t0, $t0, 1
/* 13C7DC 8024949C 0104102A */  slt   $v0, $t0, $a0
/* 13C7E0 802494A0 14400002 */  bnez  $v0, .L802494AC
/* 13C7E4 802494A4 00000000 */   nop   
.L802494A8:
/* 13C7E8 802494A8 0000402D */  daddu $t0, $zero, $zero