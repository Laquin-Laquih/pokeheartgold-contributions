#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start ov01_021FCD2C
ov01_021FCD2C: ; 0x021FCD2C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x34
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x34
	bl memset
	str r6, [r4]
	mov r0, #0
	str r0, [r4, #0xc]
	str r5, [r4, #0x2c]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x30]
	bl sub_02023614
	str r0, [r4, #0x10]
	str r0, [r4, #0x20]
	ldr r0, _021FCD64 ; =ov01_021FCDA8
	ldr r2, _021FCD68 ; =0x0000FFFF
	add r1, r4, #0
	bl sub_0200E320
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FCD64: .word ov01_021FCDA8
_021FCD68: .word 0x0000FFFF
	thumb_func_end ov01_021FCD2C

	thumb_func_start ov01_021FCD6C
ov01_021FCD6C: ; 0x021FCD6C
	push {r3, lr}
	bl sub_0201F988
	ldr r0, [r0, #8]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCD6C

	thumb_func_start ov01_021FCD78
ov01_021FCD78: ; 0x021FCD78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201F988
	bl FreeToHeap
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end ov01_021FCD78

	thumb_func_start ov01_021FCD8C
ov01_021FCD8C: ; 0x021FCD8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201F988
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r5, [r0, #0xc]
	str r4, [r0, #0x14]
	str r6, [r0, #0x1c]
	str r1, [r0, #0x24]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FCD8C

	thumb_func_start ov01_021FCDA8
ov01_021FCDA8: ; 0x021FCDA8
	push {r3, lr}
	add r0, r1, #0
	ldr r1, [r1, #0xc]
	lsl r2, r1, #2
	ldr r1, _021FCDB8 ; =ov01_02208E0C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_021FCDB8: .word ov01_02208E0C
	thumb_func_end ov01_021FCDA8

	thumb_func_start ov01_021FCDBC
ov01_021FCDBC: ; 0x021FCDBC
	mov r1, #1
	str r1, [r0, #8]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FCDBC

	thumb_func_start ov01_021FCDC4
ov01_021FCDC4: ; 0x021FCDC4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021FCDD4
	cmp r1, #1
	beq _021FCDDE
	pop {r4, pc}
_021FCDD4:
	bl ov01_021FCE44
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021FCDDE:
	add r0, r4, #0
	bl ov01_021FCE74
	cmp r0, #1
	bne _021FCDF2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
_021FCDF2:
	add r0, r4, #0
	bl ov01_021FCE34
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCDC4

	thumb_func_start ov01_021FCDFC
ov01_021FCDFC: ; 0x021FCDFC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021FCE0C
	cmp r1, #1
	beq _021FCE16
	pop {r4, pc}
_021FCE0C:
	bl ov01_021FCE5C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021FCE16:
	add r0, r4, #0
	bl ov01_021FCE74
	cmp r0, #1
	bne _021FCE2A
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
_021FCE2A:
	add r0, r4, #0
	bl ov01_021FCE34
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCDFC

	thumb_func_start ov01_021FCE34
ov01_021FCE34: ; 0x021FCE34
	ldr r3, _021FCE40 ; =sub_020235D4
	add r1, r0, #0
	ldr r0, [r1, #0x20]
	ldr r1, [r1, #0x30]
	bx r3
	nop
_021FCE40: .word sub_020235D4
	thumb_func_end ov01_021FCE34

	thumb_func_start ov01_021FCE44
ov01_021FCE44: ; 0x021FCE44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	bl _s32_div_f
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov01_021FCE44

	thumb_func_start ov01_021FCE5C
ov01_021FCE5C: ; 0x021FCE5C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	sub r0, r1, r0
	ldr r1, [r4, #0x1c]
	bl _s32_div_f
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov01_021FCE5C

	thumb_func_start ov01_021FCE74
ov01_021FCE74: ; 0x021FCE74
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x28]
	add r1, r2, r1
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	add r2, r1, #1
	str r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	blo _021FCE92
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
	mov r0, #1
	bx lr
_021FCE92:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FCE74

	thumb_func_start ov01_021FCE98
ov01_021FCE98: ; 0x021FCE98
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl TaskManager_GetSys
	add r6, r0, #0
	ldr r0, [sp]
	bl TaskManager_GetEnv
	add r7, r0, #0
	ldr r0, [sp]
	bl TaskManager_GetStatePtr
	add r4, r0, #0
	ldr r0, [r4]
	ldr r5, [r7, #4]
	cmp r0, #7
	bls _021FCEBC
	b _021FCFDE
_021FCEBC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FCEC8: ; jump table
	.short _021FCED8 - _021FCEC8 - 2 ; case 0
	.short _021FCEF4 - _021FCEC8 - 2 ; case 1
	.short _021FCF4E - _021FCEC8 - 2 ; case 2
	.short _021FCF6A - _021FCEC8 - 2 ; case 3
	.short _021FCF80 - _021FCEC8 - 2 ; case 4
	.short _021FCFAE - _021FCEC8 - 2 ; case 5
	.short _021FCFBC - _021FCEC8 - 2 ; case 6
	.short _021FCFCE - _021FCEC8 - 2 ; case 7
_021FCED8:
	ldr r6, [r5]
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #0xb
	mov r1, #0xc
	bl AllocFromHeapAtEnd
	str r0, [r7, #4]
	str r6, [r0, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCEF4:
	bl GetHoneySweetScentWorkSize
	add r7, r0, #0
	mov r0, #0xb
	add r1, r7, #0
	bl AllocFromHeapAtEnd
	str r0, [r5, #4]
	mov r1, #0
	add r2, r7, #0
	bl memset
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetState
	sub r0, r0, #1
	cmp r0, #1
	bhi _021FCF20
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCF20:
	add r0, r6, #0
	bl ov01_022062CC
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021FCF46
	add r0, r6, #0
	bl sub_02069FB0
	cmp r0, #0
	beq _021FCF46
	ldr r0, [sp]
	ldr r1, _021FCFE4 ; =ov01_02205A60
	mov r2, #0
	bl TaskManager_Call
	mov r0, #4
	str r0, [r4]
	b _021FCFDE
_021FCF46:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCF4E:
	ldr r0, [r6, #0x40]
	bl sub_0205C724
	add r3, r0, #0
	ldr r2, [r7]
	add r0, r6, #0
	mov r1, #0
	bl ov02_02249458
	str r0, [r5]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCF6A:
	ldr r0, [r5]
	bl ov02_0224953C
	cmp r0, #0
	beq _021FCFDE
	ldr r0, [r5]
	bl ov02_02249548
	mov r0, #6
	str r0, [r4]
	b _021FCFDE
_021FCF80:
	add r0, r6, #0
	mov r1, #0xc
	bl ov02_02250780
	cmp r0, #0
	beq _021FCF9C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	mov r5, #2
	bl FsysUnkSub108_AddMonMood
	b _021FCF9E
_021FCF9C:
	mov r5, #1
_021FCF9E:
	add r0, r6, #0
	add r1, r5, #0
	bl ov02_022507B4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCFAE:
	add r0, r6, #0
	bl ov01_021FCFEC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCFBC:
	ldr r0, [sp]
	ldr r1, _021FCFE8 ; =Task_HoneyOrSweetScent
	ldr r2, [r5, #4]
	bl TaskManager_Call
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCFCE:
	add r0, r5, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FCFDE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FCFE4: .word ov01_02205A60
_021FCFE8: .word Task_HoneyOrSweetScent
	thumb_func_end ov01_021FCE98

	thumb_func_start ov01_021FCFEC
ov01_021FCFEC: ; 0x021FCFEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0xd4
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r0, #4
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FD064
	ldr r0, [r5, #0x10]
	ldr r1, _021FD010 ; =ov01_021FD014
	add r2, r4, #0
	bl TaskManager_Call
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FD010: .word ov01_021FD014
	thumb_func_end ov01_021FCFEC

	thumb_func_start ov01_021FD014
ov01_021FD014: ; 0x021FD014
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetEnv
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetStatePtr
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FD032
	cmp r0, #1
	beq _021FD050
	b _021FD060
_021FD032:
	add r0, r5, #0
	add r0, #0x20
	mov r1, #3
	bl ov01_021FD154
	cmp r0, #0
	beq _021FD046
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021FD046:
	add r5, #0x5c
	add r0, r5, #0
	bl ov01_021FBF68
	b _021FD060
_021FD050:
	add r0, r5, #0
	bl ov01_021FD128
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FD060:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD014

	thumb_func_start ov01_021FD064
ov01_021FD064: ; 0x021FD064
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl GF_ExpHeap_FndInitAllocator
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0x86
	mov r2, #0x17
	add r3, r5, #0
	bl ov01_021FBCD8
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x20
	add r1, #0x10
	mov r2, #0x86
	mov r3, #0x15
	str r4, [sp, #4]
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x34
	add r1, #0x10
	mov r2, #0x86
	mov r3, #0x16
	str r4, [sp, #4]
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x48
	add r1, #0x10
	mov r2, #0x86
	mov r3, #0x14
	str r4, [sp, #4]
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x10
	bl ov01_021FBF2C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x20
	bl ov01_021FBF50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x34
	bl ov01_021FBF50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x48
	bl ov01_021FBF50
	add r0, r4, #0
	add r0, #0x20
	mov r1, #3
	mov r2, #0
	bl ov01_021FD190
	add r0, r6, #0
	bl FollowingPokemon_GetMapObject
	add r1, sp, #8
	bl MapObject_GetPositionVec
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, #0x5c
	bl ov01_021FC00C
	add r4, #0x5c
	add r0, r4, #0
	mov r1, #1
	bl ov01_021FC004
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD064

	thumb_func_start ov01_021FD128
ov01_021FD128: ; 0x021FD128
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x48
	bl ov01_021FBE80
	add r0, r4, #0
	add r0, #0x34
	add r1, r4, #0
	bl ov01_021FBE80
	add r0, r4, #0
	add r0, #0x20
	add r1, r4, #0
	bl ov01_021FBE80
	add r4, #0x10
	add r0, r4, #0
	bl ov01_021FBDA8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD128

	thumb_func_start ov01_021FD154
ov01_021FD154: ; 0x021FD154
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r1, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r6, #0
	bls _021FD184
_021FD162:
	mov r0, #0x14
	mul r0, r4
	mov r1, #1
	add r0, r7, r0
	lsl r1, r1, #0xc
	bl ov01_021FBEE4
	cmp r0, #0
	beq _021FD17A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_021FD17A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _021FD162
_021FD184:
	cmp r5, r6
	bne _021FD18C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FD18C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FD154

	thumb_func_start ov01_021FD190
ov01_021FD190: ; 0x021FD190
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	mov r4, #0
	cmp r5, #0
	bls _021FD1B4
_021FD19E:
	mov r0, #0x14
	mul r0, r4
	add r0, r6, r0
	add r1, r7, #0
	bl ov01_021FBF20
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r5
	blo _021FD19E
_021FD1B4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD190

	thumb_func_start ov01_021FD1B8
ov01_021FD1B8: ; 0x021FD1B8
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD1B8

	thumb_func_start ov01_021FD1CC
ov01_021FD1CC: ; 0x021FD1CC
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FD21C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021FD1DE
	bl ov01_021F1448
_021FD1DE:
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD1CC

	thumb_func_start ov01_021FD1E8
ov01_021FD1E8: ; 0x021FD1E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	str r1, [r5]
	mov r2, #0
	add r0, r3, #0
	add r1, r5, #4
	add r3, r4, #0
	str r2, [sp]
	bl ov01_021F19F4
	add r0, r5, #0
	add r0, #0x18
	add r1, r5, #4
	bl sub_02069978
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD1E8

	thumb_func_start ov01_021FD20C
ov01_021FD20C: ; 0x021FD20C
	ldr r1, _021FD214 ; =0x0000FFFF
	ldr r3, _021FD218 ; =sub_02069784
	stmia r0!, {r1}
	bx r3
	.balign 4, 0
_021FD214: .word 0x0000FFFF
_021FD218: .word sub_02069784
	thumb_func_end ov01_021FD20C

	thumb_func_start ov01_021FD21C
ov01_021FD21C: ; 0x021FD21C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #4]
	mov r4, #0
	ldr r5, [r0, #8]
	cmp r6, #0
	bls _021FD23E
	ldr r7, _021FD240 ; =0x0000FFFF
_021FD22A:
	ldr r0, [r5]
	cmp r0, r7
	beq _021FD236
	add r0, r5, #0
	bl ov01_021FD20C
_021FD236:
	add r4, r4, #1
	add r5, #0x6c
	cmp r4, r6
	blo _021FD22A
_021FD23E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD240: .word 0x0000FFFF
	thumb_func_end ov01_021FD21C

	thumb_func_start ov01_021FD244
ov01_021FD244: ; 0x021FD244
	ldr r3, [r0, #4]
	ldr r0, [r0, #8]
_021FD248:
	ldr r2, [r0]
	cmp r2, r1
	beq _021FD256
	add r0, #0x6c
	sub r3, r3, #1
	bne _021FD248
	mov r0, #0
_021FD256:
	bx lr
	thumb_func_end ov01_021FD244

	thumb_func_start ov01_021FD258
ov01_021FD258: ; 0x021FD258
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x14
	add r6, r0, #0
	bl ov01_021F1450
	add r4, r0, #0
	cmp r5, #0
	bne _021FD26E
	bl GF_AssertFail
_021FD26E:
	mov r1, #0x6c
	mov r2, #0
	add r0, r6, #0
	mul r1, r5
	add r3, r2, #0
	str r5, [r4, #4]
	bl ov01_021F1430
	ldr r1, _021FD28C ; =0x0000FFFF
	str r0, [r4, #8]
_021FD282:
	str r1, [r0]
	add r0, #0x6c
	sub r5, r5, #1
	bne _021FD282
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD28C: .word 0x0000FFFF
	thumb_func_end ov01_021FD258

	thumb_func_start ov01_021FD290
ov01_021FD290: ; 0x021FD290
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x14
	add r5, r0, #0
	add r6, r2, #0
	bl ov01_021F1450
	add r1, r4, #0
	add r7, r0, #0
	bl ov01_021FD244
	cmp r0, #0
	bne _021FD2C6
	ldr r1, _021FD2C8 ; =0x0000FFFF
	add r0, r7, #0
	bl ov01_021FD244
	cmp r0, #0
	bne _021FD2BC
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021FD2BC:
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov01_021FD1E8
_021FD2C6:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD2C8: .word 0x0000FFFF
	thumb_func_end ov01_021FD290

	thumb_func_start ov01_021FD2CC
ov01_021FD2CC: ; 0x021FD2CC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x14
	bl ov01_021F1450
	add r1, r4, #0
	bl ov01_021FD244
	add r4, r0, #0
	bne _021FD2E4
	bl GF_AssertFail
_021FD2E4:
	add r4, #0x18
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD2CC

	thumb_func_start ov01_021FD2EC
ov01_021FD2EC: ; 0x021FD2EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetGfxID
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD324 ; =ov01_02208E1C
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FD324: .word ov01_02208E1C
	thumb_func_end ov01_021FD2EC

	thumb_func_start ov01_021FD328
ov01_021FD328: ; 0x021FD328
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x24]
	bl MapObject_GetID
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov01_021FD2CC
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	bl sub_0205F7D4
	cmp r0, #1
	ldr r0, [r4, #0x24]
	bne _021FD364
	bl sub_0205F544
	b _021FD368
_021FD364:
	bl sub_0205F254
_021FD368:
	str r0, [r4, #8]
	add r4, #0xc
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02068DB8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD328

	thumb_func_start ov01_021FD378
ov01_021FD378: ; 0x021FD378
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD378

	thumb_func_start ov01_021FD37C
ov01_021FD37C: ; 0x021FD37C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x24]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _021FD39E
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021FD39E:
	add r0, r6, #0
	add r1, sp, #0xc
	bl MapObject_GetPositionVec
	add r0, r6, #0
	add r1, sp, #0
	bl MapObject_GetFacingVec
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DA8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD37C

	thumb_func_start ov01_021FD3E0
ov01_021FD3E0: ; 0x021FD3E0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_020699BC
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FD3E0

	thumb_func_start ov01_021FD3F8
ov01_021FD3F8: ; 0x021FD3F8
	push {r4, r5, r6, lr}
	mov r5, #0xc
	add r1, r5, #0
	add r6, r0, #0
	ldr r4, _021FD418 ; =ov01_02208E30
	bl ov01_021FD258
_021FD406:
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl ov01_021FD290
	add r4, #8
	sub r5, r5, #1
	bne _021FD406
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD418: .word ov01_02208E30
	thumb_func_end ov01_021FD3F8

	thumb_func_start ov01_021FD41C
ov01_021FD41C: ; 0x021FD41C
	push {r3, r4, r5, lr}
	mov r1, #0x72
	mov r2, #0
	lsl r1, r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4, #0x20]
	bl ov01_021FD5CC
	add r0, r4, #0
	bl ov01_021FD458
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD41C

	thumb_func_start ov01_021FD440
ov01_021FD440: ; 0x021FD440
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FD47C
	add r0, r4, #0
	bl ov01_021FD60C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD440

	thumb_func_start ov01_021FD458
ov01_021FD458: ; 0x021FD458
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_021F1468
	ldr r0, [r0, #0x3c]
	bl sub_0205F19C
	sub r2, r0, #1
	ldr r0, _021FD478 ; =ov01_021FD4F4
	add r1, r4, #0
	bl sub_0200E320
	str r0, [r4, #0x24]
	pop {r4, pc}
	nop
_021FD478: .word ov01_021FD4F4
	thumb_func_end ov01_021FD458

	thumb_func_start ov01_021FD47C
ov01_021FD47C: ; 0x021FD47C
	ldr r3, _021FD484 ; =sub_0200E390
	ldr r0, [r0, #0x24]
	bx r3
	nop
_021FD484: .word sub_0200E390
	thumb_func_end ov01_021FD47C

	thumb_func_start ov01_021FD488
ov01_021FD488: ; 0x021FD488
	add r2, r0, #0
	add r2, #0x14
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end ov01_021FD488

	thumb_func_start ov01_021FD498
ov01_021FD498: ; 0x021FD498
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD498

	thumb_func_start ov01_021FD4A4
ov01_021FD4A4: ; 0x021FD4A4
	ldr r1, [r0, #4]
	lsl r2, r1, #2
	ldr r1, _021FD4C8 ; =ov01_02208EB4
	ldr r1, [r1, r2]
	str r1, [r0, #0x10]
	ldr r2, [r0, #4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021FD4CC ; =ov01_02208F38
	add r2, r0, #0
	add r3, r1, r3
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	.balign 4, 0
_021FD4C8: .word ov01_02208EB4
_021FD4CC: .word ov01_02208F38
	thumb_func_end ov01_021FD4A4

	thumb_func_start ov01_021FD4D0
ov01_021FD4D0: ; 0x021FD4D0
	ldr r3, [r0]
	cmp r3, r1
	bge _021FD4E2
	add r2, r3, r2
	str r2, [r0]
	cmp r2, r1
	ble _021FD4F0
	str r1, [r0]
	bx lr
_021FD4E2:
	cmp r3, r1
	ble _021FD4F0
	sub r2, r3, r2
	str r2, [r0]
	cmp r2, r1
	bge _021FD4F0
	str r1, [r0]
_021FD4F0:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD4D0

	thumb_func_start ov01_021FD4F4
ov01_021FD4F4: ; 0x021FD4F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl GF_RTC_GetTimeOfDay
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021FD512
	cmp r1, #1
	beq _021FD534
	cmp r1, #2
	beq _021FD53E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021FD512:
	str r4, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FD4A4
	ldr r0, [r5, #0x10]
	bl ov01_021FD498
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021FD624
	ldr r0, [r5]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FD534:
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _021FD5C0
	add r0, r1, #1
	str r0, [r5]
_021FD53E:
	ldr r0, _021FD5C4 ; =ov01_02208EB4
	lsl r1, r4, #2
	ldr r6, [r0, r1]
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021FD5C8 ; =ov01_02208F38
	add r2, sp, #4
	add r3, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	ldr r1, [sp, #4]
	add r0, #0x14
	mov r2, #0x10
	bl ov01_021FD4D0
	ldr r0, [sp, #8]
	mov r2, #0x10
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x18
	bl ov01_021FD4D0
	ldr r7, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	add r1, r7, #0
	mov r2, #0x10
	bl ov01_021FD4D0
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	add r1, r6, #0
	lsl r2, r2, #8
	bl ov01_021FD4D0
	ldr r0, [r5, #0x10]
	bl ov01_021FD498
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021FD624
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bne _021FD5C0
	ldr r1, [r5, #0x18]
	ldr r0, [sp]
	cmp r0, r1
	bne _021FD5C0
	ldr r0, [r5, #0x1c]
	cmp r7, r0
	bne _021FD5C0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	bne _021FD5C0
	str r4, [r5, #4]
	mov r0, #1
	str r0, [r5]
_021FD5C0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD5C4: .word ov01_02208EB4
_021FD5C8: .word ov01_02208F38
	thumb_func_end ov01_021FD4F4

	thumb_func_start ov01_021FD5CC
ov01_021FD5CC: ; 0x021FD5CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r0, #0
	ldr r6, _021FD608 ; =ov01_02208E90
	str r0, [sp, #4]
	mov r7, #0
	add r4, #0x28
	add r5, #0x78
_021FD5DE:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0, #0x20]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F19F4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069978
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	add r5, #0x54
	cmp r7, #4
	blt _021FD5DE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD608: .word ov01_02208E90
	thumb_func_end ov01_021FD5CC

	thumb_func_start ov01_021FD60C
ov01_021FD60C: ; 0x021FD60C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x28
_021FD614:
	add r0, r5, #0
	bl sub_02069784
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _021FD614
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD60C

	thumb_func_start ov01_021FD624
ov01_021FD624: ; 0x021FD624
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x1f
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	mov r1, #1
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl NNS_G3dMdlSetMdlAlphaAll
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD624

	thumb_func_start ov01_021FD640
ov01_021FD640: ; 0x021FD640
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	mov r1, #0
	str r4, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD680 ; =ov01_02208EA0
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021FD680: .word ov01_02208EA0
	thumb_func_end ov01_021FD640

	thumb_func_start ov01_021FD684
ov01_021FD684: ; 0x021FD684
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	mov r1, #0
	str r4, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD6C4 ; =ov01_02208EC8
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #3
	bl ov01_021F1620
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021FD6C4: .word ov01_02208EC8
	thumb_func_end ov01_021FD684

	thumb_func_start ov01_021FD6C8
ov01_021FD6C8: ; 0x021FD6C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	bl MapObject_GetGfxID
	str r0, [r4]
	ldr r0, [r4, #0x1c]
	bl MapObject_GetID
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F7D4
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021FD70A
	bl sub_0205F544
	b _021FD70E
_021FD70A:
	bl sub_0205F254
_021FD70E:
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD6C8

	thumb_func_start ov01_021FD714
ov01_021FD714: ; 0x021FD714
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD714

	thumb_func_start ov01_021FD718
ov01_021FD718: ; 0x021FD718
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x1c]
	ldr r1, [r4]
	add r5, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FD73C
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FD73C:
	add r0, r6, #0
	mov r1, #8
	bl sub_0205F5E8
	cmp r0, #0
	beq _021FD752
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FD752:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r1, _021FD780 ; =0x00100200
	add r0, r6, #0
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FD76A
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, pc}
_021FD76A:
	add r0, r6, #0
	add r1, sp, #0
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021FD780: .word 0x00100200
	thumb_func_end ov01_021FD718

	thumb_func_start ov01_021FD784
ov01_021FD784: ; 0x021FD784
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	bl MapObject_GetGfxID
	str r0, [r4]
	ldr r0, [r4, #0x1c]
	bl MapObject_GetID
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F7D4
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021FD7C6
	bl sub_0205F544
	b _021FD7CA
_021FD7C6:
	bl sub_0205F254
_021FD7CA:
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD784

	thumb_func_start ov01_021FD7D4
ov01_021FD7D4: ; 0x021FD7D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021FD82E
	ldr r6, _021FD834 ; =ov01_02208F14
	add r5, sp, #0
	mov r3, #4
_021FD7E8:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021FD7E8
	ldr r0, [r6]
	add r1, sp, #0x24
	str r0, [r5]
	ldr r5, [r2, #0x18]
	add r0, r5, #0
	bl ov01_021FD488
	add r0, r4, #0
	add r1, sp, #0x30
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x30]
	lsl r1, r0, #3
	ldr r2, [sp, #0x34]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x38]
	add r5, #0x78
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r1, sp, #0x30
	add r2, sp, #0x24
	add r3, sp, #0
	bl sub_020699AC
_021FD82E:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021FD834: .word ov01_02208F14
	thumb_func_end ov01_021FD7D4

	thumb_func_start ov01_021FD838
ov01_021FD838: ; 0x021FD838
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r2, r1, #0
	add r6, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021FD8E0
	ldr r5, _021FD8E4 ; =ov01_02208EF0
	add r4, sp, #0xc
	mov r3, #4
_021FD84C:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021FD84C
	ldr r0, [r5]
	add r1, sp, #0x30
	str r0, [r4]
	ldr r0, [r2, #0x18]
	ldr r4, [r2, #0x1c]
	add r5, r0, #0
	add r5, #0x78
	bl ov01_021FD488
	add r0, r4, #0
	bl ov01_021F8F88
	cmp r0, #0
	add r1, sp, #0x3c
	beq _021FD8A0
	add r0, r6, #0
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x3c]
	lsl r1, r0, #3
	ldr r2, [sp, #0x40]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x44]
	add r0, r1, r0
	str r0, [sp, #0x44]
	add r0, r4, #0
	bl MapObject_GetFacingDirection
	add r1, sp, #0x3c
	bl ov01_021FD9CC
	b _021FD8D4
_021FD8A0:
	add r0, r4, #0
	bl MapObject_GetPositionVec
	add r0, r4, #0
	add r1, sp, #0
	bl ov01_021F8FA0
	ldr r1, [sp, #0x3c]
	ldr r0, [sp]
	ldr r3, [sp, #0x40]
	add r2, r1, r0
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #8]
	str r2, [sp, #0x3c]
	add r0, r1, r0
	mov r1, #2
	lsl r1, r1, #0xa
	sub r2, r2, r1
	str r2, [sp, #0x3c]
	lsl r2, r1, #3
	sub r2, r3, r2
	lsl r1, r1, #1
	str r0, [sp, #0x44]
	add r0, r0, r1
	str r2, [sp, #0x40]
	str r0, [sp, #0x44]
_021FD8D4:
	add r0, r5, #0
	add r1, sp, #0x3c
	add r2, sp, #0x30
	add r3, sp, #0xc
	bl sub_020699AC
_021FD8E0:
	add sp, #0x48
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD8E4: .word ov01_02208EF0
	thumb_func_end ov01_021FD838

	thumb_func_start ov01_021FD8E8
ov01_021FD8E8: ; 0x021FD8E8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F146C
	add r6, r0, #0
	mov r1, #0
	str r6, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD928 ; =ov01_02208EDC
	add r0, r6, #0
	add r2, sp, #8
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD928: .word ov01_02208EDC
	thumb_func_end ov01_021FD8E8

	thumb_func_start ov01_021FD92C
ov01_021FD92C: ; 0x021FD92C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x1c]
	ldr r1, [r4]
	add r5, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FD950
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FD950:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r1, _021FD97C ; =0x00100200
	add r0, r6, #0
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FD968
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, pc}
_021FD968:
	add r0, r6, #0
	add r1, sp, #0
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FD97C: .word 0x00100200
	thumb_func_end ov01_021FD92C

	thumb_func_start ov01_021FD980
ov01_021FD980: ; 0x021FD980
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	add r6, r0, #0
	cmp r1, #1
	beq _021FD9C6
	bl sub_02068D90
	ldr r5, [r4, #0x18]
	add r4, r0, #0
	mov r1, #0x54
	mul r4, r1
	add r0, r6, #0
	add r1, sp, #0
	add r5, #0x78
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp]
	lsl r1, r0, #3
	ldr r2, [sp, #4]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, r4
	add r1, sp, #0
	bl sub_020699BC
_021FD9C6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD980

	thumb_func_start ov01_021FD9CC
ov01_021FD9CC: ; 0x021FD9CC
	cmp r0, #3
	bhi _021FDA12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FD9DC: ; jump table
	.short _021FD9E4 - _021FD9DC - 2 ; case 0
	.short _021FD9F0 - _021FD9DC - 2 ; case 1
	.short _021FD9FC - _021FD9DC - 2 ; case 2
	.short _021FDA08 - _021FD9DC - 2 ; case 3
_021FD9E4:
	mov r0, #2
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r1, #8]
	bx lr
_021FD9F0:
	mov r0, #2
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	sub r0, r2, r0
	str r0, [r1, #8]
	bx lr
_021FD9FC:
	mov r0, #6
	ldr r2, [r1]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r1]
	bx lr
_021FDA08:
	mov r0, #6
	ldr r2, [r1]
	lsl r0, r0, #0xc
	sub r0, r2, r0
	str r0, [r1]
_021FDA12:
	bx lr
	thumb_func_end ov01_021FD9CC

	thumb_func_start ov01_021FDA14
ov01_021FDA14: ; 0x021FDA14
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FDA40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDA14

	thumb_func_start ov01_021FDA30
ov01_021FDA30: ; 0x021FDA30
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FDA5C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FDA30

	thumb_func_start ov01_021FDA40
ov01_021FDA40: ; 0x021FDA40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x23
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #0xd
	mov r2, #0x69
	bl ov01_021F18D4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDA40

	thumb_func_start ov01_021FDA5C
ov01_021FDA5C: ; 0x021FDA5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #0xd
	bl ov01_021F18FC
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDA5C

	thumb_func_start ov01_021FDA74
ov01_021FDA74: ; 0x021FDA74
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #1
	str r0, [sp, #0xc]
	bl ov01_021F1450
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x18
	str r5, [sp, #0x14]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _021FDABC ; =ov01_02208F88
	add r2, sp, #0x18
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021FDABC: .word ov01_02208F88
	thumb_func_end ov01_021FDA74

	thumb_func_start ov01_021FDAC0
ov01_021FDAC0: ; 0x021FDAC0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	bl MapObject_GetID
	str r0, [r4]
	ldr r0, [r4, #0x20]
	bl sub_0205F254
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl MapObject_GetGfxID
	str r0, [r4, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	mov r0, #0x40
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021FDB12
	mov r0, #0
	str r0, [r4, #0x34]
_021FDB12:
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FDD48
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDAC0

	thumb_func_start ov01_021FDB34
ov01_021FDB34: ; 0x021FDB34
	push {r3, lr}
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _021FDB42
	ldr r0, [r1, #0x24]
	bl sub_02023DA4
_021FDB42:
	pop {r3, pc}
	thumb_func_end ov01_021FDB34

	thumb_func_start ov01_021FDB44
ov01_021FDB44: ; 0x021FDB44
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	add r5, r0, #0
	add r0, r6, #0
	bl MapObject_GetGfxID
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _021FDB72
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FDB72
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FDB7C
_021FDB72:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FDB7C:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	add r1, r1, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _021FDB96
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
	b _021FDBA6
_021FDB96:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r1, r0
	bgt _021FDBA6
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
_021FDBA6:
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FDBC6
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FDD48
_021FDBC6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDB44

	thumb_func_start ov01_021FDBCC
ov01_021FDBCC: ; 0x021FDBCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r6, [r5, #0x20]
	add r7, r0, #0
	add r0, r6, #0
	mov r4, #0
	bl MapObject_GetGfxID
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021FDBFC
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FDBFC
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FDC06
_021FDBFC:
	add r0, r7, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FDC06:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021FDC78
	ldr r0, [r5, #0x20]
	add r1, sp, #0xc
	bl MapObject_GetFacingVec
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021FDC1C
	mov r4, #1
_021FDC1C:
	add r0, r6, #0
	bl sub_0205F684
	cmp r0, #1
	bne _021FDC28
	mov r4, #1
_021FDC28:
	cmp r4, #0
	ldr r0, [r5, #0x24]
	beq _021FDC36
	mov r1, #0
	bl sub_02023EA4
	b _021FDC3C
_021FDC36:
	mov r1, #1
	bl sub_02023EA4
_021FDC3C:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r5, #0x24]
	add r1, sp, #0
	bl sub_02023E50
	add r1, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x28
	bl sub_02023E78
	ldr r0, [r5, #0x20]
	bl ov01_021F72DC
	add r4, r0, #0
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023EE0
	add r0, r4, #0
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F1C
_021FDC78:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FDBCC

	thumb_func_start ov01_021FDC7C
ov01_021FDC7C: ; 0x021FDC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r3, _021FDD44 ; =ov01_02208FC8
	add r4, r2, #0
	add r2, sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #0
	add r1, sp, #0x20
	bl MapObject_GetFacingVec
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	add r0, r6, #0
	bl MapObject_GetID
	cmp r0, #0xff
	bne _021FDCD2
	add r0, r6, #0
	bl MapObject_GetGfxID
	cmp r0, #0xbc
	bne _021FDCD2
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	mov r1, #2
	lsl r1, r1, #0xa
	cmp r0, #1
	bne _021FDCCE
	lsl r0, r1, #1
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	sub r7, r1, r0
	b _021FDCD4
_021FDCCE:
	ldr r7, [sp, #0x28]
	b _021FDCD4
_021FDCD2:
	ldr r7, [sp, #0x28]
_021FDCD4:
	ldr r0, [sp, #0x24]
	mov r1, #6
	bl _s32_div_f
	neg r0, r0
	str r0, [sp]
	add r0, r6, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	bne _021FDCFE
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetMapObject
	bl MapObject_GetGfxID
	cmp r0, #0xbc
	bne _021FDCFE
	mov r0, #0
	str r0, [sp]
_021FDCFE:
	add r0, r6, #0
	add r1, r4, #0
	bl MapObject_GetPositionVec
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0206121C
	ldr r2, [r4]
	ldr r1, [sp, #4]
	add r1, r2, r1
	str r1, [r4]
	mov r1, #7
	lsl r1, r1, #0xc
	ldr r2, [r4, #8]
	sub r1, r7, r1
	add r1, r2, r1
	str r1, [r4, #8]
	cmp r0, #0
	bne _021FDD2A
	mov r0, #0
	b _021FDD36
_021FDD2A:
	ldr r0, [r5, #0x10]
	ldr r2, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	sub r0, r2, r0
_021FDD36:
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r4, #4]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDD44: .word ov01_02208FC8
	thumb_func_end ov01_021FDC7C

	thumb_func_start ov01_021FDD48
ov01_021FDD48: ; 0x021FDD48
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0205F35C
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl ov01_021F9744
	cmp r0, #0
	beq _021FDD8E
	ldr r0, [r4, #0x20]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021FDD8E
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl ov01_021F18F0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov01_021F16EC
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
_021FDD8E:
	add sp, #0x34
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDD48

	thumb_func_start ov01_021FDD94
ov01_021FDD94: ; 0x021FDD94
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0x10
	add r3, sp, #0
	mov r2, #5
_021FDDA4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDDA4
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov01_021F18F0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02068DB8
	ldr r0, [r4, #8]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov01_021F16EC
	str r0, [r4, #0x3c]
	ldr r5, [r4, #0x38]
	add r0, r5, #0
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023EE0
	add r0, r5, #0
	bl sub_02023F70
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023F40
	add r0, r5, #0
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023F1C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023F04
	ldr r0, [r4, #0x3c]
	bl sub_02023FC0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FDD94

	thumb_func_start ov01_021FDE08
ov01_021FDE08: ; 0x021FDE08
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021FDE60 ; =ov01_02208FB0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r3, r5, #0
	stmia r2!, {r0, r1}
	add r3, #0x50
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	ldr r0, [r5, #4]
	bl sub_0206121C
	mov r1, #7
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r4, #8]
	cmp r0, #0
	bne _021FDE4C
	mov r0, #0
	add sp, #0x18
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021FDE4C:
	ldr r0, [r5]
	ldr r2, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	sub r0, r2, r0
	str r0, [r4, #4]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021FDE60: .word ov01_02208FB0
	thumb_func_end ov01_021FDE08

	thumb_func_start ov01_021FDE64
ov01_021FDE64: ; 0x021FDE64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov01_021F1468
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	str r5, [sp, #0xc]
	bl ov01_021F1450
	str r0, [sp, #0x10]
	add r3, sp, #0x14
	mov r2, #5
_021FDE86:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDE86
	str r6, [sp, #0x3c]
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r1, _021FDEA8 ; =ov01_02208F9C
	str r0, [sp, #4]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	add r2, r7, #0
	bl ov01_021F1620
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDEA8: .word ov01_02208F9C
	thumb_func_end ov01_021FDE64

	thumb_func_start ov01_021FDEAC
ov01_021FDEAC: ; 0x021FDEAC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r6, r0, #0
	add r3, r4, #4
	mov r2, #7
_021FDEBE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDEBE
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0x40
	str r0, [r4, #0x4c]
	ldr r0, [r4]
	cmp r0, #2
	bne _021FDEE6
	mov r0, #0
	str r0, [r4, #0x4c]
_021FDEE6:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x50
	bl sub_02068DB8
	add r0, r4, #0
	add r1, sp, #0
	bl ov01_021FDE08
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FDD94
	add r0, r5, #0
	bl sub_02068D18
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FDEAC

	thumb_func_start ov01_021FDF14
ov01_021FDF14: ; 0x021FDF14
	ldr r3, _021FDF1C ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FDF1C: .word sub_02023DA4
	thumb_func_end ov01_021FDF14

	thumb_func_start ov01_021FDF20
ov01_021FDF20: ; 0x021FDF20
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r2, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	add r2, r2, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r2, [r1, #0x40]
	cmp r2, r0
	blt _021FDF40
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	neg r0, r0
	str r0, [r1, #0x4c]
	b _021FDF50
_021FDF40:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r2, r0
	bgt _021FDF50
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	neg r0, r0
	str r0, [r1, #0x4c]
_021FDF50:
	add r0, r1, #0
	add r1, sp, #0
	bl ov01_021FDE08
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FDF20

	thumb_func_start ov01_021FDF64
ov01_021FDF64: ; 0x021FDF64
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	ldr r0, [r4, #0x3c]
	add r4, #0x40
	add r1, r4, #0
	bl sub_02023E78
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDF64

	thumb_func_start ov01_021FDF88
ov01_021FDF88: ; 0x021FDF88
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #1
	str r0, [sp, #0xc]
	bl ov01_021F1450
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x18
	str r5, [sp, #0x14]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _021FDFD0 ; =ov01_02208F74
	add r2, sp, #0x18
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021FDFD0: .word ov01_02208F74
	thumb_func_end ov01_021FDF88

	thumb_func_start ov01_021FDFD4
ov01_021FDFD4: ; 0x021FDFD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	bl MapObject_GetID
	str r0, [r4]
	ldr r0, [r4, #0x20]
	bl sub_0205F254
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl MapObject_GetGfxID
	str r0, [r4, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	mov r0, #0x40
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021FE026
	cmp r0, #5
	bne _021FE02A
_021FE026:
	mov r0, #0
	str r0, [r4, #0x34]
_021FE02A:
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	ldr r1, [sp, #4]
	ldr r0, _021FE054 ; =0x00000514
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FE190
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021FE054: .word 0x00000514
	thumb_func_end ov01_021FDFD4

	thumb_func_start ov01_021FE058
ov01_021FE058: ; 0x021FE058
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	add r5, r0, #0
	add r0, r6, #0
	bl MapObject_GetGfxID
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _021FE086
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FE086
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FE090
_021FE086:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FE090:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	add r1, r1, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _021FE0AA
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
	b _021FE0BA
_021FE0AA:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r1, r0
	bgt _021FE0BA
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
_021FE0BA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	ldr r1, [sp, #4]
	ldr r0, _021FE0E8 ; =0x00000514
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FE0E2
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FE190
_021FE0E2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021FE0E8: .word 0x00000514
	thumb_func_end ov01_021FE058

	thumb_func_start ov01_021FE0EC
ov01_021FE0EC: ; 0x021FE0EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r4, [r5, #0x20]
	add r6, r0, #0
	add r0, r4, #0
	bl MapObject_GetGfxID
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021FE11A
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FE11A
	add r0, r4, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FE124
_021FE11A:
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FE124:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021FE18A
	add r0, r4, #0
	bl sub_0205F684
	cmp r0, #1
	ldr r0, [r5, #0x24]
	bne _021FE13E
	mov r1, #0
	bl sub_02023EA4
	b _021FE144
_021FE13E:
	mov r1, #1
	bl sub_02023EA4
_021FE144:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02068DB8
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	add r1, sp, #0
	bl sub_02023E50
	add r1, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x28
	bl sub_02023E78
	ldr r0, [r5, #0x20]
	bl ov01_021F72DC
	add r4, r0, #0
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023EE0
	add r0, r4, #0
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F1C
_021FE18A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE0EC

	thumb_func_start ov01_021FE190
ov01_021FE190: ; 0x021FE190
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0205F35C
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl ov01_021F9744
	cmp r0, #0
	beq _021FE1FA
	ldr r0, [r4, #0x20]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021FE1FA
	ldr r0, [r4, #0x10]
	cmp r0, #2
	ldr r0, [r4, #0x18]
	bhi _021FE1C4
	mov r1, #2
	bl ov01_021F18F0
	b _021FE1CA
_021FE1C4:
	mov r1, #0xd
	bl ov01_021F18F0
_021FE1CA:
	str r0, [sp]
	ldr r0, [r4, #0x20]
	bl ov01_0220553C
	cmp r0, #0
	beq _021FE1E2
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	mov r0, #1
	add r3, sp, #0
	bl ov01_02205870
_021FE1E2:
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov01_021F16EC
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
_021FE1FA:
	add sp, #0x34
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE190

	thumb_func_start ov01_021FE200
ov01_021FE200: ; 0x021FE200
	push {r3, r4, r5, lr}
	mov r2, #0
	ldr r1, _021FE21C ; =0x00000824
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FE230
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021FE21C: .word 0x00000824
	thumb_func_end ov01_021FE200

	thumb_func_start ov01_021FE220
ov01_021FE220: ; 0x021FE220
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FE2B8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FE220

	thumb_func_start ov01_021FE230
ov01_021FE230: ; 0x021FE230
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x65
	ldr r5, [sp, #4]
	lsl r1, r1, #2
	add r4, r0, #4
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, _021FE2AC ; =0x000004DC
	ldr r0, [sp, #4]
	ldr r7, _021FE2B0 ; =ov01_0220901C
	add r0, r0, r1
	ldr r6, _021FE2B4 ; =ov01_02208FF4
	add r5, #0xcc
	str r0, [sp, #8]
_021FE256:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r7]
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F19F4
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_02069978
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl ov01_021F19F4
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02069978
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, #0x54
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r4, #0x14
	add r0, #0x54
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	add r5, #0x14
	str r0, [sp, #0x10]
	cmp r0, #0xa
	blo _021FE256
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FE2AC: .word 0x000004DC
_021FE2B0: .word ov01_0220901C
_021FE2B4: .word ov01_02208FF4
	thumb_func_end ov01_021FE230

	thumb_func_start ov01_021FE2B8
ov01_021FE2B8: ; 0x021FE2B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r0, #4
	add r5, #0xcc
_021FE2C2:
	add r0, r4, #0
	bl sub_02069784
	add r0, r5, #0
	bl sub_02069784
	add r6, r6, #1
	add r4, #0x14
	add r5, #0x14
	cmp r6, #0xa
	blt _021FE2C2
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE2B8

	thumb_func_start ov01_021FE2DC
ov01_021FE2DC: ; 0x021FE2DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	mov r4, #0
	cmp r0, #4
	bhi _021FE346
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE2F6: ; jump table
	.short _021FE300 - _021FE2F6 - 2 ; case 0
	.short _021FE30E - _021FE2F6 - 2 ; case 1
	.short _021FE326 - _021FE2F6 - 2 ; case 2
	.short _021FE332 - _021FE2F6 - 2 ; case 3
	.short _021FE326 - _021FE2F6 - 2 ; case 4
_021FE300:
	mov r0, #0x65
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x54
	mul r0, r2
	add r4, r1, r0
	b _021FE346
_021FE30E:
	lsl r3, r1, #4
	ldr r1, _021FE354 ; =ov01_02209044
	lsl r2, r2, #2
	add r1, r1, r3
	mov r0, #0x65
	ldr r2, [r2, r1]
	lsl r0, r0, #2
	mov r1, #0x54
	add r0, r5, r0
	mul r1, r2
	add r4, r0, r1
	b _021FE346
_021FE326:
	ldr r0, _021FE358 ; =0x000004DC
	add r1, r5, r0
	mov r0, #0x54
	mul r0, r2
	add r4, r1, r0
	b _021FE346
_021FE332:
	lsl r3, r1, #4
	ldr r1, _021FE354 ; =ov01_02209044
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r0, _021FE358 ; =0x000004DC
	ldr r2, [r2, r1]
	mov r1, #0x54
	add r0, r5, r0
	mul r1, r2
	add r4, r0, r1
_021FE346:
	cmp r4, #0
	bne _021FE34E
	bl GF_AssertFail
_021FE34E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021FE354: .word ov01_02209044
_021FE358: .word 0x000004DC
	thumb_func_end ov01_021FE2DC

	thumb_func_start ov01_021FE35C
ov01_021FE35C: ; 0x021FE35C
	push {r4, lr}
	mov r4, #0
	cmp r1, #4
	bhi _021FE3B4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021FE370: ; jump table
	.short _021FE37A - _021FE370 - 2 ; case 0
	.short _021FE384 - _021FE370 - 2 ; case 1
	.short _021FE398 - _021FE370 - 2 ; case 2
	.short _021FE3A2 - _021FE370 - 2 ; case 3
	.short _021FE398 - _021FE370 - 2 ; case 4
_021FE37A:
	add r1, r0, #4
	mov r0, #0x14
	mul r0, r2
	add r4, r1, r0
	b _021FE3B4
_021FE384:
	ldr r1, _021FE3C0 ; =ov01_02209044
	lsl r3, r3, #4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r2, [r2, r1]
	mov r1, #0x14
	add r0, r0, #4
	mul r1, r2
	add r4, r0, r1
	b _021FE3B4
_021FE398:
	mov r1, #0x14
	add r0, #0xcc
	mul r1, r2
	add r4, r0, r1
	b _021FE3B4
_021FE3A2:
	ldr r1, _021FE3C0 ; =ov01_02209044
	lsl r3, r3, #4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r2, [r2, r1]
	mov r1, #0x14
	add r0, #0xcc
	mul r1, r2
	add r4, r0, r1
_021FE3B4:
	cmp r4, #0
	bne _021FE3BC
	bl GF_AssertFail
_021FE3BC:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_021FE3C0: .word ov01_02209044
	thumb_func_end ov01_021FE35C

	thumb_func_start ov01_021FE3C4
ov01_021FE3C4: ; 0x021FE3C4
	ldr r3, _021FE3CC ; =ov01_021FE3F8
	mov r1, #0
	bx r3
	nop
_021FE3CC: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3C4

	thumb_func_start ov01_021FE3D0
ov01_021FE3D0: ; 0x021FE3D0
	ldr r3, _021FE3D8 ; =ov01_021FE3F8
	mov r1, #1
	bx r3
	nop
_021FE3D8: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3D0

	thumb_func_start ov01_021FE3DC
ov01_021FE3DC: ; 0x021FE3DC
	ldr r3, _021FE3E4 ; =ov01_021FE3F8
	mov r1, #2
	bx r3
	nop
_021FE3E4: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3DC

	thumb_func_start ov01_021FE3E8
ov01_021FE3E8: ; 0x021FE3E8
	ldr r3, _021FE3F0 ; =ov01_021FE3F8
	mov r1, #4
	bx r3
	nop
_021FE3F0: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3E8

	thumb_func_start ov01_021FE3F4
ov01_021FE3F4: ; 0x021FE3F4
	mov r0, #0
	bx lr
	thumb_func_end ov01_021FE3F4

	thumb_func_start ov01_021FE3F8
ov01_021FE3F8: ; 0x021FE3F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r4, r1, #0
	bl MapObject_GetPrevX
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl MapObject_GetPrevY
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl MapObject_GetPosVecYCoord
	add r6, r0, #0
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl MapObject_GetPreviousFacing
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r7, r0, #0
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #2
	str r0, [sp, #8]
	bl ov01_021F1450
	mov r1, #2
	str r0, [sp, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FE454
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FE454:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	str r4, [sp, #0x20]
	bl ov01_021FE2DC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	bl ov01_021FE35C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x2c
	bl sub_020611C8
	str r6, [sp, #0x30]
	cmp r4, #5
	bhi _021FE4E0
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE48E: ; jump table
	.short _021FE49A - _021FE48E - 2 ; case 0
	.short _021FE49A - _021FE48E - 2 ; case 1
	.short _021FE4BC - _021FE48E - 2 ; case 2
	.short _021FE4BC - _021FE48E - 2 ; case 3
	.short _021FE49A - _021FE48E - 2 ; case 4
	.short _021FE49A - _021FE48E - 2 ; case 5
_021FE49A:
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r6, r0
	str r1, [sp, #0x30]
	sub r1, r4, #2
	cmp r1, #1
	bhi _021FE4B2
	ldr r1, [sp, #0x34]
	lsr r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x34]
	b _021FE4E0
_021FE4B2:
	ldr r1, [sp, #0x34]
	lsr r0, r0, #3
	add r0, r1, r0
	str r0, [sp, #0x34]
	b _021FE4E0
_021FE4BC:
	mov r0, #0xa
	lsl r0, r0, #0xc
	sub r0, r6, r0
	str r0, [sp, #0x30]
	sub r0, r4, #2
	cmp r0, #1
	bhi _021FE4D6
	mov r0, #2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x34]
	b _021FE4E0
_021FE4D6:
	mov r0, #2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x34]
_021FE4E0:
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, _021FE4F8 ; =ov01_02208FE0
	add r2, sp, #0x2c
	mov r3, #0
	str r7, [sp, #4]
	bl ov01_021F1620
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FE4F8: .word ov01_02208FE0
	thumb_func_end ov01_021FE3F8

	thumb_func_start ov01_021FE4FC
ov01_021FE4FC: ; 0x021FE4FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02068D98
	ldr r1, [r0, #8]
	str r1, [r4, #0x18]
	ldr r1, [r0, #4]
	str r1, [r4, #0x14]
	mov r1, #0x1f
	str r1, [r4, #0xc]
	ldr r0, [r0]
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE4FC

	thumb_func_start ov01_021FE524
ov01_021FE524: ; 0x021FE524
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FE524

	thumb_func_start ov01_021FE528
ov01_021FE528: ; 0x021FE528
	push {r3, lr}
	ldr r2, [r1]
	cmp r2, #0
	beq _021FE536
	cmp r2, #1
	beq _021FE548
	pop {r3, pc}
_021FE536:
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021FE554
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	pop {r3, pc}
_021FE548:
	ldr r2, [r1, #0xc]
	sub r2, r2, #2
	str r2, [r1, #0xc]
	bpl _021FE554
	bl ov01_021F1640
_021FE554:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE528

	thumb_func_start ov01_021FE558
ov01_021FE558: ; 0x021FE558
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021FE58A
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x14]
	mov r2, #0x1f
	ldr r0, [r0, #0xc]
	mov r1, #1
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl NNS_G3dMdlSetMdlAlphaAll
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_020699BC
_021FE58A:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE558

	thumb_func_start ov01_021FE590
ov01_021FE590: ; 0x021FE590
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE590

	thumb_func_start ov01_021FE5A4
ov01_021FE5A4: ; 0x021FE5A4
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FE61C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FE5A4

	thumb_func_start ov01_021FE5B4
ov01_021FE5B4: ; 0x021FE5B4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021FE5B4

	thumb_func_start ov01_021FE5BC
ov01_021FE5BC: ; 0x021FE5BC
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _021FE5CA
	bl GF_AssertFail
_021FE5CA:
	pop {r3, pc}
	thumb_func_end ov01_021FE5BC

	thumb_func_start ov01_021FE5CC
ov01_021FE5CC: ; 0x021FE5CC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021FE614
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x80
	bl ov01_021F18D4
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x95
	bl ov01_021F1908
	ldr r0, [r4, #8]
	mov r1, #0xc
	mov r2, #0x1a
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FE618 ; =ov01_022090AC
	mov r2, #0xb
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0xd
	add r3, r2, #0
	bl ov01_021F1758
_021FE614:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021FE618: .word ov01_022090AC
	thumb_func_end ov01_021FE5CC

	thumb_func_start ov01_021FE61C
ov01_021FE61C: ; 0x021FE61C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021FE64A
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov01_021F18FC
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov01_021F1924
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl ov01_021F1970
	ldr r0, [r4, #8]
	mov r1, #0xd
	bl ov01_021F18C8
_021FE64A:
	pop {r4, pc}
	thumb_func_end ov01_021FE61C

	thumb_func_start ov01_021FE64C
ov01_021FE64C: ; 0x021FE64C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FE658
	bl ov01_021FE5CC
_021FE658:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE64C

	thumb_func_start ov01_021FE65C
ov01_021FE65C: ; 0x021FE65C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FE668
	bl ov01_021FE61C
_021FE668:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE65C

	thumb_func_start ov01_021FE66C
ov01_021FE66C: ; 0x021FE66C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x14
	bl ov01_021F93AC
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x10
	str r4, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021FE6B0 ; =ov01_02209084
	add r0, r4, #0
	add r2, sp, #0x14
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021FE6B0: .word ov01_02209084
	thumb_func_end ov01_021FE66C

	thumb_func_start ov01_021FE6B4
ov01_021FE6B4: ; 0x021FE6B4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x10]
	bl ov01_021FE64C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	bl ov01_021FE5B4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FE6B4

	thumb_func_start ov01_021FE6F4
ov01_021FE6F4: ; 0x021FE6F4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	bl sub_02023DA4
	ldr r0, [r4, #0x10]
	bl ov01_021FE5BC
	ldr r0, [r4, #0x10]
	bl ov01_021FE65C
	pop {r4, pc}
	thumb_func_end ov01_021FE6F4

	thumb_func_start ov01_021FE70C
ov01_021FE70C: ; 0x021FE70C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021FE764 ; =ov01_02209098
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021FE748
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #5
	blt _021FE742
	add r0, r2, #0
	bl ov01_021F1640
	add sp, #0x14
	pop {r4, r5, pc}
_021FE742:
	ldr r0, [r4, #0x18]
	bl sub_02023F1C
_021FE748:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x18]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	bl sub_02023F04
	cmp r0, #1
	bne _021FE75E
	mov r0, #1
	str r0, [r4, #8]
_021FE75E:
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021FE764: .word ov01_02209098
	thumb_func_end ov01_021FE70C

	thumb_func_start ov01_021FE768
ov01_021FE768: ; 0x021FE768
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FE768

	thumb_func_start ov01_021FE780
ov01_021FE780: ; 0x021FE780
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FE7AC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE780

	thumb_func_start ov01_021FE79C
ov01_021FE79C: ; 0x021FE79C
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FE7D0
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FE79C

	thumb_func_start ov01_021FE7AC
ov01_021FE7AC: ; 0x021FE7AC
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x56
	bl ov01_021F19F4
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02069978
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE7AC

	thumb_func_start ov01_021FE7D0
ov01_021FE7D0: ; 0x021FE7D0
	ldr r3, _021FE7D8 ; =sub_02069784
	add r0, r0, #4
	bx r3
	nop
_021FE7D8: .word sub_02069784
	thumb_func_end ov01_021FE7D0

	thumb_func_start ov01_021FE7DC
ov01_021FE7DC: ; 0x021FE7DC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r6, r2, #0
	add r2, sp, #0x14
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	str r3, [sp, #0x20]
	bl ov01_021F146C
	mov r1, #4
	str r0, [sp, #0x24]
	bl ov01_021F1450
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	str r5, [sp, #0x2c]
	cmp r0, #0
	bne _021FE826
	add r0, r5, #0
	bl MapObject_GetFieldSysPtr
	mov r1, #2
	lsl r2, r4, #0x10
	lsl r1, r1, #0xe
	add r2, r2, r1
	str r2, [sp, #0x14]
	lsl r2, r6, #0x10
	add r1, r2, r1
	str r1, [sp, #0x1c]
	add r1, sp, #0x14
	bl sub_0206121C
	b _021FE842
_021FE826:
	ldr r3, _021FE860 ; =ov01_022090D0
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x14
	str r0, [r2]
	add r0, r5, #0
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0205F9A0
_021FE842:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x20
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, _021FE864 ; =ov01_022090DC
	ldr r3, [sp, #0x40]
	add r2, sp, #0x14
	bl ov01_021F1620
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FE860: .word ov01_022090D0
_021FE864: .word ov01_022090DC
	thumb_func_end ov01_021FE7DC

	thumb_func_start ov01_021FE868
ov01_021FE868: ; 0x021FE868
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02068D98
	add r7, r0, #0
	add r2, r5, #0
	add r3, r7, #0
	ldr r4, [r7, #0xc]
	add r2, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	bl MapObject_GetID
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0205F254
	str r0, [r5, #0x10]
	ldr r0, [r7]
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_02068D90
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	lsr r0, r0, #2
	str r0, [r5, #0x20]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE868

	thumb_func_start ov01_021FE8B0
ov01_021FE8B0: ; 0x021FE8B0
	push {lr}
	sub sp, #0xc
	ldr r0, [r1, #0x30]
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	bl sub_0205F9A0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov01_021FE8B0

	thumb_func_start ov01_021FE8C8
ov01_021FE8C8: ; 0x021FE8C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x30]
	ldr r1, [r5, #0xc]
	add r6, r0, #0
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _021FE8EA
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021FE8EA:
	mov r0, #0
	str r0, [r5]
	add r0, r4, #0
	bl MapObject_GetFacingDirection
	mov r1, #0
	mvn r1, r1
	str r0, [r5, #4]
	cmp r0, r1
	bne _021FE906
	mov r0, #1
	add sp, #0x18
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021FE906:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021FE96C
	str r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xe
	str r2, [r5, #0x1c]
	cmp r2, r1
	blt _021FE928
	str r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	neg r0, r0
	str r0, [r5, #0x20]
	b _021FE936
_021FE928:
	lsr r0, r1, #2
	cmp r2, r0
	bgt _021FE936
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	neg r0, r0
	str r0, [r5, #0x20]
_021FE936:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_0205F9A0
	add r0, r4, #0
	add r1, sp, #0
	bl MapObject_GetPositionVec
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	ldr r2, [sp, #4]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02068DA8
_021FE96C:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FE8C8

	thumb_func_start ov01_021FE970
ov01_021FE970: ; 0x021FE970
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3]
	cmp r0, #1
	beq _021FE9E6
	mov r0, #0
	ldr r1, [r3, #8]
	mvn r0, r0
	cmp r1, r0
	beq _021FE9E6
	ldr r0, [r3, #0x14]
	ldr r5, _021FE9EC ; =ov01_022090C4
	add r0, r0, #1
	str r0, [r3, #0x14]
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r2, #0
	str r0, [r4]
	ldr r4, [r3, #0x2c]
	ldr r0, [r3, #8]
	add r4, #0x18
	cmp r0, #3
	bhi _021FE9C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE9B2: ; jump table
	.short _021FE9BA - _021FE9B2 - 2 ; case 0
	.short _021FE9C4 - _021FE9B2 - 2 ; case 1
	.short _021FE9BE - _021FE9B2 - 2 ; case 2
	.short _021FE9C2 - _021FE9B2 - 2 ; case 3
_021FE9BA:
	mov r2, #0xb4
	b _021FE9C4
_021FE9BE:
	ldr r2, _021FE9F0 ; =0x0000010E
	b _021FE9C4
_021FE9C2:
	mov r2, #0x5a
_021FE9C4:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02020DA4
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, sp, #0x18
	bl sub_020699AC
_021FE9E6:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021FE9EC: .word ov01_022090C4
_021FE9F0: .word 0x0000010E
	thumb_func_end ov01_021FE970

	thumb_func_start ov01_021FE9F4
ov01_021FE9F4: ; 0x021FE9F4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02068D74
	mov r1, #1
	str r4, [r0, #0x18]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	lsr r1, r1, #2
	str r1, [r0, #0x20]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE9F4

	thumb_func_start ov01_021FEA0C
ov01_021FEA0C: ; 0x021FEA0C
	push {r4, lr}
	mov r2, #0
	mov r1, #0x7c
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEA0C

	thumb_func_start ov01_021FEA20
ov01_021FEA20: ; 0x021FEA20
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEA7C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEA20

	thumb_func_start ov01_021FEA30
ov01_021FEA30: ; 0x021FEA30
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021FEA30

	thumb_func_start ov01_021FEA38
ov01_021FEA38: ; 0x021FEA38
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _021FEA46
	bl GF_AssertFail
_021FEA46:
	pop {r3, pc}
	thumb_func_end ov01_021FEA38

	thumb_func_start ov01_021FEA48
ov01_021FEA48: ; 0x021FEA48
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021FEA76
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x14
	mov r2, #0
	mov r3, #0x57
	bl ov01_021F19F4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x28
	add r1, #0x14
	bl sub_02069978
	mov r0, #1
	str r0, [r4, #4]
_021FEA76:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEA48

	thumb_func_start ov01_021FEA7C
ov01_021FEA7C: ; 0x021FEA7C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _021FEA8E
	mov r1, #0
	str r1, [r0, #4]
	add r0, #0x14
	bl sub_02069784
_021FEA8E:
	pop {r3, pc}
	thumb_func_end ov01_021FEA7C

	thumb_func_start ov01_021FEA90
ov01_021FEA90: ; 0x021FEA90
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FEA9C
	bl ov01_021FEA48
_021FEA9C:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEA90

	thumb_func_start ov01_021FEAA0
ov01_021FEAA0: ; 0x021FEAA0
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FEAAC
	bl ov01_021FEA7C
_021FEAAC:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEAA0

	thumb_func_start ov01_021FEAB0
ov01_021FEAB0: ; 0x021FEAB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r1, #0
	add r7, r2, #0
	add r2, sp, #0xc
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r3, [sp, #8]
	add r5, r0, #0
	str r1, [r2, #8]
	bl ov01_021F146C
	add r4, r0, #0
	ldr r0, [sp, #8]
	str r4, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #0x20]
	add r0, r4, #0
	mov r1, #5
	bl ov01_021F1450
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r5, [sp, #0x28]
	cmp r0, #0
	bne _021FEB06
	mov r0, #2
	lsl r1, r6, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0xc]
	lsl r1, r7, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r1, sp, #0xc
	bl sub_0206121C
	b _021FEB0E
_021FEB06:
	add r0, r5, #0
	add r1, sp, #0xc
	bl MapObject_GetPositionVec
_021FEB0E:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FEB2C ; =ov01_022090FC
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	add r2, sp, #0xc
	bl ov01_021F1620
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FEB2C: .word ov01_022090FC
	thumb_func_end ov01_021FEAB0

	thumb_func_start ov01_021FEB30
ov01_021FEB30: ; 0x021FEB30
	push {r4, lr}
	add r4, r1, #0
	bl sub_02068D74
	str r4, [r0, #0xc]
	pop {r4, pc}
	thumb_func_end ov01_021FEB30

	thumb_func_start ov01_021FEB3C
ov01_021FEB3C: ; 0x021FEB3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r2, r0, #0
	add r6, r2, #0
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x10
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r2]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	bl ov01_021FEA90
	ldr r0, [r4, #0x1c]
	bl ov01_021FEA30
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEB3C

	thumb_func_start ov01_021FEB78
ov01_021FEB78: ; 0x021FEB78
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	bl ov01_021FEA38
	ldr r0, [r4, #0x1c]
	bl ov01_021FEAA0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEB78

	thumb_func_start ov01_021FEB8C
ov01_021FEB8C: ; 0x021FEB8C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r4, [r1, #0x20]
	cmp r0, #0
	beq _021FEBBA
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_0205F9A0
	add r0, r4, #0
	add r1, sp, #0
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
_021FEBBA:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEB8C

	thumb_func_start ov01_021FEBC0
ov01_021FEBC0: ; 0x021FEBC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3]
	cmp r0, #1
	beq _021FEC2C
	ldr r0, [r3, #8]
	ldr r5, _021FEC30 ; =ov01_022090F0
	add r0, r0, #1
	str r0, [r3, #8]
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r2, #0
	str r0, [r4]
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #4]
	add r4, #0x28
	cmp r0, #3
	bhi _021FEC0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FEBF8: ; jump table
	.short _021FEC00 - _021FEBF8 - 2 ; case 0
	.short _021FEC0A - _021FEBF8 - 2 ; case 1
	.short _021FEC04 - _021FEBF8 - 2 ; case 2
	.short _021FEC08 - _021FEBF8 - 2 ; case 3
_021FEC00:
	mov r2, #0xb4
	b _021FEC0A
_021FEC04:
	ldr r2, _021FEC34 ; =0x0000010E
	b _021FEC0A
_021FEC08:
	mov r2, #0x5a
_021FEC0A:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02020DA4
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, sp, #0x18
	bl sub_020699AC
_021FEC2C:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FEC30: .word ov01_022090F0
_021FEC34: .word 0x0000010E
	thumb_func_end ov01_021FEBC0

	thumb_func_start ov01_021FEC38
ov01_021FEC38: ; 0x021FEC38
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FEC64
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEC38

	thumb_func_start ov01_021FEC54
ov01_021FEC54: ; 0x021FEC54
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEC8C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEC54

	thumb_func_start ov01_021FEC64
ov01_021FEC64: ; 0x021FEC64
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x1d
	bl ov01_021F19F4
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0x86
	bl ov01_021F1A18
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov01_021FEC64

	thumb_func_start ov01_021FEC8C
ov01_021FEC8C: ; 0x021FEC8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_02069784
	add r4, #0x18
	add r0, r4, #0
	bl sub_020698D0
	pop {r4, pc}
	thumb_func_end ov01_021FEC8C

	thumb_func_start ov01_021FECA0
ov01_021FECA0: ; 0x021FECA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	mov r1, #2
	lsl r1, r1, #8
	add r5, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	bl MapObject_TestBits
	cmp r0, #1
	beq _021FED0A
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #6
	str r0, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_020611C8
	mov r0, #1
	ldr r2, [sp, #0x18]
	lsl r1, r4, #3
	lsl r0, r0, #0xc
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl MapObject_GetPrevHeight
	lsl r1, r0, #0xf
	mov r0, #2
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021FED10 ; =ov01_02209110
	add r2, sp, #0x10
	mov r3, #0
	bl ov01_021F1620
_021FED0A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FED10: .word ov01_02209110
	thumb_func_end ov01_021FECA0

	thumb_func_start ov01_021FED14
ov01_021FED14: ; 0x021FED14
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_02068D98
	ldr r3, [r0, #4]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r3, #0x18
	bl ov01_021F1A34
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, r1, #4
	add r2, r4, #0
	bl sub_02069998
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED14

	thumb_func_start ov01_021FED4C
ov01_021FED4C: ; 0x021FED4C
	ldr r3, _021FED54 ; =sub_020698D0
	add r0, r1, #0
	bx r3
	nop
_021FED54: .word sub_020698D0
	thumb_func_end ov01_021FED4C

	thumb_func_start ov01_021FED58
ov01_021FED58: ; 0x021FED58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02069948
	cmp r0, #1
	bne _021FED70
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, pc}
_021FED70:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_020698E8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED58

	thumb_func_start ov01_021FED80
ov01_021FED80: ; 0x021FED80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	add r4, #0x24
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020699BC
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED80

	thumb_func_start ov01_021FED9C
ov01_021FED9C: ; 0x021FED9C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FEDC8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED9C

	thumb_func_start ov01_021FEDB8
ov01_021FEDB8: ; 0x021FEDB8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEDF0
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEDB8

	thumb_func_start ov01_021FEDC8
ov01_021FEDC8: ; 0x021FEDC8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x1e
	bl ov01_021F19F4
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0x87
	bl ov01_021F1A18
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov01_021FEDC8

	thumb_func_start ov01_021FEDF0
ov01_021FEDF0: ; 0x021FEDF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_02069784
	add r4, #0x18
	add r0, r4, #0
	bl sub_020698D0
	pop {r4, pc}
	thumb_func_end ov01_021FEDF0

	thumb_func_start ov01_021FEE04
ov01_021FEE04: ; 0x021FEE04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov01_021F146C
	mov r1, #7
	str r0, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_020611C8
	ldr r1, [sp, #0x18]
	lsl r0, r4, #3
	add r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl MapObject_GetPrevHeight
	lsl r1, r0, #0xf
	mov r0, #2
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021FEE60 ; =ov01_02209124
	add r2, sp, #0x10
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FEE60: .word ov01_02209124
	thumb_func_end ov01_021FEE04

	thumb_func_start ov01_021FEE64
ov01_021FEE64: ; 0x021FEE64
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_02068D98
	ldr r3, [r0, #4]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r3, #0x18
	bl ov01_021F1A34
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, r1, #4
	add r2, r4, #0
	bl sub_02069998
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEE64

	thumb_func_start ov01_021FEE9C
ov01_021FEE9C: ; 0x021FEE9C
	ldr r3, _021FEEA4 ; =sub_020698D0
	add r0, r1, #0
	bx r3
	nop
_021FEEA4: .word sub_020698D0
	thumb_func_end ov01_021FEE9C

	thumb_func_start ov01_021FEEA8
ov01_021FEEA8: ; 0x021FEEA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02069948
	cmp r0, #1
	bne _021FEEC0
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, pc}
_021FEEC0:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_020698E8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEEA8

	thumb_func_start ov01_021FEED0
ov01_021FEED0: ; 0x021FEED0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	add r4, #0x24
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020699BC
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEED0

	thumb_func_start ov01_021FEEEC
ov01_021FEEEC: ; 0x021FEEEC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FEF18
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEEEC

	thumb_func_start ov01_021FEF08
ov01_021FEF08: ; 0x021FEF08
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEFF8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEF08

	thumb_func_start ov01_021FEF18
ov01_021FEF18: ; 0x021FEF18
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x7e
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0x7f
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x8c
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x8d
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x8e
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0x8f
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x19
	mov r3, #1
	bl ov01_021F1930
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x10
	mov r3, #1
	bl ov01_021F1930
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl ov01_021F1930
	mov r2, #1
	ldr r0, [r4]
	mov r1, #6
	add r3, r2, #0
	bl ov01_021F1930
	mov r1, #0
	str r1, [sp]
	ldr r0, _021FEFE8 ; =ov01_02209178
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r1, #0
	bl ov01_021F1758
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FEFEC ; =ov01_02209190
	mov r1, #5
	str r0, [sp, #8]
	ldr r0, [r4]
	add r2, r1, #0
	mov r3, #3
	bl ov01_021F1758
	mov r2, #5
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FEFF0 ; =ov01_02209160
	mov r1, #6
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, #4
	bl ov01_021F1758
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FEFF4 ; =ov01_022091A8
	mov r2, #5
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #7
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021FEFE8: .word ov01_02209178
_021FEFEC: .word ov01_02209190
_021FEFF0: .word ov01_02209160
_021FEFF4: .word ov01_022091A8
	thumb_func_end ov01_021FEF18

	thumb_func_start ov01_021FEFF8
ov01_021FEFF8: ; 0x021FEFF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #4
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #4
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F18C8
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F18C8
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F18C8
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEFF8

	thumb_func_start ov01_021FF070
ov01_021FF070: ; 0x021FF070
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentX
	str r0, [sp, #8]
	add r0, r5, #0
	bl MapObject_GetCurrentHeight
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl MapObject_GetCurrentY
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, sp, #8
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	sub r1, r1, #1
	add r0, sp, #0x28
	strb r1, [r0]
	add r0, r4, #0
	str r4, [sp, #0x18]
	bl ov01_021F1468
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #8
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x2c
	str r5, [sp, #0x20]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF0E0 ; =ov01_02209138
	add r0, r4, #0
	add r2, sp, #0x2c
	add r3, r6, #0
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FF0E0: .word ov01_02209138
	thumb_func_end ov01_021FF070

	thumb_func_start ov01_021FF0E4
ov01_021FF0E4: ; 0x021FF0E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp, #8]
	add r4, r2, #0
	add r6, r3, #0
	bl ov01_021F146C
	add r7, r0, #0
	add r0, r5, #0
	str r4, [sp, #0xc]
	bl MapObject_GetCurrentHeight
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r6, [sp, #0x14]
	bl MapObject_GetCurrentX
	sub r1, r0, r4
	add r0, sp, #0xc
	strh r1, [r0, #0x1c]
	add r0, r5, #0
	bl MapObject_GetCurrentY
	sub r1, r0, r6
	add r0, sp, #0xc
	strh r1, [r0, #0x1e]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021FF12C
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	add r1, sp, #0x2c
	strb r0, [r1]
	b _021FF134
_021FF12C:
	mov r1, #0
	mvn r1, r1
	add r0, sp, #0x2c
	strb r1, [r0]
_021FF134:
	add r0, r7, #0
	str r7, [sp, #0x1c]
	bl ov01_021F1468
	str r0, [sp, #0x18]
	add r0, r7, #0
	mov r1, #8
	bl ov01_021F1450
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, sp, #0x30
	str r5, [sp, #0x24]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF170 ; =ov01_02209138
	ldr r3, [sp, #8]
	add r0, r7, #0
	add r2, sp, #0x30
	bl ov01_021F1620
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF170: .word ov01_02209138
	thumb_func_end ov01_021FF0E4

	thumb_func_start ov01_021FF174
ov01_021FF174: ; 0x021FF174
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r4, #0
	add r6, r0, #0
	add r3, #0x18
	mov r2, #4
_021FF188:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FF188
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #0x30]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl MapObject_GetPosVecYCoord
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_0206121C
	str r0, [r4, #0x14]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x28]
	mov r1, #0
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x3c]
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FF208
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023EA4
_021FF208:
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #0
	bne _021FF220
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	mov r0, #2
	str r0, [r4]
_021FF220:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF174

	thumb_func_start ov01_021FF228
ov01_021FF228: ; 0x021FF228
	ldr r3, _021FF230 ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FF230: .word sub_02023DA4
	thumb_func_end ov01_021FF228

	thumb_func_start ov01_021FF234
ov01_021FF234: ; 0x021FF234
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF258
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF258:
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _021FF270
	mov r1, #0
	bl sub_02023EA4
	b _021FF276
_021FF270:
	mov r1, #1
	bl sub_02023EA4
_021FF276:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021FF2AE
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _021FF2AE
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02068DA8
_021FF2AE:
	ldr r0, [r4]
	cmp r0, #0
	beq _021FF2C0
	cmp r0, #1
	beq _021FF2E4
	cmp r0, #2
	beq _021FF2F2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF2C0:
	mov r1, #1
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x3c]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021FF358
	mov r0, #1
	add sp, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FF2E4:
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	mov r0, #2
	str r0, [r4]
_021FF2F2:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF30C
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF30C:
	add r0, r6, #0
	bl MapObject_GetCurrentX
	mov r1, #0x34
	ldrsh r1, [r4, r1]
	sub r7, r0, r1
	add r0, r6, #0
	bl MapObject_GetCurrentY
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	sub r1, r0, r1
	ldr r0, [r4, #0x18]
	cmp r0, r7
	bne _021FF330
	ldr r0, [r4, #0x20]
	cmp r0, r1
	beq _021FF33A
_021FF330:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF33A:
	mov r0, #0x38
	ldrsb r1, [r4, r0]
	sub r0, #0x39
	cmp r1, r0
	beq _021FF358
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	mov r1, #0x38
	ldrsb r1, [r4, r1]
	cmp r1, r0
	beq _021FF358
	add r0, r5, #0
	bl ov01_021F1640
_021FF358:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FF234

	thumb_func_start ov01_021FF35C
ov01_021FF35C: ; 0x021FF35C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF37E
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_021FF37E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF35C

	thumb_func_start ov01_021FF394
ov01_021FF394: ; 0x021FF394
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r1, r0, #0x10
	mov r0, #9
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_0206121C
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021FF3FE
	cmp r0, #1
	beq _021FF402
	cmp r0, #2
	b _021FF406
_021FF3FE:
	mov r1, #5
	b _021FF408
_021FF402:
	mov r1, #6
	b _021FF408
_021FF406:
	mov r1, #7
_021FF408:
	ldr r0, [r4, #0x1c]
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x24]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FF394

	thumb_func_start ov01_021FF418
ov01_021FF418: ; 0x021FF418
	ldr r3, _021FF420 ; =sub_02023DA4
	ldr r0, [r1, #0x24]
	bx r3
	nop
_021FF420: .word sub_02023DA4
	thumb_func_end ov01_021FF418

	thumb_func_start ov01_021FF424
ov01_021FF424: ; 0x021FF424
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FF432
	cmp r0, #1
	pop {r4, pc}
_021FF432:
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02023F04
	cmp r0, #1
	bne _021FF44A
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021FF44A:
	pop {r4, pc}
	thumb_func_end ov01_021FF424

	thumb_func_start ov01_021FF44C
ov01_021FF44C: ; 0x021FF44C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FF44C

	thumb_func_start ov01_021FF464
ov01_021FF464: ; 0x021FF464
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FF490
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF464

	thumb_func_start ov01_021FF480
ov01_021FF480: ; 0x021FF480
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FF4D4
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FF480

	thumb_func_start ov01_021FF490
ov01_021FF490: ; 0x021FF490
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x77
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x90
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x12
	mov r3, #1
	bl ov01_021F1930
	mov r3, #2
	mov r1, #3
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FF4D0 ; =ov01_022091D4
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021FF4D0: .word ov01_022091D4
	thumb_func_end ov01_021FF490

	thumb_func_start ov01_021FF4D4
ov01_021FF4D4: ; 0x021FF4D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #2
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #2
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF4D4

	thumb_func_start ov01_021FF4FC
ov01_021FF4FC: ; 0x021FF4FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xa
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r5, [sp, #0x20]
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF548 ; =ov01_022091C0
	add r0, r4, #0
	add r2, sp, #8
	add r3, r6, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FF548: .word ov01_022091C0
	thumb_func_end ov01_021FF4FC

	thumb_func_start ov01_021FF54C
ov01_021FF54C: ; 0x021FF54C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x20]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x20]
	bl sub_0205F254
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x18]
	mov r1, #3
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x24]
	mov r1, #2
	ldr r0, [r4, #0x20]
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FF5B2
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02023EA4
_021FF5B2:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FF54C

	thumb_func_start ov01_021FF5B8
ov01_021FF5B8: ; 0x021FF5B8
	ldr r3, _021FF5C0 ; =sub_02023DA4
	ldr r0, [r1, #0x24]
	bx r3
	nop
_021FF5C0: .word sub_02023DA4
	thumb_func_end ov01_021FF5B8

	thumb_func_start ov01_021FF5C4
ov01_021FF5C4: ; 0x021FF5C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF5E4
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, r6, r7, pc}
_021FF5E4:
	add r0, r5, #0
	bl sub_02068D90
	add r7, r0, #0
	cmp r7, #1
	bne _021FF602
	add r0, r6, #0
	bl sub_0205F808
	cmp r0, #0
	bne _021FF602
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, r6, r7, pc}
_021FF602:
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	ldr r0, [r4, #0x24]
	bne _021FF61A
	mov r1, #0
	bl sub_02023EA4
	b _021FF620
_021FF61A:
	mov r1, #1
	bl sub_02023EA4
_021FF620:
	ldr r0, [r4]
	cmp r0, #0
	bne _021FF656
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x24]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021FF656
	cmp r7, #0
	bne _021FF64E
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, r6, r7, pc}
_021FF64E:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02023F1C
_021FF656:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FF5C4

	thumb_func_start ov01_021FF658
ov01_021FF658: ; 0x021FF658
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x20]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r4, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF67C
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021FF67C:
	add r0, r4, #0
	add r1, sp, #0xc
	bl MapObject_GetPositionVec
	add r0, r4, #0
	add r1, sp, #0
	bl MapObject_GetFacingVec
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	str r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x24]
	add r1, sp, #0xc
	bl sub_02023E50
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FF658

	thumb_func_start ov01_021FF6B0
ov01_021FF6B0: ; 0x021FF6B0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FF6DC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF6B0

	thumb_func_start ov01_021FF6CC
ov01_021FF6CC: ; 0x021FF6CC
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FF724
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FF6CC

	thumb_func_start ov01_021FF6DC
ov01_021FF6DC: ; 0x021FF6DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0x79
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0x91
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0x14
	mov r3, #1
	bl ov01_021F1930
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FF720 ; =ov01_02209200
	mov r2, #6
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #8
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021FF720: .word ov01_02209200
	thumb_func_end ov01_021FF6DC

	thumb_func_start ov01_021FF724
ov01_021FF724: ; 0x021FF724
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF724

	thumb_func_start ov01_021FF74C
ov01_021FF74C: ; 0x021FF74C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xb
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x20]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	bl MapObject_GetCurrentX
	add r6, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentY
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #8
	bl sub_020611C8
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF7AC ; =ov01_022091EC
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FF7AC: .word ov01_022091EC
	thumb_func_end ov01_021FF74C

	thumb_func_start ov01_021FF7B0
ov01_021FF7B0: ; 0x021FF7B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl MapObject_GetID
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F254
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x14]
	mov r1, #8
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FF7B0

	thumb_func_start ov01_021FF7F4
ov01_021FF7F4: ; 0x021FF7F4
	ldr r3, _021FF7FC ; =sub_02023DA4
	ldr r0, [r1, #0x20]
	bx r3
	nop
_021FF7FC: .word sub_02023DA4
	thumb_func_end ov01_021FF7F4

	thumb_func_start ov01_021FF800
ov01_021FF800: ; 0x021FF800
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _021FF82E
	mov r1, #1
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x20]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #9
	blt _021FF82E
	add r0, r5, #0
	bl ov01_021F1640
_021FF82E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FF800

	thumb_func_start ov01_021FF830
ov01_021FF830: ; 0x021FF830
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF830

	thumb_func_start ov01_021FF854
ov01_021FF854: ; 0x021FF854
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FF880
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF854

	thumb_func_start ov01_021FF870
ov01_021FF870: ; 0x021FF870
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FF8C8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FF870

	thumb_func_start ov01_021FF880
ov01_021FF880: ; 0x021FF880
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0x7a
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0x92
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x15
	mov r3, #1
	bl ov01_021F1930
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FF8C4 ; =ov01_0220922C
	mov r2, #7
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #9
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021FF8C4: .word ov01_0220922C
	thumb_func_end ov01_021FF880

	thumb_func_start ov01_021FF8C8
ov01_021FF8C8: ; 0x021FF8C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF8C8

	thumb_func_start ov01_021FF8F0
ov01_021FF8F0: ; 0x021FF8F0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentX
	str r0, [sp, #8]
	add r0, r5, #0
	bl MapObject_GetCurrentHeight
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl MapObject_GetCurrentY
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, sp, #8
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	sub r1, r1, #1
	add r0, sp, #0x28
	strb r1, [r0]
	add r0, r4, #0
	str r4, [sp, #0x18]
	bl ov01_021F1468
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xc
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x2c
	str r5, [sp, #0x20]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF960 ; =ov01_02209218
	add r0, r4, #0
	add r2, sp, #0x2c
	add r3, r6, #0
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FF960: .word ov01_02209218
	thumb_func_end ov01_021FF8F0

	thumb_func_start ov01_021FF964
ov01_021FF964: ; 0x021FF964
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp, #8]
	add r4, r2, #0
	add r6, r3, #0
	bl ov01_021F146C
	add r7, r0, #0
	add r0, r5, #0
	str r4, [sp, #0xc]
	bl MapObject_GetCurrentHeight
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r6, [sp, #0x14]
	bl MapObject_GetCurrentX
	sub r1, r0, r4
	add r0, sp, #0xc
	strh r1, [r0, #0x1c]
	add r0, r5, #0
	bl MapObject_GetCurrentY
	sub r1, r0, r6
	add r0, sp, #0xc
	strh r1, [r0, #0x1e]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021FF9AC
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	add r1, sp, #0x2c
	strb r0, [r1]
	b _021FF9B4
_021FF9AC:
	mov r1, #0
	mvn r1, r1
	add r0, sp, #0x2c
	strb r1, [r0]
_021FF9B4:
	add r0, r7, #0
	str r7, [sp, #0x1c]
	bl ov01_021F1468
	str r0, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0xc
	bl ov01_021F1450
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, sp, #0x30
	str r5, [sp, #0x24]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF9F0 ; =ov01_02209218
	ldr r3, [sp, #8]
	add r0, r7, #0
	add r2, sp, #0x30
	bl ov01_021F1620
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF9F0: .word ov01_02209218
	thumb_func_end ov01_021FF964

	thumb_func_start ov01_021FF9F4
ov01_021FF9F4: ; 0x021FF9F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r4, #0
	add r6, r0, #0
	add r3, #0x18
	mov r2, #4
_021FFA08:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FFA08
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #0x30]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl MapObject_GetPosVecYCoord
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_0206121C
	str r0, [r4, #0x14]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x28]
	mov r1, #9
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x3c]
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FFA88
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023EA4
_021FFA88:
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #0
	bne _021FFAA8
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023F04
	mov r0, #2
	str r0, [r4]
_021FFAA8:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF9F4

	thumb_func_start ov01_021FFAB0
ov01_021FFAB0: ; 0x021FFAB0
	ldr r3, _021FFAB8 ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FFAB8: .word sub_02023DA4
	thumb_func_end ov01_021FFAB0

	thumb_func_start ov01_021FFABC
ov01_021FFABC: ; 0x021FFABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFAE0
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFAE0:
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _021FFAF8
	mov r1, #0
	bl sub_02023EA4
	b _021FFAFE
_021FFAF8:
	mov r1, #1
	bl sub_02023EA4
_021FFAFE:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021FFB36
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _021FFB36
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02068DA8
_021FFB36:
	ldr r0, [r4]
	cmp r0, #0
	beq _021FFB48
	cmp r0, #1
	beq _021FFB6C
	cmp r0, #2
	beq _021FFB82
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFB48:
	mov r1, #1
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x3c]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021FFBCE
	mov r0, #1
	add sp, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FFB6C:
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023F04
	mov r0, #2
	str r0, [r4]
_021FFB82:
	add r0, r6, #0
	bl MapObject_GetCurrentX
	mov r1, #0x34
	ldrsh r1, [r4, r1]
	sub r7, r0, r1
	add r0, r6, #0
	bl MapObject_GetCurrentY
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	sub r1, r0, r1
	ldr r0, [r4, #0x18]
	cmp r0, r7
	bne _021FFBA6
	ldr r0, [r4, #0x20]
	cmp r0, r1
	beq _021FFBB0
_021FFBA6:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFBB0:
	mov r0, #0x38
	ldrsb r1, [r4, r0]
	sub r0, #0x39
	cmp r1, r0
	beq _021FFBCE
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	mov r1, #0x38
	ldrsb r1, [r4, r1]
	cmp r1, r0
	beq _021FFBCE
	add r0, r5, #0
	bl ov01_021F1640
_021FFBCE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFABC

	thumb_func_start ov01_021FFBD4
ov01_021FFBD4: ; 0x021FFBD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFBF6
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_021FFBF6:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFBD4

	thumb_func_start ov01_021FFC0C
ov01_021FFC0C: ; 0x021FFC0C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FFC38
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFC0C

	thumb_func_start ov01_021FFC28
ov01_021FFC28: ; 0x021FFC28
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FFC80
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FFC28

	thumb_func_start ov01_021FFC38
ov01_021FFC38: ; 0x021FFC38
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x7b
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x93
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0x16
	mov r3, #1
	bl ov01_021F1930
	mov r0, #9
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FFC7C ; =ov01_02209258
	mov r2, #8
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0xa
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021FFC7C: .word ov01_02209258
	thumb_func_end ov01_021FFC38

	thumb_func_start ov01_021FFC80
ov01_021FFC80: ; 0x021FFC80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0xa
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFC80

	thumb_func_start ov01_021FFCA8
ov01_021FFCA8: ; 0x021FFCA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r4, #0
	add r6, r0, #0
	add r3, #0x18
	mov r2, #4
_021FFCBC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FFCBC
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #0x30]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl MapObject_GetPosVecYCoord
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_0206121C
	str r0, [r4, #0x14]
	mov r0, #0x1e
	ldr r1, [sp]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0xd
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x28]
	mov r1, #0xa
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x3c]
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	bne _021FFD46
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023EA4
_021FFD46:
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #0
	bne _021FFD5E
	mov r1, #2
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F1C
	mov r0, #2
	str r0, [r4]
_021FFD5E:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FFCA8

	thumb_func_start ov01_021FFD64
ov01_021FFD64: ; 0x021FFD64
	ldr r3, _021FFD6C ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FFD6C: .word sub_02023DA4
	thumb_func_end ov01_021FFD64

	thumb_func_start ov01_021FFD70
ov01_021FFD70: ; 0x021FFD70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r7, [r5, #0x30]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r7, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFD94
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFD94:
	mov r1, #2
	add r0, r7, #0
	lsl r1, r1, #8
	bl MapObject_TestBits
	cmp r0, #1
	ldr r0, [r5, #0x3c]
	bne _021FFDAC
	mov r1, #0
	bl sub_02023EA4
	b _021FFDB2
_021FFDAC:
	mov r1, #1
	bl sub_02023EA4
_021FFDB2:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021FFDEA
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	bl sub_0206121C
	str r0, [r5, #0x14]
	cmp r0, #1
	bne _021FFDEA
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02068DA8
_021FFDEA:
	ldr r0, [r5]
	cmp r0, #0
	beq _021FFDFC
	cmp r0, #1
	beq _021FFE20
	cmp r0, #2
	beq _021FFE36
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFDFC:
	mov r1, #1
	ldr r0, [r5, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r5, #0x3c]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #2
	blt _021FFE92
	mov r0, #1
	add sp, #0x18
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFE20:
	mov r1, #2
	ldr r0, [r5, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F1C
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_02023F04
	mov r0, #2
	str r0, [r5]
_021FFE36:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r7, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFE50
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFE50:
	add r0, r7, #0
	bl MapObject_GetCurrentX
	add r4, r0, #0
	add r0, r7, #0
	bl MapObject_GetCurrentY
	ldr r1, [r5, #0x18]
	cmp r1, r4
	bne _021FFE6A
	ldr r1, [r5, #0x20]
	cmp r1, r0
	beq _021FFE74
_021FFE6A:
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFE74:
	mov r0, #0x38
	ldrsb r1, [r5, r0]
	sub r0, #0x39
	cmp r1, r0
	beq _021FFE92
	add r0, r7, #0
	bl MapObject_GetFacingDirection
	mov r1, #0x38
	ldrsb r1, [r5, r1]
	cmp r1, r0
	beq _021FFE92
	add r0, r6, #0
	bl ov01_021F1640
_021FFE92:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFD70

	thumb_func_start ov01_021FFE98
ov01_021FFE98: ; 0x021FFE98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_0205F0A8
	cmp r0, #0
	bne _021FFEB8
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_021FFEB8:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FFE98

	thumb_func_start ov01_021FFECC
ov01_021FFECC: ; 0x021FFECC
	push {r3, r4, r5, lr}
	mov r1, #0x69
	mov r2, #0
	lsl r1, r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FFEF8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FFECC

	thumb_func_start ov01_021FFEE8
ov01_021FFEE8: ; 0x021FFEE8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FFF38
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FFEE8

	thumb_func_start ov01_021FFEF8
ov01_021FFEF8: ; 0x021FFEF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r6, _021FFF34 ; =ov01_02209270
	str r0, [sp, #4]
	mov r7, #0
	add r4, r0, #4
	add r5, #0x54
_021FFF08:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F19F4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069978
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	add r5, #0x54
	cmp r7, #4
	blt _021FFF08
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FFF34: .word ov01_02209270
	thumb_func_end ov01_021FFEF8

	thumb_func_start ov01_021FFF38
ov01_021FFF38: ; 0x021FFF38
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #4
_021FFF3E:
	add r0, r5, #0
	bl sub_02069784
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _021FFF3E
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFF38

	thumb_func_start ov01_021FFF50
ov01_021FFF50: ; 0x021FFF50
	mov r2, #0x54
	add r0, #0x54
	mul r2, r1
	add r0, r0, r2
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FFF50

	thumb_func_start ov01_021FFF5C
ov01_021FFF5C: ; 0x021FFF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F146C
	add r6, r0, #0
	bl ov01_021F1468
	add r7, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentX
	str r0, [sp, #8]
	add r0, r5, #0
	bl MapObject_GetCurrentY
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, sp, #0x20
	bl sub_020611C8
	add r0, r7, #0
	add r1, sp, #0x20
	bl sub_0206121C
	add r0, r6, #0
	mov r1, #0xe
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	bl ov01_021F1450
	add r1, r4, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	bl ov01_021FFF50
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FFFC8 ; =ov01_02209280
	add r0, r6, #0
	add r2, sp, #0x20
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021FFFC8: .word ov01_02209280
	thumb_func_end ov01_021FFF5C

	thumb_func_start ov01_021FFFCC
ov01_021FFFCC: ; 0x021FFFCC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	ldr r4, [r3, #0xc]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	bl MapObject_GetID
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_0205F254
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FFFCC

	thumb_func_start ov01_021FFFFC
ov01_021FFFFC: ; 0x021FFFFC
	push {r4, lr}
	add r2, r1, #0
	ldr r4, [r2, #0x1c]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #1
	bne _02200018
	add r0, r4, #0
	mov r1, #0
	bl sub_02066420
_02200018:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFFFC

	thumb_func_start ov01_0220001C
ov01_0220001C: ; 0x0220001C
	bx lr
	.balign 4, 0
	thumb_func_end ov01_0220001C

	thumb_func_start ov01_02200020
ov01_02200020: ; 0x02200020
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #1
	beq _0220003A
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_020699BC
_0220003A:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02200020

	thumb_func_start ov01_02200040
ov01_02200040: ; 0x02200040
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_0220006C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02200040

	thumb_func_start ov01_0220005C
ov01_0220005C: ; 0x0220005C
	push {r4, lr}
	add r4, r0, #0
	bl ov01_022000B4
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_0220005C

	thumb_func_start ov01_0220006C
ov01_0220006C: ; 0x0220006C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0x7c
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0x94
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #0xa
	mov r2, #0x17
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022000B0 ; =ov01_022092A8
	mov r2, #9
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0xb
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022000B0: .word ov01_022092A8
	thumb_func_end ov01_0220006C

	thumb_func_start ov01_022000B4
ov01_022000B4: ; 0x022000B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #0xa
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0xb
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022000B4

	thumb_func_start ov01_022000DC
ov01_022000DC: ; 0x022000DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xf
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x20]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	bl MapObject_GetCurrentX
	add r6, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentY
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #8
	bl sub_020611C8
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _0220013C ; =ov01_02209294
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0220013C: .word ov01_02209294
	thumb_func_end ov01_022000DC

	thumb_func_start ov01_02200140
ov01_02200140: ; 0x02200140
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl MapObject_GetID
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F254
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_02200140

	thumb_func_start ov01_02200184
ov01_02200184: ; 0x02200184
	ldr r3, _0220018C ; =sub_02023DA4
	ldr r0, [r1, #0x20]
	bx r3
	nop
_0220018C: .word sub_02023DA4
	thumb_func_end ov01_02200184

	thumb_func_start ov01_02200190
ov01_02200190: ; 0x02200190
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _022001BE
	mov r1, #1
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x20]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #7
	blt _022001BE
	add r0, r5, #0
	bl ov01_021F1640
_022001BE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_02200190

	thumb_func_start ov01_022001C0
ov01_022001C0: ; 0x022001C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022001C0

	thumb_func_start ov01_022001E4
ov01_022001E4: ; 0x022001E4
	push {r4, lr}
	mov r2, #0
	mov r1, #0x14
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022001E4

	thumb_func_start ov01_022001F8
ov01_022001F8: ; 0x022001F8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_022002FC
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_022001F8

	thumb_func_start ov01_02200208
ov01_02200208: ; 0x02200208
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	thumb_func_end ov01_02200208

	thumb_func_start ov01_02200210
ov01_02200210: ; 0x02200210
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _0220021E
	bl GF_AssertFail
_0220021E:
	pop {r3, pc}
	thumb_func_end ov01_02200210

	thumb_func_start ov01_02200220
ov01_02200220: ; 0x02200220
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov01_02200220

	thumb_func_start ov01_02200228
ov01_02200228: ; 0x02200228
	push {r3, lr}
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	bpl _02200236
	bl GF_AssertFail
_02200236:
	pop {r3, pc}
	thumb_func_end ov01_02200228

	thumb_func_start ov01_02200238
ov01_02200238: ; 0x02200238
	push {r3, lr}
	cmp r1, #0
	bne _02200244
	bl ov01_02200208
	pop {r3, pc}
_02200244:
	bl ov01_02200220
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_02200238

	thumb_func_start ov01_0220024C
ov01_0220024C: ; 0x0220024C
	push {r3, lr}
	cmp r1, #0
	bne _02200258
	bl ov01_02200210
	pop {r3, pc}
_02200258:
	bl ov01_02200228
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220024C

	thumb_func_start ov01_02200260
ov01_02200260: ; 0x02200260
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _022002A4
	mov r1, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r2, #0x76
	bl ov01_021F18D4
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0x8c
	bl ov01_021F1908
	mov r1, #1
	ldr r0, [r4, #0x10]
	mov r2, #0x11
	add r3, r1, #0
	bl ov01_021F1930
	mov r1, #1
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022002A8 ; =ov01_022092F0
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	add r3, r1, #0
	bl ov01_021F1758
_022002A4:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_022002A8: .word ov01_022092F0
	thumb_func_end ov01_02200260

	thumb_func_start ov01_022002AC
ov01_022002AC: ; 0x022002AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022002F4
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	mov r2, #0x7d
	bl ov01_021F18D4
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	mov r2, #0x8c
	bl ov01_021F1908
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	mov r2, #0x18
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022002F8 ; =ov01_022092F0
	mov r2, #0xa
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	add r3, r2, #0
	bl ov01_021F1758
_022002F4:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_022002F8: .word ov01_022092F0
	thumb_func_end ov01_022002AC

	thumb_func_start ov01_022002FC
ov01_022002FC: ; 0x022002FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0220032A
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F18FC
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F1924
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F1970
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F18C8
_0220032A:
	pop {r4, pc}
	thumb_func_end ov01_022002FC

	thumb_func_start ov01_0220032C
ov01_0220032C: ; 0x0220032C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0220035A
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	bl ov01_021F18FC
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	bl ov01_021F1924
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	bl ov01_021F1970
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl ov01_021F18C8
_0220035A:
	pop {r4, pc}
	thumb_func_end ov01_0220032C

	thumb_func_start ov01_0220035C
ov01_0220035C: ; 0x0220035C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _02200368
	bl ov01_02200260
_02200368:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220035C

	thumb_func_start ov01_0220036C
ov01_0220036C: ; 0x0220036C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02200378
	bl ov01_022002AC
_02200378:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220036C

	thumb_func_start ov01_0220037C
ov01_0220037C: ; 0x0220037C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _02200388
	bl ov01_022002FC
_02200388:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220037C

	thumb_func_start ov01_0220038C
ov01_0220038C: ; 0x0220038C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02200398
	bl ov01_0220032C
_02200398:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220038C

	thumb_func_start ov01_0220039C
ov01_0220039C: ; 0x0220039C
	push {r3, lr}
	cmp r1, #0
	bne _022003A8
	bl ov01_0220035C
	pop {r3, pc}
_022003A8:
	bl ov01_0220036C
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220039C

	thumb_func_start ov01_022003B0
ov01_022003B0: ; 0x022003B0
	push {r3, lr}
	cmp r1, #0
	bne _022003BC
	bl ov01_0220037C
	pop {r3, pc}
_022003BC:
	bl ov01_0220038C
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022003B0

	thumb_func_start ov01_022003C4
ov01_022003C4: ; 0x022003C4
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _022003F0 ; =ov01_022092C0
	add r4, sp, #0
	ldr r5, [r3]
	ldr r3, [r3, #4]
	str r5, [sp]
	str r3, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ov01_021F1740
	add r4, r0, #0
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022003F0: .word ov01_022092C0
	thumb_func_end ov01_022003C4

	thumb_func_start ov01_022003F4
ov01_022003F4: ; 0x022003F4
	push {r3, lr}
	bl sub_02068D74
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022003F4

	thumb_func_start ov01_02200400
ov01_02200400: ; 0x02200400
	push {r3, lr}
	bl sub_02068D74
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _02200416
	mov r1, #0
	bl sub_02023EA4
_02200416:
	pop {r3, pc}
	thumb_func_end ov01_02200400

	thumb_func_start ov01_02200418
ov01_02200418: ; 0x02200418
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_0220039C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl ov01_022003C4
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_02200238
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02023EA4
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #1
	bne _02200474
	ldr r0, _0220047C ; =SEQ_SE_DP_DECIDE
	bl PlaySE
_02200474:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0220047C: .word SEQ_SE_DP_DECIDE
	thumb_func_end ov01_02200418

	thumb_func_start ov01_02200480
ov01_02200480: ; 0x02200480
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02068DB8
	ldr r0, [r4]
	cmp r0, #0
	beq _0220049C
	cmp r0, #1
	beq _022004C6
	cmp r0, #2
	b _022004DE
_0220049C:
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02023EA4
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	beq _022004BA
	mov r0, #2
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _022004DE
_022004BA:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _022004DE
_022004C6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _022004DE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_022004DE:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02200480

	thumb_func_start ov01_022004EC
ov01_022004EC: ; 0x022004EC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x40]
	bl sub_02023DA4
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_0220024C
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_022003B0
	pop {r4, pc}
	thumb_func_end ov01_022004EC

	thumb_func_start ov01_02200508
ov01_02200508: ; 0x02200508
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _0220053A
	add r1, sp, #0
	bl sub_02068DB8
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl sub_02023E50
_0220053A:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02200508

	thumb_func_start ov01_02200540
ov01_02200540: ; 0x02200540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov01_021F146C
	add r4, r0, #0
	mov r1, #9
	str r6, [sp, #0x20]
	str r4, [sp, #0x24]
	bl ov01_021F1450
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, sp, #0x14
	str r5, [sp, #0x2c]
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #8
	bl MapObject_GetFacingVec
	add r0, sp, #0x14
	add r1, sp, #8
	add r2, r0, #0
	bl VEC_Add
	add r0, r5, #0
	bl sub_0205F538
	add r1, r0, #1
	add r0, sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, _02200598 ; =ov01_022092DC
	add r0, r4, #0
	add r2, sp, #0x14
	add r3, r7, #0
	bl ov01_021F1620
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200598: .word ov01_022092DC
	thumb_func_end ov01_02200540

	thumb_func_start ov01_0220059C
ov01_0220059C: ; 0x0220059C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x3c]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	bl sub_0205F254
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_0220039C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl ov01_022003C4
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_02200238
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02023EA4
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #1
	bne _02200608
	ldr r0, _02200610 ; =SEQ_SE_DP_DECIDE
	bl PlaySE
_02200608:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02200610: .word SEQ_SE_DP_DECIDE
	thumb_func_end ov01_0220059C

	thumb_func_start ov01_02200614
ov01_02200614: ; 0x02200614
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x3c]
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _02200630
	bl GF_AssertFail
_02200630:
	add r0, r6, #0
	add r1, sp, #0
	bl ov01_021F93AC
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	lsr r0, r0, #5
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4]
	cmp r0, #0
	beq _02200658
	cmp r0, #1
	beq _02200682
	cmp r0, #2
	b _0220069A
_02200658:
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02023EA4
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	beq _02200676
	mov r0, #2
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _0220069A
_02200676:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0220069A
_02200682:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _0220069A
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_0220069A:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_02200614

	thumb_func_start ov01_022006A8
ov01_022006A8: ; 0x022006A8
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_022006D4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022006A8

	thumb_func_start ov01_022006C4
ov01_022006C4: ; 0x022006C4
	push {r4, lr}
	add r4, r0, #0
	bl ov01_02200710
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_022006C4

	thumb_func_start ov01_022006D4
ov01_022006D4: ; 0x022006D4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x78
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x13
	mov r3, #1
	bl ov01_021F1930
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	mov r1, #4
	ldr r0, _0220070C ; =ov01_0220931C
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0220070C: .word ov01_0220931C
	thumb_func_end ov01_022006D4

	thumb_func_start ov01_02200710
ov01_02200710: ; 0x02200710
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #4
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #4
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02200710

	thumb_func_start ov01_02200730
ov01_02200730: ; 0x02200730
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetFieldSysPtr
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x15
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r5, [sp, #0x20]
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _0220077C ; =ov01_02209308
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0220077C: .word ov01_02209308
	thumb_func_end ov01_02200730

	thumb_func_start ov01_02200780
ov01_02200780: ; 0x02200780
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl MapObject_GetID
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F254
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x14]
	mov r1, #4
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02200780

	thumb_func_start ov01_022007D0
ov01_022007D0: ; 0x022007D0
	ldr r3, _022007D8 ; =sub_02023DA4
	ldr r0, [r1, #0x20]
	bx r3
	nop
_022007D8: .word sub_02023DA4
	thumb_func_end ov01_022007D0

	thumb_func_start ov01_022007DC
ov01_022007DC: ; 0x022007DC
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl sub_0205F0A8
	cmp r0, #0
	bne _022007F6
	add r0, r4, #0
	bl ov01_021F1640
_022007F6:
	pop {r4, pc}
	thumb_func_end ov01_022007DC

	thumb_func_start ov01_022007F8
ov01_022007F8: ; 0x022007F8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x1c]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _0220081A
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_0220081A:
	add r0, r4, #0
	add r1, sp, #0xc
	bl MapObject_GetPositionVec
	add r0, r4, #0
	add r1, sp, #0
	bl MapObject_GetFacingVec
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0xe
	str r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x20]
	add r1, sp, #0xc
	bl sub_02023E50
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_022007F8

	thumb_func_start ov01_02200858
ov01_02200858: ; 0x02200858
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_02200884
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02200858

	thumb_func_start ov01_02200874
ov01_02200874: ; 0x02200874
	push {r4, lr}
	add r4, r0, #0
	bl ov01_022008A8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_02200874

	thumb_func_start ov01_02200884
ov01_02200884: ; 0x02200884
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x55
	bl ov01_021F19F4
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02069978
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02200884

	thumb_func_start ov01_022008A8
ov01_022008A8: ; 0x022008A8
	ldr r3, _022008B0 ; =sub_02069784
	add r0, r0, #4
	bx r3
	nop
_022008B0: .word sub_02069784
	thumb_func_end ov01_022008A8

	thumb_func_start ov01_022008B4
ov01_022008B4: ; 0x022008B4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r2, sp, #8
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl PlayerAvatar_GetMapObject
	add r4, r0, #0
	bl ov01_021F146C
	add r6, r0, #0
	mov r1, #3
	str r6, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #2
	str r5, [sp, #0x1c]
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _022008FC ; =ov01_02209340
	add r0, r6, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_022008FC: .word ov01_02209340
	thumb_func_end ov01_022008B4

	thumb_func_start ov01_02200900
ov01_02200900: ; 0x02200900
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02068D98
	add r4, r0, #0
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #8]
	bl PlayerAvatar_GetMapObject
	mov r1, #0
	mvn r1, r1
	add r4, r0, #0
	str r1, [r5, #4]
	bl MapObject_GetID
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl sub_0205F254
	str r0, [r5, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_02200900

	thumb_func_start ov01_02200938
ov01_02200938: ; 0x02200938
	bx lr
	.balign 4, 0
	thumb_func_end ov01_02200938

	thumb_func_start ov01_0220093C
ov01_0220093C: ; 0x0220093C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	bl PlayerAvatar_GetMapObject
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r6, r0, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _02200964
	ldr r0, [sp]
	bl ov01_021F1640
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02200964:
	ldr r7, [r5, #4]
	add r0, r6, #0
	bl sub_0205F504
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	bl ov01_02200AB0
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5]
	ldr r4, [r5, #4]
	sub r0, r0, #1
	cmp r4, r0
	beq _0220098C
	ldr r0, [sp, #4]
	bl PlayerAvatar_GetFacingDirection
	cmp r4, r0
	beq _0220099A
_0220098C:
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	mov r0, #1
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0220099A:
	cmp r7, r4
	beq _022009A4
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
_022009A4:
	add r0, r6, #0
	bl MapObject_GetCurrentX
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl GetDeltaXByFacingDirection
	add r7, r0, #0
	add r0, r6, #0
	bl MapObject_GetCurrentY
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl GetDeltaYByFacingDirection
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r2
	add r2, sp, #0xc
	bl sub_020611C8
	add r0, r6, #0
	add r1, sp, #0x18
	bl MapObject_GetPositionVec
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl sub_02068DA8
	ldr r0, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r5, #0x1c]
	cmp r0, #0xf
	ble _02200A04
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r5, #0x20]
_02200A04:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_0220093C

	thumb_func_start ov01_02200A08
ov01_02200A08: ; 0x02200A08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3]
	cmp r0, #1
	beq _02200AA4
	mov r0, #0
	ldr r1, [r3, #4]
	mvn r0, r0
	cmp r1, r0
	beq _02200AA4
	ldr r5, _02200AA8 ; =ov01_02209334
	add r4, sp, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r7, #0x18
	str r0, [r4]
	ldr r1, [r3, #4]
	ldr r4, _02200AAC ; =ov01_02209354
	add r0, r1, #0
	mul r0, r7
	add r0, r4, r0
	ldr r5, [r3, #0x28]
	ldr r4, [r3, #0x20]
	mov r3, #0xc
	mul r3, r4
	mov r2, #0
	add r5, #0x18
	add r4, r0, r3
	cmp r1, #3
	bhi _02200A6A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02200A56: ; jump table
	.short _02200A5E - _02200A56 - 2 ; case 0
	.short _02200A6A - _02200A56 - 2 ; case 1
	.short _02200A62 - _02200A56 - 2 ; case 2
	.short _02200A68 - _02200A56 - 2 ; case 3
_02200A5E:
	mov r2, #0xb4
	b _02200A6A
_02200A62:
	add r2, r7, #0
	add r2, #0xf6
	b _02200A6A
_02200A68:
	mov r2, #0x5a
_02200A6A:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02020DA4
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r1, [sp, #0xc]
	ldr r0, [r4]
	add r2, sp, #0
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #4]
	add r3, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020699AC
_02200AA4:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02200AA8: .word ov01_02209334
_02200AAC: .word ov01_02209354
	thumb_func_end ov01_02200A08

	thumb_func_start ov01_02200AB0
ov01_02200AB0: ; 0x02200AB0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205B730
	cmp r0, #0
	beq _02200AC0
	mov r0, #0
	pop {r4, pc}
_02200AC0:
	add r0, r4, #0
	bl sub_0205B73C
	cmp r0, #0
	beq _02200ACE
	mov r0, #1
	pop {r4, pc}
_02200ACE:
	add r0, r4, #0
	bl sub_0205B724
	cmp r0, #0
	beq _02200ADC
	mov r0, #2
	pop {r4, pc}
_02200ADC:
	add r0, r4, #0
	bl sub_0205B718
	cmp r0, #0
	beq _02200AEA
	mov r0, #3
	pop {r4, pc}
_02200AEA:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ov01_02200AB0

	thumb_func_start ScrCmd_648
ScrCmd_648: ; 0x02200AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x1c]
	add r0, #0x80
	ldr r6, [r0]
	mov r1, #0x10
	add r0, r6, #0
	bl FieldSysGetAttrAddr
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	bl ScriptReadHalfword
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	bl ScriptReadHalfword
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x1c]
	bl ScriptReadHalfword
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl ScriptReadHalfword
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl ScriptReadHalfword
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	mov r1, #0x1b
	str r4, [r0, #0x64]
	mov r0, #0
	mov r2, #0xed
	mov r3, #0x20
	bl NewMsgDataFromNarc
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r1, r4, #0
	bl GetVarPointer
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #1
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSysGetAttrAddr
	add r5, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl GetVarPointer
	add r7, r0, #0
	ldr r1, [sp, #0x38]
	add r0, r6, #0
	bl GetVarPointer
	mov r2, #1
	str r2, [sp]
	ldr r1, [sp, #0x2c]
	str r4, [sp, #4]
	ldr r1, [r1]
	mov r3, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	str r5, [sp, #0xc]
	str r1, [sp, #0x10]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0x14
	bl ov01_02200D9C
	add r7, r0, #0
	ldr r0, [r6, #0xc]
	mov r1, #0xb
	add r2, sp, #0x44
	bl sub_020312C4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _02200C0A
	ldr r1, [sp, #0x34]
	mov r0, #0x20
	lsl r2, r1, #1
	ldr r1, _02200C60 ; =ov01_02209AE0
	ldrh r1, [r1, r2]
	add r2, sp, #0x40
	bl ov01_02200C94
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	mov r4, #0
	cmp r0, #0
	ble _02200C04
	ldr r0, [sp, #0x30]
	ldr r5, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
_02200BD8:
	ldr r0, [sp, #0x3c]
	bl sub_0205C144
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x28]
	bl sub_020312E0
	cmp r0, #0
	beq _02200BFA
	ldrh r1, [r5]
	add r0, r7, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov01_02200DF8
_02200BFA:
	ldr r0, [sp, #0x40]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _02200BD8
_02200C04:
	ldr r0, [sp, #0x24]
	bl FreeToHeap
_02200C0A:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02200C14
	bl FreeToHeap
_02200C14:
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xbf
	mov r3, #0x20
	bl NewMsgDataFromNarc
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov01_02200CB4
	ldr r3, _02200C64 ; =0x0000FFFE
	add r0, r7, #0
	mov r1, #0xd
	mov r2, #0xff
	bl ov01_02200DF8
	add r0, r4, #0
	bl DestroyMsgData
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl ov01_02200CB4
	add r0, r7, #0
	bl ov01_02200E00
	ldr r0, [sp, #0x1c]
	ldr r1, _02200C68 ; =ov01_02200C6C
	bl SetupNativeScript
	ldr r0, [sp, #0x20]
	bl DestroyMsgData
	mov r0, #1
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200C60: .word ov01_02209AE0
_02200C64: .word 0x0000FFFE
_02200C68: .word ov01_02200C6C
	thumb_func_end ScrCmd_648

	thumb_func_start ov01_02200C6C
ov01_02200C6C: ; 0x02200C6C
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl GetVarPointer
	ldrh r1, [r0]
	ldr r0, _02200C90 ; =0x0000EEEE
	cmp r1, r0
	beq _02200C8A
	mov r0, #1
	pop {r3, pc}
_02200C8A:
	mov r0, #0
	pop {r3, pc}
	nop
_02200C90: .word 0x0000EEEE
	thumb_func_end ov01_02200C6C

	thumb_func_start ov01_02200C94
ov01_02200C94: ; 0x02200C94
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0
	add r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4a
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_02200C94

	thumb_func_start ov01_02200CB4
ov01_02200CB4: ; 0x02200CB4
	mov r2, #0x7f
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov01_02200CB4

	thumb_func_start ov01_02200CBC
ov01_02200CBC: ; 0x02200CBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	mov r2, #0x7f
	ldr r1, [sp, #0x2c]
	lsl r2, r2, #2
	str r1, [r6, r2]
	add r1, r2, #0
	add r1, #0xb
	add r5, r3, #0
	ldrb r1, [r6, r1]
	mov r3, #2
	bic r1, r3
	add r3, r2, #0
	add r3, #0xb
	strb r1, [r6, r3]
	ldr r3, [sp, #0x24]
	add r1, r2, #4
	str r3, [r6, r1]
	str r0, [r6]
	add r0, r2, #0
	ldr r1, [sp, #0x20]
	add r0, #0x14
	str r1, [r6, r0]
	add r0, r2, #0
	add r0, #0x14
	ldr r0, [r6, r0]
	mov r1, #0
	strh r1, [r0]
	add r0, r2, #0
	ldr r3, [sp, #0x30]
	add r0, #0x18
	str r3, [r6, r0]
	add r0, r2, #0
	ldr r3, [sp, #0x34]
	add r0, #0x1c
	str r3, [r6, r0]
	add r0, r2, #0
	add r0, #0xb
	ldrb r4, [r6, r0]
	mov r0, #1
	bic r4, r0
	add r0, sp, #8
	ldrb r3, [r0, #0x14]
	mov r0, #1
	and r0, r3
	add r3, r4, #0
	orr r3, r0
	add r0, r2, #0
	add r0, #0xb
	strb r3, [r6, r0]
	add r0, sp, #8
	add r3, r2, #0
	ldrb r0, [r0, #0x10]
	add r3, #0xa
	strb r0, [r6, r3]
	add r3, r2, #0
	add r3, #0xc
	strb r7, [r6, r3]
	add r3, r2, #0
	add r3, #0xd
	strb r5, [r6, r3]
	add r3, r2, #0
	add r3, #0xf
	strb r1, [r6, r3]
	ldr r3, [sp, #0x28]
	add r2, #8
	str r3, [r6, #0x18]
	mov r3, #3
	strb r3, [r6, r2]
	ldr r2, _02200D90 ; =0x000006F4
	ldr r7, _02200D94 ; =0x00000604
	strh r0, [r6, r2]
	add r2, r6, #0
	add r3, r6, #0
	add r5, r1, #0
	mov r0, #0xff
_02200D56:
	mov r4, #0x91
	lsl r4, r4, #2
	str r5, [r2, r4]
	add r4, r4, #4
	str r5, [r2, r4]
	strh r0, [r3, r7]
	add r1, r1, #1
	add r2, #8
	add r3, r3, #2
	cmp r1, #0x78
	blt _02200D56
	add r4, r6, #0
	mov r7, #0x50
_02200D70:
	add r0, r7, #0
	mov r1, #4
	bl String_ctor
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x78
	blt _02200D70
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, _02200D98 ; =0x0000EEEE
	ldr r0, [r6, r0]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200D90: .word 0x000006F4
_02200D94: .word 0x00000604
_02200D98: .word 0x0000EEEE
	thumb_func_end ov01_02200CBC

	thumb_func_start ov01_02200D9C
ov01_02200D9C: ; 0x02200D9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r6, r0, #0
	ldr r1, _02200DF4 ; =0x000006F8
	mov r0, #4
	str r2, [sp, #0x20]
	add r5, r3, #0
	bl AllocFromHeap
	add r4, r0, #0
	bne _02200DBA
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02200DBA:
	ldr r2, _02200DF4 ; =0x000006F8
	mov r1, #0
	bl memset
	str r5, [sp]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	bl ov01_02200CBC
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02200DF4: .word 0x000006F8
	thumb_func_end ov01_02200D9C

	thumb_func_start ov01_02200DF8
ov01_02200DF8: ; 0x02200DF8
	push {r3, lr}
	bl ov01_02200EC8
	pop {r3, pc}
	thumb_func_end ov01_02200DF8

	thumb_func_start ov01_02200E00
ov01_02200E00: ; 0x02200E00
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r3, _02200EBC ; =0x0000020B
	add r4, r0, #0
	ldrb r1, [r4, r3]
	cmp r1, #8
	bls _02200E38
	sub r0, r3, #2
	ldrb r0, [r4, r0]
	add r1, r4, #0
	sub r3, r3, #3
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldrb r3, [r4, r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
	b _02200E62
_02200E38:
	sub r0, r3, #2
	ldrb r0, [r4, r0]
	sub r3, r3, #3
	mov r2, #3
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	lsl r0, r1, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r4, #0
	ldrb r3, [r4, r3]
	ldr r0, [r0, #8]
	add r1, #8
	bl AddWindowParameterized
_02200E62:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _02200EC0 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	add r0, r4, #0
	ldr r2, _02200EC0 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r4, #0
	bl ov01_02200F54
	mov r2, #0x87
	lsl r2, r2, #2
	add r1, r2, #0
	add r0, r4, r2
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	ldrh r1, [r1]
	ldrh r2, [r2]
	mov r3, #4
	bl ListMenuInit
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02200EC4 ; =ov01_022010CC
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_02200EBC: .word 0x0000020B
_02200EC0: .word 0x000003D9
_02200EC4: .word ov01_022010CC
	thumb_func_end ov01_02200E00

	thumb_func_start ov01_02200EC8
ov01_02200EC8: ; 0x02200EC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl String_ctor
	add r6, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp]
	add r2, r6, #0
	bl ReadMsgDataIntoString
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, #0xb
	ldrb r1, [r5, r1]
	add r2, r6, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x1c]
	bl StringExpandPlaceholders
	ldr r2, _02200F4C ; =0x0000020B
	ldrb r1, [r5, r2]
	add r2, #0x39
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	ldr r0, [r0, #0x1c]
	add r1, r5, r1
	str r0, [r1, r2]
	add r0, r6, #0
	bl String_dtor
	cmp r4, #0xfa
	ldr r0, _02200F4C ; =0x0000020B
	bne _02200F2E
	ldrb r1, [r5, r0]
	mov r2, #2
	mvn r2, r2
	lsl r1, r1, #3
	add r1, r5, r1
	add r0, #0x3d
	str r2, [r1, r0]
	b _02200F38
_02200F2E:
	ldrb r1, [r5, r0]
	add r0, #0x3d
	lsl r1, r1, #3
	add r1, r5, r1
	str r4, [r1, r0]
_02200F38:
	ldr r1, _02200F4C ; =0x0000020B
	ldrb r0, [r5, r1]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _02200F50 ; =0x00000604
	strh r7, [r2, r0]
	ldrb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02200F4C: .word 0x0000020B
_02200F50: .word 0x00000604
	thumb_func_end ov01_02200EC8

	thumb_func_start ov01_02200F54
ov01_02200F54: ; 0x02200F54
	push {r4, r5}
	mov r3, #0x91
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _02201050 ; =ov01_02201088
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _02201054 ; =ov01_02201064
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0x39
	ldrb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02201058 ; =0xFFFFFE7F
	and r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _0220105C ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02201060 ; =0xFFFF7FFF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	sub r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_02201050: .word ov01_02201088
_02201054: .word ov01_02201064
_02201058: .word 0xFFFFFE7F
_0220105C: .word 0xFFFF81FF
_02201060: .word 0xFFFF7FFF
	thumb_func_end ov01_02200F54

	thumb_func_start ov01_02201064
ov01_02201064: ; 0x02201064
	push {r3, lr}
	mov r2, #2
	mvn r2, r2
	cmp r1, r2
	bne _0220107A
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl ListMenuOverrideSetColors
	pop {r3, pc}
_0220107A:
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl ListMenuOverrideSetColors
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_02201064

	thumb_func_start ov01_02201088
ov01_02201088: ; 0x02201088
	push {r3, r4, r5, lr}
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1, #2]
	strh r2, [r1]
	mov r1, #0x13
	add r5, r0, #0
	bl ListMenuGetTemplateField
	add r1, sp, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl ListMenuGetScrollAndRow
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	cmp r3, #0
	beq _022010C8
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022010C8
	add r0, sp, #0
	ldrh r2, [r0, #2]
	strh r2, [r3]
	ldrh r2, [r0]
	add r0, r1, #4
	ldr r0, [r4, r0]
	strh r2, [r0]
_022010C8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02201088

	thumb_func_start ov01_022010CC
ov01_022010CC: ; 0x022010CC
	push {r4, r5, r6, lr}
	mov r0, #0x81
	add r5, r1, #0
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _022010E0
	sub r1, r1, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022010E0:
	bl IsPaletteFadeActive
	cmp r0, #0
	beq _0220115A
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ListMenu_ProcessInput
	add r4, r0, #0
	mov r0, #0x8f
	ldr r1, _0220115C ; =0x000006F4
	lsl r0, r0, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ListMenuGetCurrentItemArrayId
	ldr r0, _0220115C ; =0x000006F4
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _02201112
	ldr r0, _02201160 ; =SEQ_SE_DP_SELECT
	bl PlaySE
_02201112:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02201122
	add r0, r0, #1
	cmp r4, r0
	beq _0220115A
	b _02201146
_02201122:
	ldr r0, _02201164 ; =0x00000207
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0220115A
	ldr r0, _02201160 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, _02201168 ; =0x0000FFFE
	ldr r0, [r5, r0]
	strh r1, [r0]
	add r0, r5, #0
	bl ov01_0220116C
	pop {r4, r5, r6, pc}
_02201146:
	ldr r0, _02201160 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	strh r4, [r0]
	add r0, r5, #0
	bl ov01_0220116C
_0220115A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220115C: .word 0x000006F4
_02201160: .word SEQ_SE_DP_SELECT
_02201164: .word 0x00000207
_02201168: .word 0x0000FFFE
	thumb_func_end ov01_022010CC

	thumb_func_start ov01_0220116C
ov01_0220116C: ; 0x0220116C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _022011CC ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #0x8f
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	bl DestroyListMenu
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200E5D4
	add r0, r6, #0
	add r0, #8
	bl RemoveWindow
	mov r4, #0
	add r5, r6, #0
_0220119C:
	ldr r0, [r5, #0x1c]
	bl String_dtor
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x78
	blt _0220119C
	ldr r0, _022011D0 ; =0x00000207
	ldrb r1, [r6, r0]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _022011BE
	sub r0, #0xb
	ldr r0, [r6, r0]
	bl DestroyMsgData
_022011BE:
	ldr r0, [r6, #4]
	bl sub_0200E390
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022011CC: .word SEQ_SE_DP_SELECT
_022011D0: .word 0x00000207
	thumb_func_end ov01_0220116C

	thumb_func_start ScrCmd_StatJudge
ScrCmd_StatJudge: ; 0x022011D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1]
	str r1, [sp, #4]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r7, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	add r4, r0, #0
	mov r1, #0x46
	mov r2, #0
	bl GetMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl GetMonData
	mov r4, #0
	str r0, [sp, #0x1c]
	strh r4, [r5]
	add r2, r4, #0
	add r1, sp, #8
_0220128C:
	lsl r0, r2, #2
	ldrh r3, [r5]
	ldr r0, [r1, r0]
	add r3, r3, r0
	strh r3, [r5]
	cmp r4, r0
	bhs _0220129E
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0220129E:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #6
	blo _0220128C
	mov r1, #0x49
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r7]
	add r6, sp, #8
_022012BA:
	lsl r1, r0, #2
	ldr r1, [r6, r1]
	cmp r4, r1
	bne _022012D6
	strh r0, [r7]
	add r0, r0, #1
	mov r1, #6
	bl _s32_div_f
	mov r2, #0x49
	ldr r0, [sp, #4]
	lsl r2, r2, #2
	str r1, [r0, r2]
	b _022012EC
_022012D6:
	add r0, r0, #1
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x18
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	lsr r0, r0, #0x18
	cmp r5, #6
	blo _022012BA
_022012EC:
	ldr r0, [sp]
	strh r4, [r0]
	ldrh r0, [r7]
	lsl r1, r0, #1
	ldr r0, _02201300 ; =sStatJudgeBestStatMsgIdxs
	ldrh r0, [r0, r1]
	strh r0, [r7]
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02201300: .word sStatJudgeBestStatMsgIdxs
	thumb_func_end ScrCmd_StatJudge

	thumb_func_start ScrCmd_CommSanitizeParty
ScrCmd_CommSanitizeParty: ; 0x02201304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1]
	str r1, [sp, #4]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r7, r0, #0
	bl GetPartyCount
	add r6, r0, #0
	mov r4, #0
	ldr r0, [sp]
	cmp r6, #0
	strh r4, [r0]
	ble _02201366
	add r5, sp, #0x10
_02201342:
	add r0, r7, #0
	add r1, r4, #0
	bl GetPartyMonByIndex
	mov r1, #6
	mov r2, #0
	bl GetMonData
	str r0, [r5]
	cmp r0, #0x70
	bne _0220135E
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0220135E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02201342
_02201366:
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _022013BA
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl Sav2_Bag_get
	ldr r2, [sp, #8]
	mov r1, #0x70
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #4
	bl Bag_AddItem
	cmp r0, #0
	bne _02201392
	ldr r0, [sp]
	mov r1, #0xff
	strh r1, [r0]
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02201392:
	mov r5, #0
	str r5, [sp, #0xc]
	cmp r6, #0
	ble _022013BA
	add r4, sp, #0x10
_0220139C:
	ldr r0, [r4]
	cmp r0, #0x70
	bne _022013B2
	add r0, r7, #0
	add r1, r5, #0
	bl GetPartyMonByIndex
	mov r1, #6
	add r2, sp, #0xc
	bl SetMonData
_022013B2:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _0220139C
_022013BA:
	mov r5, #0
	cmp r6, #0
	ble _02201418
_022013C0:
	add r0, r7, #0
	add r1, r5, #0
	bl GetPartyMonByIndex
	mov r1, #0x70
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	ble _02201412
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, _02201420 ; =SPECIES_ROTOM
	cmp r0, r1
	beq _022013FE
	add r1, #8
	cmp r0, r1
	beq _022013F6
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	beq _0220140A
	b _02201412
_022013F6:
	add r0, r4, #0
	bl Mon_UpdateGiratinaForme
	b _02201412
_022013FE:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl Mon_UpdateRotomForme
	b _02201412
_0220140A:
	add r0, r4, #0
	mov r1, #0
	bl Mon_UpdateShayminForme
_02201412:
	add r5, r5, #1
	cmp r5, r6
	blt _022013C0
_02201418:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02201420: .word SPECIES_ROTOM
	thumb_func_end ScrCmd_CommSanitizeParty

	thumb_func_start ScrCmd_SetMonForme
ScrCmd_SetMonForme: ; 0x02201424
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	mov r1, #0x70
	add r2, sp, #0
	bl SetMonData
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ScrCmd_SetMonForme

	thumb_func_start ScrCmd_CountTranformedRotomsInParty
ScrCmd_CountTranformedRotomsInParty: ; 0x02201470
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	str r0, [sp]
	add r0, r5, #0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl GetVarPointer
	add r6, r0, #0
	mov r0, #0xff
	strh r0, [r6]
	ldr r0, [r4, #0xc]
	mov r7, #0
	bl SavArray_PlayerParty_get
	str r0, [sp, #4]
	bl GetPartyCount
	add r5, r7, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _02201508
_022014BA:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl GetPartyMonByIndex
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	ldr r2, [sp, #0xc]
	ldr r1, _02201514 ; =SPECIES_ROTOM
	cmp r2, r1
	bne _02201500
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _02201500
	cmp r0, #0
	bne _02201500
	ldrh r0, [r6]
	cmp r0, #0xff
	bne _022014FE
	strh r5, [r6]
_022014FE:
	add r7, r7, #1
_02201500:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _022014BA
_02201508:
	ldr r0, [sp]
	strh r7, [r0]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02201514: .word SPECIES_ROTOM
	thumb_func_end ScrCmd_CountTranformedRotomsInParty

	thumb_func_start ScrCmd_UpdateRotomForme
ScrCmd_UpdateRotomForme: ; 0x02201518
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	str r0, [sp]
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r0, r5, #0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	ldr r2, [sp]
	add r1, r7, #0
	add r5, r0, #0
	bl Mon_UpdateRotomForme
	ldr r0, [r4, #0xc]
	bl Sav2_Pokedex_get
	add r1, r5, #0
	bl Pokedex_SetMonCaughtFlag
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_UpdateRotomForme

	thumb_func_start ScrCmd_670
ScrCmd_670: ; 0x02201594
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r7, #0
	bl GetPartyMonByIndex
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02201682
	ldr r0, _02201698 ; =0x0000010A
	cmp r4, r0
	bgt _02201634
	bge _02201678
	cmp r4, #0x84
	bgt _02201620
	bge _02201678
	cmp r4, #0xe
	bgt _0220161A
	add r0, r4, #0
	sub r0, #0xa
	bmi _02201682
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02201610: ; jump table
	.short _02201678 - _02201610 - 2 ; case 0
	.short _02201678 - _02201610 - 2 ; case 1
	.short _02201682 - _02201610 - 2 ; case 2
	.short _02201678 - _02201610 - 2 ; case 3
	.short _02201678 - _02201610 - 2 ; case 4
_0220161A:
	cmp r4, #0x81
	beq _02201678
	b _02201682
_02201620:
	cmp r4, #0xeb
	bgt _0220162C
	bge _02201678
	cmp r4, #0xca
	beq _02201678
	b _02201682
_0220162C:
	sub r0, r0, #1
	cmp r4, r0
	beq _02201678
	b _02201682
_02201634:
	add r1, r0, #0
	add r1, #0x6c
	cmp r4, r1
	bgt _0220165A
	add r1, r0, #0
	add r1, #0x6c
	cmp r4, r1
	bge _02201678
	add r1, r0, #2
	cmp r4, r1
	bgt _02201652
	add r0, r0, #2
	cmp r4, r0
	beq _02201678
	b _02201682
_02201652:
	add r0, #0x5e
	cmp r4, r0
	beq _02201678
	b _02201682
_0220165A:
	add r1, r0, #0
	add r1, #0x92
	cmp r4, r1
	bgt _02201672
	add r1, r0, #0
	add r1, #0x92
	cmp r4, r1
	bge _02201678
	add r0, #0x87
	cmp r4, r0
	beq _02201678
	b _02201682
_02201672:
	add r0, #0x95
	cmp r4, r0
	bne _02201682
_02201678:
	ldr r0, _0220169C ; =0x0000FFFF
	add sp, #8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02201682:
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov01_022016A0
	ldr r0, [sp]
	strh r0, [r5]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02201698: .word 0x0000010A
_0220169C: .word 0x0000FFFF
	thumb_func_end ScrCmd_670

	thumb_func_start ov01_022016A0
ov01_022016A0: ; 0x022016A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	mov r1, #0x46
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x48
	mov r2, #0
	bl GetMonData
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x49
	mov r2, #0
	bl GetMonData
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x4a
	mov r2, #0
	bl GetMonData
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x4b
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	cmp r5, #0
	beq _0220173C
	mov r1, #2
	and r0, r1
	lsl r0, r0, #4
	mov ip, r0
	ldr r0, [sp]
	and r0, r1
	lsl r3, r0, #3
	ldr r0, [sp, #4]
	and r0, r1
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	and r0, r1
	lsl r2, r0, #1
	ldr r0, [sp, #0x10]
	and r0, r1
	asr r6, r0, #1
	ldr r0, [sp, #0xc]
	and r0, r1
	orr r0, r6
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	add r1, r3, #0
	orr r1, r0
	mov r0, ip
	orr r1, r0
	mov r0, #0x28
	str r1, [r5]
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r0, #0x1e
	str r0, [r5]
_0220173C:
	cmp r4, #0
	beq _02201786
	lsl r0, r7, #0x1f
	lsr r5, r0, #0x1a
	ldr r0, [sp]
	mov r6, #1
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	ldr r0, [sp, #4]
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	ldr r0, [sp, #8]
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0x10]
	and r0, r6
	ldr r6, [sp, #0xc]
	lsl r6, r6, #0x1f
	lsr r6, r6, #0x1e
	orr r0, r6
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r1, r5, #0
	orr r1, r0
	mov r0, #0xf
	str r1, [r4]
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r4]
	cmp r0, #9
	blt _02201786
	add r0, r0, #1
	str r0, [r4]
_02201786:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_022016A0

	thumb_func_start ScrCmd_671
ScrCmd_671: ; 0x0220178C
	push {r3, r4, r5, r6, r7, lr}
	add r0, #0x80
	ldr r4, [r0]
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	mov r1, #0
	bl GetPartyMonByIndex
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl Sav2_Misc_get
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	add r3, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0202A9E8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_671

	thumb_func_start ScrCmd_672
ScrCmd_672: ; 0x022017DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r7, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl Sav2_Misc_get
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_0202AA20
	ldr r0, [sp, #8]
	strh r0, [r6]
	ldr r0, [sp, #4]
	strh r0, [r7]
	ldr r0, [sp]
	strh r0, [r4]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_672

	thumb_func_start ScrCmd_GetPartyMonForme
ScrCmd_GetPartyMonForme: ; 0x02201844
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_GetPartyMonForme

	thumb_func_start ScrCmd_699
ScrCmd_699: ; 0x0220188C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0
	str r1, [sp, #8]
	add r0, #0x80
	ldr r0, [r0]
	ldr r6, [r0, #0x3c]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetMapObject
	add r1, sp, #0xc
	str r0, [sp]
	bl MapObject_GetPositionVec
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	ldr r5, [sp, #0x10]
	bl sub_0205EEF4
	cmp r0, #1
	bne _02201926
	asr r1, r5, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r7, r0, #0xc
_022018C4:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, r1
	beq _02201916
	mov r1, #2
	lsl r1, r1, #0xc
	bl MapObject_SetBits
	mov r1, #1
	ldr r0, [sp, #4]
	lsl r1, r1, #0xc
	bl MapObject_TestBits
	cmp r0, #1
	bne _022018FC
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	bl MapObject_GetPositionVec
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r5, [sp, #0x10]
	bl MapObject_SetPositionVec
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl MapObject_SetCurrentHeight
_022018FC:
	ldr r0, [sp, #4]
	bl ov01_021F72DC
	add r4, r0, #0
	beq _02201916
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	mov r1, #1
	bl sub_02023EA4
_02201916:
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #8
	mov r3, #1
	bl sub_0205EEF4
	cmp r0, #1
	beq _022018C4
_02201926:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_699

	thumb_func_start ScrCmd_700
ScrCmd_700: ; 0x0220192C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp, #4]
	add r0, #0x80
	ldr r0, [r0]
	ldr r4, [r0, #0x3c]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_0205EEF4
	cmp r0, #1
	bne _02201974
	mov r6, #2
	lsl r6, r6, #0xc
	add r7, sp, #0
_02201958:
	ldr r0, [sp]
	cmp r0, r5
	beq _02201964
	add r1, r6, #0
	bl MapObject_ClearBits
_02201964:
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_0205EEF4
	cmp r0, #1
	beq _02201958
_02201974:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_700

	thumb_func_start ScrCmd_702
ScrCmd_702: ; 0x0220197C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA44
	bl sub_02039F68
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ScrCmd_702

	thumb_func_start ScrCmd_703
ScrCmd_703: ; 0x02201990
	push {r4, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl VarGet
	add r1, r0, #0
	mov r0, #1
	bl GF_SndHandleSetPlayerVolume
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_703

	thumb_func_start ScrCmd_707
ScrCmd_707: ; 0x022019B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Sav2_Pokedex_get
	add r1, r6, #0
	bl Pokedex_CheckMonSeenFlag
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_707

	thumb_func_start ScrCmd_708
ScrCmd_708: ; 0x022019F0
	push {r4, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x10]
	lsr r1, r1, #0x18
	bl ov02_022460AC
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ScrCmd_708

	thumb_func_start ScrCmd_774
ScrCmd_774: ; 0x02201A18
	push {r4, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x10]
	lsr r1, r1, #0x18
	bl ov02_0224618C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ScrCmd_774

	thumb_func_start ScrCmd_709
ScrCmd_709: ; 0x02201A40
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl ov02_022462E8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ScrCmd_709

	thumb_func_start ScrCmd_561
ScrCmd_561: ; 0x02201A50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, #0x80
	str r0, [sp]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	add r2, r6, #0
	add r3, r7, #0
	bl ov02_02246714
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_561

	thumb_func_start ScrCmd_775
ScrCmd_775: ; 0x02201AB8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r5, #0
	ldr r0, [r0, #0x3c]
	bl GetMapObjectByID
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r6, #0
	ldr r0, [r0, #0x3c]
	bl GetMapObjectByID
	add r4, #0x80
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	ldr r0, [r0, #0x10]
	bl ov02_022469B4
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_775

	thumb_func_start ScrCmd_714
ScrCmd_714: ; 0x02201B14
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0]
	ldrb r1, [r2]
	ldr r0, [r0, #0x10]
	bl ov02_022467C4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ScrCmd_714

	thumb_func_start ov01_02201B2C
ov01_02201B2C: ; 0x02201B2C
	ldr r1, _02201B3C ; =0x0000FFFF
	cmp r0, r1
	bhi _02201B36
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_02201B36:
	add r0, r1, #0
	bx lr
	nop
_02201B3C: .word 0x0000FFFF
	thumb_func_end ov01_02201B2C

	thumb_func_start ScrCmd_724
ScrCmd_724: ; 0x02201B40
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r6, #0x80
	add r4, r0, #0
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	bl Save_Pokeathlon_get
	bl sub_0203199C
	cmp r5, #9
	bhi _02201B8E
	lsl r1, r5, #2
	add r0, r0, r1
	ldr r0, [r0, #0x44]
	bl ov01_02201B2C
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
_02201B8E:
	sub r5, #0xa
	cmp r5, #7
	bhi _02201C00
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02201BA0: ; jump table
	.short _02201BB0 - _02201BA0 - 2 ; case 0
	.short _02201BBA - _02201BA0 - 2 ; case 1
	.short _02201BC4 - _02201BA0 - 2 ; case 2
	.short _02201BCE - _02201BA0 - 2 ; case 3
	.short _02201BD8 - _02201BA0 - 2 ; case 4
	.short _02201BE2 - _02201BA0 - 2 ; case 5
	.short _02201BEC - _02201BA0 - 2 ; case 6
	.short _02201BF6 - _02201BA0 - 2 ; case 7
_02201BB0:
	ldr r0, [r0, #8]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BBA:
	ldr r0, [r0, #0x70]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BC4:
	ldr r0, [r0, #4]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BCE:
	ldr r0, [r0, #0x14]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BD8:
	ldr r0, [r0, #0x1c]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BE2:
	ldr r0, [r0, #0x24]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BEC:
	ldr r0, [r0, #0x2c]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201BF6:
	ldr r0, [r0, #0x30]
	bl ov01_02201B2C
	strh r0, [r4]
	b _02201C04
_02201C00:
	mov r0, #0
	strh r0, [r4]
_02201C04:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_724

	thumb_func_start ScrCmd_725
ScrCmd_725: ; 0x02201C08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r6, [r2]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Save_Pokeathlon_get
	bl sub_020319F0
	cmp r6, #0
	ldr r1, [r0, #0x70]
	bne _02201C4A
	add r2, r1, r4
	ldr r1, _02201C5C ; =0x0000FFFF
	cmp r2, r1
	bls _02201C46
	str r1, [r0, #0x70]
	b _02201C56
_02201C46:
	str r2, [r0, #0x70]
	b _02201C56
_02201C4A:
	sub r1, r1, r4
	bpl _02201C54
	mov r1, #0
	str r1, [r0, #0x70]
	b _02201C56
_02201C54:
	str r1, [r0, #0x70]
_02201C56:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02201C5C: .word 0x0000FFFF
	thumb_func_end ScrCmd_725

	thumb_func_start ScrCmd_726
ScrCmd_726: ; 0x02201C60
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	bl ov01_021E7F00
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ScrCmd_726

	thumb_func_start ScrCmd_735
ScrCmd_735: ; 0x02201C70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Save_ApricornBox_get
	bl ApricornBox_GetKurtQuantity
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_735

	thumb_func_start ScrCmd_736
ScrCmd_736: ; 0x02201C9C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl Save_ApricornBox_get
	mov r1, #0
	add r2, r1, #0
	bl ApricornBox_SetKurtApricorn
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ScrCmd_736

	thumb_func_start ScrCmd_737
ScrCmd_737: ; 0x02201CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Save_ApricornBox_get
	bl ApricornBox_GetKurtBall
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_737

	thumb_func_start ScrCmd_738
ScrCmd_738: ; 0x02201CE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4]
	mov r5, #0
	ldr r0, [r0, #0xc]
	bl Save_ApricornBox_get
	add r6, r0, #0
	add r4, r5, #0
_02201D06:
	add r0, r6, #0
	add r1, r4, #0
	bl ApricornBox_CountApricorn
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #7
	blt _02201D06
	strh r5, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_738

	thumb_func_start ScrCmd_739
ScrCmd_739: ; 0x02201D1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #2
	bl CreateApricornBoxWork
	str r0, [r4]
	ldr r1, _02201D48 ; =ScrNative_WaitApplication_DestroyTaskData
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02201D48: .word ScrNative_WaitApplication_DestroyTaskData
	thumb_func_end ScrCmd_739

	thumb_func_start ScrCmd_740
ScrCmd_740: ; 0x02201D4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0203ED80
	str r0, [r4]
	ldr r1, _02201DA0 ; =ScrNative_WaitApplication_DestroyTaskData
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02201DA0: .word ScrNative_WaitApplication_DestroyTaskData
	thumb_func_end ScrCmd_740

	thumb_func_start ScrCmd_741
ScrCmd_741: ; 0x02201DA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl Save_ApricornBox_get
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl GetVarPointer
	str r0, [sp, #8]
	add r0, sp, #0x20
	bl GF_RTC_CopyDate
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	add r0, r0, #5
	strh r0, [r4]
	ldrh r1, [r4]
	ldr r0, [sp, #0xc]
	bl sub_02031CEC
	cmp r0, #0
	bne _02201E46
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #1
	add r0, r1, r0
	mov r1, #5
	bl _s32_div_f
	strh r1, [r4]
	ldrh r1, [r4]
	ldr r0, [sp, #0xc]
	add r2, sp, #0x18
	bl sub_02031CEC
_02201E46:
	ldrh r1, [r4]
	ldr r0, [sp, #0xc]
	mov r2, #0x20
	bl sub_020322AC
	str r0, [sp, #0x14]
	ldr r0, _02201F08 ; =gGameVersion
	ldr r2, [sp, #0x14]
	ldrb r5, [r0]
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r7]
	mov r1, #0
	mov r3, #2
	bl BufferString
	ldr r0, [sp, #0x14]
	bl FreeToHeap
	ldrh r1, [r4]
	ldr r0, [sp, #0xc]
	mov r2, #0x20
	bl sub_02032308
	mov r1, #1
	str r1, [sp]
	add r4, r0, #0
	str r5, [sp, #4]
	ldr r0, [r7]
	add r2, r4, #0
	mov r3, #2
	bl BufferString
	add r0, r4, #0
	bl FreeToHeap
	add r0, sp, #0x18
	bl sub_02031D80
	add r4, r0, #0
	add r0, sp, #0x18
	ldrh r0, [r0]
	mov r1, #0xa
	bl _s32_div_f
	lsl r1, r4, #1
	add r0, r0, r1
	strh r0, [r6]
	ldrh r1, [r6]
	cmp r1, #0x64
	bhs _02201EB4
	mov r0, #0x64
	strh r0, [r6]
	b _02201EBC
_02201EB4:
	ldr r0, _02201F0C ; =0x00001388
	cmp r1, r0
	bls _02201EBC
	strh r0, [r6]
_02201EBC:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r6]
	ldr r0, [r7]
	mov r1, #2
	mov r3, #4
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldr r0, [r7]
	add r2, r4, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, sp, #0x18
	ldrb r2, [r2, #2]
	ldr r0, [r7]
	mov r1, #4
	mov r3, #3
	bl BufferIntegerAsString
	add r0, sp, #0x18
	ldrh r1, [r0]
	ldr r0, [sp, #8]
	strh r1, [r0]
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02201F08: .word gGameVersion
_02201F0C: .word 0x00001388
	thumb_func_end ScrCmd_741

	thumb_func_start ScrCmd_743
ScrCmd_743: ; 0x02201F10
	push {r4, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl ov03_02258CFC
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ScrCmd_743

	thumb_func_start ScrCmd_744
ScrCmd_744: ; 0x02201F30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r0, #0x80
	ldr r7, [r0]
	ldr r0, [r7, #0xc]
	bl sub_02031B00
	ldr r5, _02201F90 ; =ov01_022093B4
	add r4, r0, #0
	mov r6, #0
_02201F44:
	add r1, r6, #0
	ldr r0, [r7, #0x3c]
	add r1, #0xf6
	bl GetMapObjectByID
	cmp r0, #0
	beq _02201F56
	bl DeleteMapObject
_02201F56:
	ldrh r2, [r4]
	cmp r2, #0
	beq _02201F80
	ldr r0, _02201F94 ; =0x000001ED
	cmp r2, r0
	bhi _02201F80
	ldrb r0, [r4, #2]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r0, [sp]
	ldrb r0, [r5]
	str r0, [sp, #4]
	ldrb r0, [r5, #1]
	str r0, [sp, #8]
	ldr r0, [r7, #0x20]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldrb r3, [r4, #3]
	ldr r0, [r7, #0x3c]
	bl ov01_02201F98
_02201F80:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #2
	cmp r6, #3
	blt _02201F44
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02201F90: .word ov01_022093B4
_02201F94: .word 0x000001ED
	thumb_func_end ScrCmd_744

	thumb_func_start ov01_02201F98
ov01_02201F98: ; 0x02201F98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r3, [sp, #0x18]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r0, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	bl FollowingPokemon_GetSpriteID
	lsl r5, r0, #1
	add r0, r7, #0
	bl GetFollowPokeSizeParamBySpecies
	lsl r1, r0, #1
	add r0, r0, r1
	add r1, r6, r0
	ldr r0, _02202058 ; =0x0000019F
	ldr r2, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp]
	mov r1, #0
	ldr r0, [sp, #0x3c]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	mov r3, #1
	str r5, [sp, #0x14]
	bl CreateSpecialFieldObjectEx
	add r4, r0, #0
	bne _02201FE4
	bl GF_AssertFail
_02201FE4:
	add r6, #0xf6
	add r0, r4, #0
	add r1, r6, #0
	bl MapObject_SetID
	add r0, r4, #0
	mov r1, #0
	bl MapObject_SetType
	add r0, r4, #0
	mov r1, #0
	bl MapObject_SetFlagID
	add r0, r4, #0
	mov r1, #0
	bl MapObject_SetScript
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl MapObject_SetParam
	str r5, [sp]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	lsl r2, r2, #0x18
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02069F0C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl MapObject_SetXRange
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl MapObject_SetYRange
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x1e
	bl MapObject_SetBits
	add r0, r4, #0
	mov r1, #0
	bl MapObject_ClearBits
	add r0, r4, #0
	mov r1, #0
	bl sub_0205F89C
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02202058: .word 0x0000019F
	thumb_func_end ov01_02201F98

	thumb_func_start ScrCmd_770
ScrCmd_770: ; 0x0220205C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, #0x80
	str r0, [sp]
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl Sav2_Pokedex_get
	mov r1, #1
	add r7, r0, #0
	bl Pokedex_GetSeenFormeNum_Unown
	add r6, r0, #0
	cmp r6, #0x1a
	bge _02202094
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02202094:
	mov r5, #0
	add r4, r5, #0
	cmp r6, #0
	ble _022020B6
_0220209C:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl Pokedex_GetSeenFormeByIdx_Unown
	cmp r0, #0x1a
	beq _022020B0
	cmp r0, #0x1b
	beq _022020B0
	add r5, r5, #1
_022020B0:
	add r4, r4, #1
	cmp r4, r6
	blt _0220209C
_022020B6:
	cmp r5, #0x1a
	bne _022020C0
	mov r1, #1
	ldr r0, [sp]
	b _022020C4
_022020C0:
	ldr r0, [sp]
	mov r1, #0
_022020C4:
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_770

	thumb_func_start ScrCmd_GiveTogepiEgg
ScrCmd_GiveTogepiEgg: ; 0x022020CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r0, #0x80
	ldr r7, [r0]
	ldr r0, [r7, #0xc]
	bl Sav2_PlayerData_GetProfileAddr
	add r4, r0, #0
	ldr r0, [r7, #0xc]
	bl SavArray_PlayerParty_get
	str r0, [sp, #8]
	bl GetPartyCount
	cmp r0, #6
	blt _022020F2
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022020F2:
	mov r0, #0xb
	bl AllocMonZeroed
	add r5, r0, #0
	bl ZeroMonData
	mov r0, #1
	mov r1, #0xd
	bl sub_02017FE4
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xaf
	mov r2, #1
	add r3, r4, #0
	bl SetEggStats
	mov r4, #0
	add r6, r4, #0
_0220211C:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r6, #0
	bl GetMonData
	cmp r0, #0
	beq _02202132
	add r4, r4, #1
	cmp r4, #4
	blt _0220211C
_02202132:
	cmp r4, #4
	bne _02202138
	mov r4, #3
_02202138:
	ldr r1, _022021A8 ; =0x00000146
	add r0, sp, #0xc
	strh r1, [r0, #2]
	add r1, r4, #0
	add r2, sp, #0xc
	add r0, r5, #0
	add r1, #0x36
	add r2, #2
	bl SetMonData
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl GetMonData
	add r1, sp, #0xc
	strb r0, [r1]
	add r4, #0x3a
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl SetMonData
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl AddMonToParty
	add r0, r5, #0
	bl FreeToHeap
	ldr r0, [r7, #0xc]
	bl Sav2_Misc_get
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r4, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_0202ABB0
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022021A8: .word 0x00000146
	thumb_func_end ScrCmd_GiveTogepiEgg

	thumb_func_start ScrCmd_777
ScrCmd_777: ; 0x022021AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	add r5, #0x80
	ldr r1, [r5]
	ldr r1, [r1, #0xc]
	bl sub_0206D8D0
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_777

	thumb_func_start ScrCmd_GiveSpikyEarPichu
ScrCmd_GiveSpikyEarPichu: ; 0x022021F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r0, #0xc]
	bl Sav2_PlayerData_GetProfileAddr
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	str r0, [sp, #0x1c]
	bl GetPartyCount
	cmp r0, #6
	blt _02202224
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02202224:
	mov r0, #0xb
	bl AllocMonZeroed
	add r5, r0, #0
	bl ZeroMonData
	ldr r0, [sp, #0x14]
	bl PlayerProfile_GetTrainerID
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0xac
	mov r2, #4
	mov r3, #1
	add r4, r0, #0
	bl sub_02072490
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #SPECIES_PICHU
	mov r2, #30
	mov r3, #0x20
	str r4, [sp, #0xc]
	bl CreateMon
	add r2, sp, #0x20
	mov r1, #1
	add r0, sp, #0x20
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x70
	add r2, #1
	bl SetMonData
	ldr r6, _02202304 ; =sSpikyEarPichuMoveset
	mov r4, #0
	add r7, sp, #0x20
_02202276:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r6, #0
	bl SetMonData
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl GetMonData
	add r1, r4, #0
	strb r0, [r7]
	add r0, r5, #0
	add r1, #0x3a
	add r2, sp, #0x20
	bl SetMonData
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #4
	blt _02202276
	mov r1, #0x4b
	add r2, sp, #0x20
	lsl r1, r1, #2
	add r0, sp, #0x20
	strh r1, [r0, #2]
	add r0, r5, #0
	mov r1, #6
	add r2, #2
	bl SetMonData
	ldr r0, [sp, #0x10]
	add r0, #0x80
	str r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapSec
	add r1, r0, #0
	mov r0, #0
	bl sub_02017FE4
	add r3, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	mov r2, #4
	bl sub_020720FC
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	bl AddMonToParty
	add r0, r5, #0
	bl FreeToHeap
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	bl UpdatePokedexWithReceivedSpecies
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02202304: .word sSpikyEarPichuMoveset
	thumb_func_end ScrCmd_GiveSpikyEarPichu

	thumb_func_start ScrCmd_PhotoAlbumIsFull
ScrCmd_PhotoAlbumIsFull: ; 0x02202308
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl Save_PhotoAlbum_get
	bl PhotoAlbum_GetNumSaved
	cmp r0, #0x24
	blo _02202334
	mov r0, #1
	b _02202336
_02202334:
	mov r0, #0
_02202336:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ScrCmd_PhotoAlbumIsFull

	thumb_func_start ScrCmd_RadioMusicIsPlaying
ScrCmd_RadioMusicIsPlaying: ; 0x0220233C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r4, r0, #0
	bl ov02_022522B4
	cmp r5, r0
	bne _02202370
	mov r0, #1
	b _02202372
_02202370:
	mov r0, #0
_02202372:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ScrCmd_RadioMusicIsPlaying

	thumb_func_start ov01_02202378
ov01_02202378: ; 0x02202378
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	add r5, r2, #0
	bl sub_0202C854
	add r4, r0, #0
	cmp r5, #0
	beq _02202390
	mov r0, #0xe
	str r0, [sp, #4]
	b _02202394
_02202390:
	mov r0, #0x15
	str r0, [sp, #4]
_02202394:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	blo _022023A2
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_022023A2:
	bl GetLCRNGSeed
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0202C7DC
	bl SetLCRNGSeed
	ldr r1, [sp, #4]
	mov r0, #0x20
	bl AllocFromHeapAtEnd
	ldr r2, [sp, #4]
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, _0220242C ; =ov01_022093D0
	lsl r0, r5, #3
	add r6, r1, r0
_022023CE:
	ldr r0, [sp, #8]
	mov r5, #0
	lsl r7, r0, #2
	ldr r0, [r6, r7]
	cmp r0, #0
	ble _02202408
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
_022023E4:
	bl LCRandom
	ldr r1, [sp, #4]
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _022023E4
	ldr r0, [sp, #0x10]
	strb r0, [r4, r1]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r6, r7]
	cmp r5, r0
	blt _022023E4
_02202408:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #2
	blo _022023CE
	ldr r0, [sp]
	ldrb r5, [r4, r0]
	add r0, r4, #0
	bl FreeToHeap
	ldr r0, [sp, #0xc]
	bl SetLCRNGSeed
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0220242C: .word ov01_022093D0
	thumb_func_end ov01_02202378

	thumb_func_start ScrCmd_CasinoGame
ScrCmd_CasinoGame: ; 0x02202430
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r6, [r0]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x80
	ldrb r4, [r1]
	ldr r0, [r0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r6, #0
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	bl ov01_02202378
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0203FA38
	str r0, [r7]
	ldr r1, _0220247C ; =ScrNative_WaitApplication_DestroyTaskData
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220247C: .word ScrNative_WaitApplication_DestroyTaskData
	thumb_func_end ScrCmd_CasinoGame

	thumb_func_start ScrCmd_BufferPokeathlonCourseName
ScrCmd_BufferPokeathlonCourseName: ; 0x02202480
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	lsl r2, r6, #0x18
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl BufferPokeathlonCourseName
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_BufferPokeathlonCourseName

	thumb_func_start ScrCmd_811
ScrCmd_811: ; 0x022024B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SaveData_GetPhoneRematches
	mov r1, #0
	add r2, r6, #0
	bl sub_0202F224
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_811

	thumb_func_start ScrCmd_812
ScrCmd_812: ; 0x022024FC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl SaveData_GetPhoneRematches
	bl sub_0202F1F4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ScrCmd_812

	thumb_func_start ScrCmd_GetBuenasPassword
ScrCmd_GetBuenasPassword: ; 0x02202510
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl ScriptState_GetBuenasPasswordSet
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, #msg_0066_D23R0102_00040
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	strh r1, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_GetBuenasPassword

	thumb_func_start ov01_02202570
ov01_02202570: ; 0x02202570
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
	add r7, r5, #0
_0220257A:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0xb5
	add r2, r7, #0
	bl GetMonData
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #5
	blt _0220257A
	cmp r5, #5
	bne _022025A2
	add r0, r6, #0
	mov r1, #0xba
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022025A2
	mov r5, #6
_022025A2:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02202570

	thumb_func_start ScrCmd_825
ScrCmd_825: ; 0x022025A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	bl ov01_02202570
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_825

	thumb_func_start ScrCmd_826
ScrCmd_826: ; 0x022025EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r4, #0
	bl GetPartyMonByIndex
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r4, #0
	bl GetPartyMonByIndex
	bl ov01_02202570
	cmp r0, #5
	bne _02202640
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0xba
	add r2, sp, #0
	bl SetMonData
_02202640:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_826

	thumb_func_start ScrCmd_572
ScrCmd_572: ; 0x02202648
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Sav2_SealCase_get
	bl SealCase_CountUniqueSeals
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_572

	thumb_func_start ScrCmd_GetSealQuantity
ScrCmd_GetSealQuantity: ; 0x02202674
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Sav2_SealCase_get
	add r1, r6, #0
	bl SealCase_CountSealOccurrenceAnywhere
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_GetSealQuantity

	thumb_func_start ScrCmd_GiveOrTakeSeal
ScrCmd_GiveOrTakeSeal: ; 0x022026B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl Sav2_SealCase_get
	lsl r2, r4, #0x10
	add r1, r6, #0
	asr r2, r2, #0x10
	bl GiveOrTakeSeal
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_GiveOrTakeSeal

	thumb_func_start ov01_022026F8
ov01_022026F8: ; 0x022026F8
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	ble _02202714
_02202700:
	ldrh r3, [r1]
	cmp r0, r3
	bne _0220270C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0220270C:
	add r4, r4, #1
	add r1, r1, #2
	cmp r4, r2
	blt _02202700
_02202714:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_022026F8

	thumb_func_start ScrCmd_GiveRandomSeal
ScrCmd_GiveRandomSeal: ; 0x0220271C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0x18]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	str r0, [sp, #8]
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, #0x80
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl Sav2_SealCase_get
	str r0, [sp, #0x10]
	mov r0, #0x20
	mov r1, #0x9a
	bl AllocFromHeapAtEnd
	mov r1, #0
	mov r2, #0x9a
	str r0, [sp, #0x14]
	bl MI_CpuFill8
	add r0, sp, #0x24
	add r0, #2
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	ldr r5, [sp, #0x14]
	mov r4, #0
	mov r6, #0x63
_02202790:
	ldr r0, [sp, #0x10]
	add r1, r4, #1
	bl SealCase_CountSealOccurrenceAnywhere
	sub r1, r6, r0
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, r0, r1
	strh r0, [r5]
	add r5, r5, #2
	str r0, [sp, #0x18]
	cmp r4, #0x4d
	blt _02202790
	cmp r0, #3
	ble _022027B4
	mov r0, #3
	str r0, [sp]
	b _022027B6
_022027B4:
	str r0, [sp]
_022027B6:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	ble _02202812
	add r6, sp, #0x20
	add r5, sp, #0x24
	add r5, #2
	str r6, [sp, #0x1c]
_022027C6:
	bl LCRandom
	ldr r1, [sp, #0x18]
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	add r2, r7, #0
	bl ov01_022026F8
	cmp r0, #0
	bne _022027C6
	ldr r2, [sp, #0x14]
	strh r4, [r6]
	mov r1, #0
_022027E8:
	ldrh r0, [r2]
	cmp r4, r0
	bhs _022027FE
	add r0, r1, #1
	strb r0, [r5]
	ldrb r1, [r5]
	ldr r0, [sp, #0x10]
	mov r2, #1
	bl GiveOrTakeSeal
	b _02202806
_022027FE:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #0x4d
	blt _022027E8
_02202806:
	ldr r0, [sp]
	add r7, r7, #1
	add r6, r6, #2
	add r5, r5, #1
	cmp r7, r0
	blt _022027C6
_02202812:
	ldr r0, [sp, #0x14]
	bl FreeToHeap
	add r1, sp, #0x20
	ldrb r2, [r1, #6]
	ldr r0, [sp, #0xc]
	strh r2, [r0]
	ldrb r2, [r1, #7]
	ldr r0, [sp, #8]
	strh r2, [r0]
	ldrb r1, [r1, #8]
	ldr r0, [sp, #4]
	strh r1, [r0]
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_GiveRandomSeal

	thumb_func_start ScrCmd_836
ScrCmd_836: ; 0x02202834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r4, #0x80
	str r0, [sp]
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	str r0, [sp, #4]
	bl GetPartyCount
	str r0, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _022028EC
_0220286A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl GetPartyMonByIndex
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r4, #0
	mov r1, #0x7a
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _022028E0
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _022028E0
	add r0, r4, #0
	mov r1, #0x98
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _022028E0
	ldr r0, _02202904 ; =0x0000017E
	cmp r7, r0
	beq _022028C6
	add r0, r0, #1
	cmp r7, r0
	beq _022028D4
	b _022028E0
_022028C6:
	cmp r6, #7
	bne _022028E0
	mov r0, #1
	orr r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _022028E0
_022028D4:
	cmp r6, #8
	bne _022028E0
	mov r0, #2
	orr r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_022028E0:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0220286A
_022028EC:
	cmp r5, #3
	bne _022028F6
	mov r1, #1
	ldr r0, [sp]
	b _022028FA
_022028F6:
	ldr r0, [sp]
	mov r1, #0
_022028FA:
	strh r1, [r0]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02202904: .word 0x0000017E
	thumb_func_end ScrCmd_836

	thumb_func_start ScrCmd_839
ScrCmd_839: ; 0x02202908
	push {r4, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl VarGet
	cmp r0, #0
	beq _02202926
	mov r0, #8
	bl Sys_SetSleepDisableFlag
	b _0220292C
_02202926:
	mov r0, #8
	bl Sys_ClearSleepDisableFlag
_0220292C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ScrCmd_839

	thumb_func_start ScrCmd_BugContestAction
ScrCmd_BugContestAction: ; 0x02202930
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, #0x80
	add r1, r0, #0
	ldr r5, [r5]
	cmp r4, #0
	bne _02202964
	add r0, r5, #0
	bl BugContest_new
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _0220297C
_02202964:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BugContest_delete
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl sub_02093070
_0220297C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ScrCmd_BugContestAction

	thumb_func_start ScrCmd_BufferBugContestWinner
ScrCmd_BufferBugContestWinner: ; 0x02202980
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSys_BugContest_get
	ldr r3, [r5, #8]
	add r1, r3, #1
	str r1, [r5, #8]
	ldrb r3, [r3]
	ldr r1, [r5, #0x78]
	ldr r2, [r4]
	bl BugContest_BufferContestWinnerNames
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferBugContestWinner

	thumb_func_start ScrCmd_JudgeBugContest
ScrCmd_JudgeBugContest: ; 0x022029B0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSys_BugContest_get
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r7, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r4, r0, #0
	add r0, r5, #0
	bl BugContest_Judge
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1a
	strh r0, [r6]
	ldrh r0, [r5, #0x1a]
	strh r0, [r7]
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02202A16
	mov r0, #0
	b _02202A20
_02202A16:
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0
	bl GetMonData
_02202A20:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_JudgeBugContest

	thumb_func_start ScrCmd_BufferBugContestMonNick
ScrCmd_BufferBugContestMonNick: ; 0x02202A28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSys_BugContest_get
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	add r4, r0, #0
	ldr r1, [r6]
	add r0, r7, #0
	add r2, r5, #0
	bl BugContest_BufferCaughtMonNick
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferBugContestMonNick

	thumb_func_start ScrCmd_BugContestGetTimeLeft
ScrCmd_BugContestGetTimeLeft: ; 0x02202A70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5]
	ldrb r6, [r1]
	mov r4, #1
	bl FieldSys_BugContest_get
	cmp r0, #0
	beq _02202AA2
	ldr r1, [r0, #0x1c]
	cmp r1, #0x14
	bhs _02202AA2
	mov r0, #0x14
	sub r4, r0, r1
_02202AA2:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #2
	bl BufferIntegerAsString
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_BugContestGetTimeLeft

	thumb_func_start ScrCmd_IsBugContestantRegistered
ScrCmd_IsBugContestantRegistered: ; 0x02202ABC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSys_BugContest_get
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	lsl r1, r5, #0x18
	add r4, r0, #0
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl BugContest_ContestantIsRegistered
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_IsBugContestantRegistered

	thumb_func_start ScrCmd_652
ScrCmd_652: ; 0x02202B00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	add r1, r7, #0
	mov r2, #0
	bl MonGetTutorCompat
	cmp r0, #0
	bne _02202B60
	mov r0, #0
	strh r0, [r4]
	b _02202B74
_02202B60:
	cmp r0, #7
	bhi _02202B6A
	mov r0, #1
	strh r0, [r4]
	b _02202B74
_02202B6A:
	mov r1, #6
	bl _s32_div_f
	add r0, r0, #1
	strh r0, [r4]
_02202B74:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_652

	thumb_func_start ScrCmd_TutorMoveTeachInSlot
ScrCmd_TutorMoveTeachInSlot: ; 0x02202B78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl PartyMonSetMoveInSlot
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_TutorMoveTeachInSlot

	thumb_func_start ScrCmd_TutorMoveGetPrice
ScrCmd_TutorMoveGetPrice: ; 0x02202BD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl GetVarPointer
	ldr r2, _02202C20 ; =sTutorMoves
	add r5, r0, #0
	mov r1, #0
_02202BFC:
	ldrh r0, [r2]
	cmp r4, r0
	bne _02202C0E
	ldr r0, _02202C24 ; =sTutorMoves + 2
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02202C0E:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x34
	blo _02202BFC
	bl GF_AssertFail
	mov r0, #0
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02202C20: .word sTutorMoves
_02202C24: .word sTutorMoves + 2
	thumb_func_end ScrCmd_TutorMoveGetPrice

	thumb_func_start ScrCmd_656
ScrCmd_656: ; 0x02202C28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	mov r1, #3
	mov r2, #0
	bl MonGetTutorCompat
	cmp r0, #0
	beq _02202C72
	mov r0, #1
	b _02202C74
_02202C72:
	mov r0, #0
_02202C74:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_656

	thumb_func_start SpeciesAndFormeToWazaOshieIndex
SpeciesAndFormeToWazaOshieIndex: ; 0x02202C7C
	; Convert species and forme into
	; naix for tutor compat
	ldr r2, _02202D3C ; =SPECIES_ROTOM
	cmp r0, r2
	bgt _02202CA0
	bge _02202D02
	add r3, r2, #0
	sub r3, #SPECIES_ROTOM - SPECIES_DEOXYS
	cmp r0, r3
	bgt _02202C96
	add r3, r2, #0
	sub r3, #SPECIES_ROTOM - SPECIES_DEOXYS
	cmp r0, r3
	beq _02202CBC
	b _02202D32
_02202C96:
	add r3, r2, #0
	sub r3, #SPECIES_ROTOM - SPECIES_WORMADAM
	cmp r0, r3
	beq _02202CDA
	b _02202D32
_02202CA0:
	add r3, r2, #0
	add r3, #8
	cmp r0, r3
	bgt _02202CB2
	add r3, r2, #0
	add r3, #8
	cmp r0, r3
	beq _02202CEE
	b _02202D32
_02202CB2:
	add r3, r2, #0
	add r3, #0xd
	cmp r0, r3
	beq _02202CF8
	b _02202D32
_02202CBC:
	cmp r1, #1
	bne _02202CC6
	add r0, r2, #0
	add r0, #0xf
	b _02202D32
_02202CC6:
	cmp r1, #2
	bne _02202CD0
	add r0, r2, #0
	add r0, #0x10
	b _02202D32
_02202CD0:
	cmp r1, #3
	bne _02202D32
	add r0, r2, #0
	add r0, #0x11
	b _02202D32
_02202CDA:
	cmp r1, #1
	bne _02202CE4
	add r0, r2, #0
	add r0, #0x12
	b _02202D32
_02202CE4:
	cmp r1, #2
	bne _02202D32
	add r0, r2, #0
	add r0, #0x13
	b _02202D32
_02202CEE:
	cmp r1, #1
	bne _02202D32
	add r0, r2, #0
	add r0, #0x14
	b _02202D32
_02202CF8:
	cmp r1, #1
	bne _02202D32
	add r0, r2, #0
	add r0, #0x15
	b _02202D32
_02202D02:
	cmp r1, #1
	bne _02202D0C
	add r0, r2, #0
	add r0, #0x16
	b _02202D32
_02202D0C:
	cmp r1, #2
	bne _02202D16
	add r0, r2, #0
	add r0, #0x17
	b _02202D32
_02202D16:
	cmp r1, #3
	bne _02202D20
	add r0, r2, #0
	add r0, #0x18
	b _02202D32
_02202D20:
	cmp r1, #4
	bne _02202D2A
	add r0, r2, #0
	add r0, #0x19
	b _02202D32
_02202D2A:
	cmp r1, #5
	bne _02202D32
	add r0, r2, #0
	add r0, #0x1a
_02202D32:
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_02202D3C: .word SPECIES_ROTOM
	thumb_func_end SpeciesAndFormeToWazaOshieIndex

	thumb_func_start MonGetTutorCompat
MonGetTutorCompat: ; 0x02202D40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	mov r4, #0
	add r5, sp, #4
	; Get the poke's current moveset
_02202D4E:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02202D4E
	; Get species and forme, then
	; get tutor compat flags
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl SpeciesAndFormeToWazaOshieIndex
	add r1, r0, #0
	mov r0, #0xb
	bl WazaOshieGet
	mov r6, #0
	mov ip, r0
	ldr r1, _02202DFC ; =sTutorMoves
	add r0, r6, #0
_02202D98:
	; waza_oshie.bin entries are 64-bit
	; flag arrays
	asr r2, r0, #2
	lsr r2, r2, #0x1d
	add r2, r0, r2
	asr r3, r2, #3
	mov r2, ip
	ldrb r5, [r2, r3]
	lsr r4, r0, #0x1f
	lsl r3, r0, #0x1d
	sub r3, r3, r4
	mov r2, #0x1d
	ror r3, r2
	add r2, r4, r3
	add r3, r5, #0
	asr r3, r2
	mov r2, #1
	tst r2, r3
	beq _02202DE6
	ldrb r3, [r1, #3]
	ldr r2, [sp]
	cmp r2, r3
	bne _02202DE6
	ldrh r4, [r1]
	mov r5, #0
	add r3, sp, #4
_02202DC8:
	ldrh r2, [r3]
	cmp r2, r4
	beq _02202DD6
	add r5, r5, #1
	add r3, r3, #2
	cmp r5, #4
	blt _02202DC8
_02202DD6:
	cmp r5, #4
	blt _02202DE6
	cmp r7, #0
	beq _02202DE0
	strb r0, [r7, r6]
_02202DE0:
	add r2, r6, #1
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
_02202DE6:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, #0x34
	blo _02202D98
	mov r0, ip
	bl FreeToHeap
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02202DFC: .word sTutorMoves
	thumb_func_end MonGetTutorCompat

	thumb_func_start WazaOshieGet
WazaOshieGet: ; 0x02202E00
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	bl FS_InitFile
	ldr r1, _02202E60 ; =ov01_02209AF4
	add r0, sp, #0
	bl FS_OpenFile
	cmp r0, #0
	bne _02202E24
	bl GF_AssertFail
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, pc}
_02202E24:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r1, r1, r0
	ldr r0, _02202E64 ; =505 * 8
	cmp r1, r0
	beq _02202E34
	bl GF_AssertFail
_02202E34:
	add r0, r5, #0
	mov r1, #8
	bl AllocFromHeapAtEnd
	add r5, r0, #0
	add r0, sp, #0
	lsl r1, r4, #3
	mov r2, #0
	bl FS_SeekFile
	add r0, sp, #0
	add r1, r5, #0
	mov r2, #8
	bl FS_ReadFile
	add r0, sp, #0
	bl FS_CloseFile
	add r0, r5, #0
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_02202E60: .word ov01_02209AF4
_02202E64: .word 505 * 8
	thumb_func_end WazaOshieGet

	thumb_func_start ScrCmd_MoveTutorChooseMove
ScrCmd_MoveTutorChooseMove: ; 0x02202E68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #0x14]
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0x28]
	bl ov01_021F6B20
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl ScriptReadHalfword
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	bl ScriptReadHalfword
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	bl ScriptReadHalfword
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl ScriptReadHalfword
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x20]
	str r0, [r1, #0x64]
	add r0, r1, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r5, #0
	bl GetPartyMonByIndex
	add r1, r7, #0
	add r2, sp, #0x38
	bl MonGetTutorCompat
	str r0, [sp, #0x34]
	cmp r0, #7
	bgt _02202EF2
	mov r5, #0
	str r5, [sp, #0x2c]
	b _02202F10
_02202EF2:
	mov r1, #6
	add r5, r6, #0
	mul r5, r1
	cmp r0, r5
	ble _02202F0C
	sub r0, r0, r5
	str r0, [sp, #0x34]
	cmp r0, #6
	ble _02202F06
	str r1, [sp, #0x34]
_02202F06:
	mov r0, #1
	str r0, [sp, #0x2c]
	b _02202F10
_02202F0C:
	str r1, [sp, #0x34]
	mov r5, #0
_02202F10:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	bl GetVarPointer
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSysGetAttrAddr
	mov r1, #1
	str r1, [sp]
	str r6, [sp, #4]
	ldr r2, [r4]
	mov r3, #0
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r1, #0
	ldr r0, [r0, #0x78]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	bl ov01_021EDF78
	ldr r1, [sp, #0x24]
	ldr r2, _02203048 ; =0x000002EE
	str r0, [r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x20
	bl NewMsgDataFromNarc
	str r0, [sp, #0x1c]
	mov r0, #0x10
	mov r1, #0x20
	bl String_ctor
	add r7, r0, #0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r0, r1
	cmp r0, #4
	blt _02202F6C
	mov r0, #1
	b _02202F6E
_02202F6C:
	mov r0, #0
_02202F6E:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _02202FE2
	add r0, sp, #0x38
	add r5, r0, r5
_02202F82:
	ldrb r1, [r5]
	ldr r0, [sp, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0220304C ; =sTutorMoves
	ldrh r1, [r1, r2]
	add r2, r7, #0
	bl ReadMsgDataIntoString
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0
	add r2, r7, #0
	mov r3, #2
	bl BufferString
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrb r2, [r5]
	ldr r0, [r4]
	mov r1, #1
	lsl r3, r2, #2
	ldr r2, _0220304C ; =sTutorMoves
	add r2, r2, r3
	ldrb r2, [r2, #2]
	mov r3, #2
	bl BufferIntegerAsString
	ldrb r3, [r5]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	lsl r6, r3, #2
	ldr r3, _0220304C ; =sTutorMoves
	ldr r0, [r0]
	ldrh r3, [r3, r6]
	mov r2, #0xff
	bl MoveTutorMenu_SetListItem
	ldr r0, [sp, #0x30]
	add r5, r5, #1
	add r1, r0, #1
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x30]
	cmp r1, r0
	blt _02202F82
_02202FE2:
	add r0, r7, #0
	bl String_dtor
	ldr r0, [sp, #0x1c]
	bl DestroyMsgData
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02203002
	ldr r0, [sp, #0x24]
	ldr r3, _02203050 ; =0x0000FFFD
	ldr r0, [r0]
	mov r1, #2
	mov r2, #0xff
	bl MoveTutorMenu_SetListItem
_02203002:
	ldr r0, [sp, #0x24]
	ldr r3, _02203054 ; =0x0000FFFE
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0xff
	bl MoveTutorMenu_SetListItem
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GetVarPointer
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #3
	mov r2, #7
	bl ov01_021F6ABC
	ldr r0, [sp, #0x14]
	ldr r1, _02203058 ; =ov01_0220305C
	bl SetupNativeScript
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GetVarPointer
	mov r0, #1
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_02203048: .word 0x000002EE
_0220304C: .word sTutorMoves
_02203050: .word 0x0000FFFD
_02203054: .word 0x0000FFFE
_02203058: .word ov01_0220305C
	thumb_func_end ScrCmd_MoveTutorChooseMove

	thumb_func_start ov01_0220305C
ov01_0220305C: ; 0x0220305C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0]
	add r0, r6, #0
	bl ov01_021F6B20
	ldr r1, [r5, #0x64]
	add r4, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl GetVarPointer
	ldrh r1, [r0]
	ldr r0, _02203090 ; =0x0000EEEE
	cmp r1, r0
	bne _02203084
	mov r0, #0
	pop {r4, r5, r6, pc}
_02203084:
	ldr r0, [r4]
	bl ov01_021EDF00
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02203090: .word 0x0000EEEE
	thumb_func_end ov01_0220305C

	thumb_func_start ScrCmd_742
ScrCmd_742: ; 0x02203094
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GetVarPointer
	add r7, r0, #0
	mov r0, #0
	add r4, #0x80
	strh r0, [r7]
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r6, #0
	bl GetPartyMonByIndex
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #0x2c
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r4, #0
	bl Species_LoadLearnsetTable
	mov r2, #0
	cmp r0, #0
	ble _0220312E
	add r3, r4, #0
_0220311A:
	ldrh r1, [r3]
	cmp r5, r1
	bne _02203126
	mov r0, #1
	strh r0, [r7]
	b _0220312E
_02203126:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, r0
	blt _0220311A
_0220312E:
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_742

	thumb_func_start ScrCmd_113
ScrCmd_113: ; 0x02203138
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x28
	bl FieldSysGetAttrAddr
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov01_021EEA90
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_113

	thumb_func_start ScrCmd_114
ScrCmd_114: ; 0x02203188
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x28
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	bl ov01_021EEB38
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_114

	thumb_func_start ScrCmd_115
ScrCmd_115: ; 0x022031A0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x28
	bl FieldSysGetAttrAddr
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4]
	ldr r1, [r1]
	bl ov01_021EEB4C
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_115

	thumb_func_start ov01_022031C0
ov01_022031C0: ; 0x022031C0
	push {r3, r4, r5, lr}
	mov r1, #5
	mov r2, #0
	lsl r1, r1, #6
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x20
	str r5, [r4]
	bl GF_ExpHeap_FndInitAllocator
	add r0, r4, #0
	bl ov01_022031F8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_022031C0

	thumb_func_start ov01_022031E8
ov01_022031E8: ; 0x022031E8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_02203270
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_022031E8

	thumb_func_start ov01_022031F8
ov01_022031F8: ; 0x022031F8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0x81
	mov r2, #0
	bl ov01_021F14B4
	str r0, [r4, #0x14]
	add r0, r4, #0
	ldr r1, [r4, #0x14]
	add r0, #0x1c
	bl ov01_021FBD38
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x3c
	add r1, #0x1c
	bl ov01_021FBF2C
	ldr r0, [r4]
	mov r1, #0x68
	mov r2, #0
	bl ov01_021F14B4
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [r4, #0x18]
	add r0, #0x2c
	bl ov01_021FBD38
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xb4
	add r1, #0x2c
	bl ov01_021FBF2C
	mov r0, #4
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x2c
	mov r2, #0x67
	mov r3, #0xa4
	bl ov01_021FBE44
	mov r1, #0x4b
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xb4
	add r1, r4, r1
	bl ov01_021FBF50
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022031F8

	thumb_func_start ov01_02203270
ov01_02203270: ; 0x02203270
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl ov01_021FBDFC
	ldr r0, [r4, #0x14]
	bl ov01_021F1448
	add r0, r4, #0
	add r0, #0x2c
	bl ov01_021FBDFC
	ldr r0, [r4, #0x18]
	bl ov01_021F1448
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #4
	bl ov01_021FBE80
	pop {r4, pc}
	thumb_func_end ov01_02203270

	thumb_func_start ov01_0220329C
ov01_0220329C: ; 0x0220329C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r6, r0, #0
	add r5, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r6, #0
	add r1, sp, #8
	bl MapObject_GetPositionVec
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, sp, #8
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	sub r1, r1, #1
	add r0, sp, #0x28
	strb r1, [r0]
	add r0, r4, #0
	str r4, [sp, #0x18]
	bl ov01_021F1468
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x11
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x2c
	str r6, [sp, #0x20]
	bl MapObject_GetPositionVec
	add r0, r6, #0
	mov r1, #2
	bl sub_0205F09C
	cmp r5, #0
	add r1, sp, #8
	bne _0220330A
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _0220334C ; =ov01_022094DC
	add r0, r4, #0
	add r2, sp, #0x2c
	mov r3, #1
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
_0220330A:
	cmp r5, #1
	bne _02203322
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _02203350 ; =ov01_022094F0
	add r0, r4, #0
	add r2, sp, #0x2c
	mov r3, #1
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
_02203322:
	cmp r5, #2
	add r2, sp, #0x2c
	bne _0220333A
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _02203354 ; =ov01_02209504
	add r0, r4, #0
	mov r3, #1
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
_0220333A:
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _02203358 ; =ov01_022094C8
	add r0, r4, #0
	mov r3, #1
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220334C: .word ov01_022094DC
_02203350: .word ov01_022094F0
_02203354: .word ov01_02209504
_02203358: .word ov01_022094C8
	thumb_func_end ov01_0220329C

	thumb_func_start ov01_0220335C
ov01_0220335C: ; 0x0220335C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	mov r0, #0
	add r2, r4, #0
	str r0, [r4]
	add r2, #0x18
	mov r6, #4
_02203374:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _02203374
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x30]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	add r6, r4, #0
	add r3, sp, #0
	add r6, #0x18
	str r0, [r4, #0xc]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x2c]
	add r1, sp, #0
	add r0, #0x3c
	bl ov01_021FC014
	ldr r0, [r4, #0x2c]
	add r1, sp, #0
	add r0, #0xb4
	bl ov01_021FC014
	ldr r0, [r4, #0x2c]
	mov r1, #0
	add r0, #0xb4
	bl ov01_021FC004
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_0220335C

	thumb_func_start ov01_022033E0
ov01_022033E0: ; 0x022033E0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_022033E0

	thumb_func_start ov01_022033E4
ov01_022033E4: ; 0x022033E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _02203408
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02203408:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02203440
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	add r3, r4, #0
	add r3, #0x18
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _02203440
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02068DA8
_02203440:
	ldr r0, [r4]
	cmp r0, #0
	beq _02203452
	cmp r0, #1
	beq _02203464
	cmp r0, #2
	beq _02203498
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02203452:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #2
	blt _022034B2
	mov r0, #1
	add sp, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02203464:
	ldr r0, [r4, #0x2c]
	mov r1, #0
	add r0, #0x3c
	bl ov01_021FC004
	ldr r0, [r4, #0x2c]
	mov r1, #1
	add r0, #0xb4
	bl ov01_021FC004
	add r0, r6, #0
	mov r1, #0
	bl sub_02069DC8
	add r0, r6, #0
	bl sub_0205F484
	mov r0, #0x4b
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov01_021FBF20
	mov r0, #2
	str r0, [r4]
_02203498:
	mov r0, #0x4b
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl ov01_021FBEE4
	cmp r0, #0
	beq _022034B2
	add r0, r5, #0
	bl ov01_021F1640
_022034B2:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_022033E4

	thumb_func_start ov01_022034B8
ov01_022034B8: ; 0x022034B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _022034DA
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_022034DA:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x2c]
	add r0, #0x3c
	bl ov01_021FBF68
	ldr r0, [r4, #0x2c]
	add r0, #0xb4
	bl ov01_021FBF68
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022034B8

	thumb_func_start ov01_022034F8
ov01_022034F8: ; 0x022034F8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _0220351A
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_0220351A:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02203552
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	add r6, r4, #0
	add r6, #0x18
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _02203552
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02068DA8
_02203552:
	ldr r0, [r4]
	cmp r0, #0
	beq _02203560
	cmp r0, #1
	beq _02203586
	add sp, #0x18
	pop {r4, r5, r6, pc}
_02203560:
	ldr r0, [r4, #0x2c]
	mov r1, #0
	add r0, #0x3c
	bl ov01_021FC004
	ldr r0, [r4, #0x2c]
	mov r1, #1
	add r0, #0xb4
	bl ov01_021FC004
	mov r0, #0x4b
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov01_021FBF20
	mov r0, #1
	str r0, [r4]
_02203586:
	mov r0, #0x4b
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl ov01_021FBEE4
	cmp r0, #0
	beq _022035A0
	add r0, r5, #0
	bl ov01_021F1640
_022035A0:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_022034F8

	thumb_func_start ov01_022035A4
ov01_022035A4: ; 0x022035A4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _022035C6
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_022035C6:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x2c]
	add r0, #0xb4
	bl ov01_021FBF68
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022035A4

	thumb_func_start ov01_022035DC
ov01_022035DC: ; 0x022035DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	mov r0, #0
	add r2, r4, #0
	str r0, [r4]
	add r2, #0x18
	mov r6, #4
_022035F4:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _022035F4
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x30]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	add r6, r4, #0
	add r3, sp, #0
	add r6, #0x18
	str r0, [r4, #0xc]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x2c]
	add r1, sp, #0
	add r0, #0x3c
	bl ov01_021FC014
	ldr r0, [r4, #0x2c]
	mov r1, #0
	add r0, #0x3c
	bl ov01_021FC004
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_022035DC

	thumb_func_start ov01_02203654
ov01_02203654: ; 0x02203654
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	str r0, [sp]
	bl sub_0205F0F8
	cmp r0, #0
	bne _02203678
	add r0, r4, #0
	bl ov01_021F1640
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02203678:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _022036B0
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_02068DB8
	add r6, r5, #0
	add r6, #0x18
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r5, #0x24]
	bl sub_0206121C
	str r0, [r5, #0x14]
	cmp r0, #1
	bne _022036B0
	ldr r0, [sp, #0x14]
	add r1, sp, #0x1c
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_02068DA8
_022036B0:
	ldr r0, [r5]
	cmp r0, #0
	beq _022036C4
	cmp r0, #1
	beq _0220373E
	cmp r0, #2
	bne _022036C0
	b _022037C8
_022036C0:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_022036C4:
	ldr r0, [r5, #0x24]
	bl FollowingPokemon_GetMapObject
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x3c]
	bl ov01_021F771C
	add r7, r0, #0
	bl sub_02023FB0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02023FB0
	add r1, r0, #0
	ldr r3, _022037DC ; =0xFFFF0000
	lsl r1, r1, #0x10
	and r3, r4
	lsr r3, r3, #0x10
	ldr r2, _022037E0 ; =ov01_02209B18
	mov r0, #1
	lsr r1, r1, #0xd
	lsl r3, r3, #3
	bl GF_CreateNewVramTransferTask
	add r0, r6, #0
	bl ov01_022055DC
	cmp r0, #0
	beq _02203734
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r4, r0, #0x18
	add r0, r6, #0
	add r1, #0x48
	bl MapObject_GetPositionVec
	add r1, r5, #0
	add r2, r5, #0
	add r0, r4, #0
	add r1, #0x48
	add r2, #0x3c
	bl ov01_022039BC
	ldr r0, [r5, #0x3c]
	ldr r0, [r0]
	str r0, [r5, #0x40]
	add r0, r4, #0
	bl ov01_022039E0
	str r0, [r5, #0x44]
	b _02203738
_02203734:
	mov r0, #0
	str r0, [r5, #0x3c]
_02203738:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0220373E:
	ldr r3, _022037E4 ; =ov01_022094BC
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x10]
	add r1, r0, #1
	mov r0, #1
	str r1, [r5, #0x10]
	lsl r0, r0, #0xc
	bl _s32_div_f
	str r0, [sp, #4]
	mov r0, #1
	ldr r1, [r5, #0x10]
	lsl r0, r0, #0xc
	bl _s32_div_f
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x3c]
	bl ov01_021F771C
	add r1, sp, #4
	bl sub_02023E78
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _022037A2
	ldr r0, [r5, #0x24]
	bl FollowingPokemon_GetMapObject
	ldr r3, [r5, #0x10]
	ldr r2, [r5, #0x44]
	add r4, r3, #0
	lsl r2, r2, #0xc
	mul r4, r2
	asr r2, r4, #1
	lsr r2, r2, #0x1e
	add r2, r4, r2
	ldr r1, [r5, #0x40]
	asr r2, r2, #2
	add r2, r1, r2
	ldr r1, [r5, #0x3c]
	str r2, [r1]
	add r1, r5, #0
	add r1, #0x48
	bl MapObject_SetPositionVec
_022037A2:
	ldr r0, [r5, #0x10]
	cmp r0, #4
	blt _022037D8
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [r5, #0x2c]
	add r0, #0x3c
	bl ov01_021FC004
	ldr r0, [sp]
	mov r1, #1
	bl sub_0205F690
	mov r0, #0
	add sp, #0x28
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022037C8:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #4
	blt _022037D8
	add r0, r4, #0
	bl ov01_021F1640
_022037D8:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022037DC: .word 0xFFFF0000
_022037E0: .word ov01_02209B18
_022037E4: .word ov01_022094BC
	thumb_func_end ov01_02203654

	thumb_func_start ov01_022037E8
ov01_022037E8: ; 0x022037E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _0220380A
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_0220380A:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x2c]
	add r0, #0x3c
	bl ov01_021FBF68
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022037E8

	thumb_func_start ov01_02203820
ov01_02203820: ; 0x02203820
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	mov r0, #0
	add r2, r4, #0
	str r0, [r4]
	add r2, #0x18
	mov r6, #4
_02203838:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _02203838
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x30]
	bl MapObject_GetGfxID
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	add r6, r4, #0
	add r3, sp, #0
	add r6, #0x18
	str r0, [r4, #0xc]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	add r0, r5, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x2c]
	add r1, sp, #0
	add r0, #0x3c
	bl ov01_021FC014
	ldr r0, [r4, #0x2c]
	mov r1, #0
	add r0, #0x3c
	bl ov01_021FC004
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_02203820

	thumb_func_start ov01_02203890
ov01_02203890: ; 0x02203890
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r7, [r5, #0x30]
	ldr r1, [r5, #4]
	add r4, r0, #0
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r7, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _022038B4
	add r0, r4, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022038B4:
	ldr r0, [r5]
	cmp r0, #0
	beq _022038C6
	cmp r0, #1
	beq _0220391C
	cmp r0, #2
	beq _022039A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022038C6:
	ldr r0, [r5, #0x24]
	bl FollowingPokemon_GetMapObject
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x3c]
	bl ov01_021F771C
	add r0, r6, #0
	bl ov01_022055DC
	cmp r0, #0
	beq _02203912
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r4, r0, #0x18
	add r0, r6, #0
	add r1, #0x48
	bl MapObject_GetPositionVec
	add r1, r5, #0
	add r2, r5, #0
	add r0, r4, #0
	add r1, #0x48
	add r2, #0x3c
	bl ov01_022039BC
	ldr r0, [r5, #0x3c]
	ldr r0, [r0]
	str r0, [r5, #0x40]
	add r0, r4, #0
	bl ov01_022039E0
	str r0, [r5, #0x44]
	b _02203916
_02203912:
	mov r0, #0
	str r0, [r5, #0x3c]
_02203916:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0220391C:
	ldr r3, _022039B8 ; =ov01_022094B0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x10]
	add r1, r0, #1
	mov r0, #1
	str r1, [r5, #0x10]
	lsl r0, r0, #0xc
	bl _s32_div_f
	str r0, [sp]
	mov r0, #1
	ldr r1, [r5, #0x10]
	lsl r0, r0, #0xc
	bl _s32_div_f
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x3c]
	bl ov01_021F771C
	add r1, sp, #0
	bl sub_02023E78
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _0220397E
	ldr r0, [r5, #0x24]
	bl FollowingPokemon_GetMapObject
	ldr r2, [r5, #0x44]
	ldr r1, [r5, #0x10]
	lsl r2, r2, #0xc
	mul r2, r1
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	ldr r3, [r5, #0x40]
	asr r1, r1, #2
	add r2, r3, r1
	ldr r1, [r5, #0x3c]
	str r2, [r1]
	add r1, r5, #0
	add r1, #0x48
	bl MapObject_SetPositionVec
_0220397E:
	ldr r0, [r5, #0x10]
	cmp r0, #4
	blt _022039B4
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [r5, #0x2c]
	add r0, #0x3c
	bl ov01_021FC004
	add r0, r7, #0
	mov r1, #1
	bl sub_02069DC8
	mov r0, #0
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_022039A4:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0x10
	blt _022039B4
	add r0, r4, #0
	bl ov01_021F1640
_022039B4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022039B8: .word ov01_022094B0
	thumb_func_end ov01_02203890

	thumb_func_start ov01_022039BC
ov01_022039BC: ; 0x022039BC
	cmp r0, #3
	bhi _022039DC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022039CC: ; jump table
	.short _022039D4 - _022039CC - 2 ; case 0
	.short _022039D4 - _022039CC - 2 ; case 1
	.short _022039DA - _022039CC - 2 ; case 2
	.short _022039DA - _022039CC - 2 ; case 3
_022039D4:
	add r1, #8
	str r1, [r2]
	bx lr
_022039DA:
	str r1, [r2]
_022039DC:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_022039BC

	thumb_func_start ov01_022039E0
ov01_022039E0: ; 0x022039E0
	push {r3, lr}
	cmp r0, #3
	bhi _02203A0E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022039F2: ; jump table
	.short _022039FA - _022039F2 - 2 ; case 0
	.short _02203A00 - _022039F2 - 2 ; case 1
	.short _02203A04 - _022039F2 - 2 ; case 2
	.short _02203A0A - _022039F2 - 2 ; case 3
_022039FA:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02203A00:
	mov r0, #1
	pop {r3, pc}
_02203A04:
	mov r0, #9
	mvn r0, r0
	pop {r3, pc}
_02203A0A:
	mov r0, #0xa
	pop {r3, pc}
_02203A0E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022039E0

	thumb_func_start ov01_02203A18
ov01_02203A18: ; 0x02203A18
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #8
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	mov r1, #0
	str r1, [r4, #4]
	bl ov01_02203B28
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02203A18

	thumb_func_start ov01_02203A38
ov01_02203A38: ; 0x02203A38
	push {r4, lr}
	add r4, r0, #0
	bl ov01_02203B70
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_02203A38

	thumb_func_start ov01_02203A48
ov01_02203A48: ; 0x02203A48
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F146C
	add r6, r0, #0
	mov r1, #0x12
	str r6, [sp, #0x20]
	bl ov01_021F1450
	str r0, [sp, #0x24]
	str r5, [sp, #0x28]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02203A6E
	add sp, #0x2c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02203A6E:
	mov r1, #1
	str r1, [r0, #4]
	add r0, r5, #0
	add r1, sp, #0x14
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #8
	bl MapObject_GetFacingVec
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	add r1, sp, #8
	add r2, r0, #0
	bl VEC_Add
	add r0, r5, #0
	bl sub_0205F538
	add r1, r0, #1
	add r0, sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, _02203AB0 ; =ov01_02209518
	add r0, r6, #0
	add r2, sp, #0x14
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_02203AB0: .word ov01_02209518
	thumb_func_end ov01_02203A48

	thumb_func_start ov01_02203AB4
ov01_02203AB4: ; 0x02203AB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #8
	add r6, r2, #0
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	str r6, [r2]
	str r4, [r2, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _02203AD4 ; =ov01_02203AD8
	bl TaskManager_Call
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02203AD4: .word ov01_02203AD8
	thumb_func_end ov01_02203AB4

	thumb_func_start ov01_02203AD8
ov01_02203AD8: ; 0x02203AD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetStatePtr
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnv
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _02203AF6
	cmp r0, #1
	beq _02203B06
	b _02203B22
_02203AF6:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov01_02203A48
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02203B22
_02203B06:
	ldr r0, [r4, #4]
	bl ov01_021F146C
	mov r1, #0x12
	bl ov01_021F1450
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02203B22
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
_02203B22:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02203AD8

	thumb_func_start ov01_02203B28
ov01_02203B28: ; 0x02203B28
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0xc
	mov r2, #0x82
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #0xc
	mov r2, #0x8c
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #0xd
	mov r2, #0x1c
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02203B6C ; =ov01_0220952C
	mov r2, #0xc
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0xe
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02203B6C: .word ov01_0220952C
	thumb_func_end ov01_02203B28

	thumb_func_start ov01_02203B70
ov01_02203B70: ; 0x02203B70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0xc
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #0xc
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #0xd
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0xe
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02203B70

	thumb_func_start ov01_02203B98
ov01_02203B98: ; 0x02203B98
	push {r4, lr}
	add r2, r1, #0
	mov r1, #0xe
	bl ov01_021F1740
	add r4, r0, #0
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02203B98

	thumb_func_start ov01_02203BB4
ov01_02203BB4: ; 0x02203BB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x38]
	bl MapObject_GetID
	str r0, [r4, #8]
	ldr r0, [r4, #0x38]
	bl sub_0205F254
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	add r0, r6, #0
	bl sub_02068D90
	lsl r5, r0, #3
	ldr r1, _02203C94 ; =ov01_02209544
	ldr r0, [r4, #0x30]
	ldr r1, [r1, r5]
	mov r2, #1
	bl ov01_021F14B4
	ldr r1, _02203C98 ; =ov01_02209548
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, r5]
	mov r2, #1
	bl ov01_021F14B4
	add r1, r4, #0
	str r0, [r4, #0x54]
	add r1, #0x40
	bl sub_02026E18
	ldr r0, [r4, #0x58]
	bl NNS_G3dGetTex
	str r0, [r4, #0x50]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x64
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	ldr r0, [r4, #0x30]
	mov r1, #0xd
	bl ov01_021F1AD4
	add r5, r0, #0
	mov r1, #0
	bl sub_020209AC
	str r0, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl sub_02020910
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_02020838
	add r2, r0, #0
	ldr r1, [r4, #0x5c]
	ldr r3, [r4, #0x60]
	mov r0, #0
	bl GF_CreateNewVramTransferTask
	ldr r0, [r5, #0x2c]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r5, r0, #0xd
	ldr r0, [r4, #0x50]
	bl sub_02020888
	add r2, r0, #0
	mov r0, #1
	add r1, r5, #0
	mov r3, #0x20
	bl GF_CreateNewVramTransferTask
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl ov01_02203B98
	mov r1, #0
	str r0, [r4, #0x3c]
	bl sub_02023EA4
	ldr r0, _02203C9C ; =SEQ_SE_DP_DECIDE
	bl PlaySE
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02203C94: .word ov01_02209544
_02203C98: .word ov01_02209548
_02203C9C: .word SEQ_SE_DP_DECIDE
	thumb_func_end ov01_02203BB4

	thumb_func_start ov01_02203CA0
ov01_02203CA0: ; 0x02203CA0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023DA4
	ldr r0, [r4, #0x54]
	bl FreeToHeap
	ldr r0, [r4, #0x58]
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_02203CA0

	thumb_func_start ov01_02203CB8
ov01_02203CB8: ; 0x02203CB8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r4, r1, #0
	ldr r5, [r4, #0x38]
	ldr r1, [r4, #8]
	add r6, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _02203CD4
	bl GF_AssertFail
_02203CD4:
	add r0, r5, #0
	add r1, sp, #0x24
	bl MapObject_GetPositionVec
	add r0, r5, #0
	add r1, sp, #0x18
	bl MapObject_GetFacingVec
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0205F990
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0205F9B0
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r2, r3, r2
	add r0, r0, r2
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	add r0, r1, r0
	add r5, r2, r0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	mov r1, #2
	add r0, r2, r0
	lsl r1, r1, #0x10
	add r0, r3, r0
	add r2, r5, r1
	str r5, [sp, #0x34]
	lsr r1, r1, #5
	str r0, [sp, #0x38]
	add r0, r0, r1
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	ldr r0, [r4]
	cmp r0, #3
	bhi _02203DB4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02203D40: ; jump table
	.short _02203D48 - _02203D40 - 2 ; case 0
	.short _02203D76 - _02203D40 - 2 ; case 1
	.short _02203D8A - _02203D40 - 2 ; case 2
	.short _02203DA4 - _02203D40 - 2 ; case 3
_02203D48:
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02023EA4
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	cmp r0, #0
	ble _02203D68
	mov r0, #2
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _02203DB4
_02203D68:
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02203DB4
_02203D76:
	add r0, r4, #0
	add r0, #0x40
	bl ov01_02203DF8
	cmp r0, #0
	beq _02203DB4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02203DB4
_02203D8A:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #2
	blt _02203DB4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
	b _02203DB4
_02203DA4:
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [r0, #4]
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
_02203DB4:
	add r0, r6, #0
	add r1, sp, #0x30
	bl sub_02068DA8
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_02203CB8

	thumb_func_start ov01_02203DC0
ov01_02203DC0: ; 0x02203DC0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _02203DF2
	add r1, sp, #0
	bl sub_02068DB8
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
_02203DF2:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02203DC0

	thumb_func_start ov01_02203DF8
ov01_02203DF8: ; 0x02203DF8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x24]
	add r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r1, [r4, #0x26]
	ldr r2, [r4]
	ldrh r3, [r4, #0x24]
	lsl r0, r1, #1
	ldrh r0, [r2, r0]
	cmp r3, r0
	blo _02203E3A
	add r0, r1, #1
	strh r0, [r4, #0x26]
	mov r0, #0
	strh r0, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	ldr r0, [r4, #0xc]
	cmp r2, r0
	blo _02203E24
	mov r0, #1
	pop {r4, pc}
_02203E24:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	ldrb r1, [r1, r2]
	bl sub_02020838
	add r2, r0, #0
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	mov r0, #0
	bl GF_CreateNewVramTransferTask
_02203E3A:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02203DF8

	thumb_func_start ov01_02203E40
ov01_02203E40: ; 0x02203E40
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x68
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	mov r1, #0
	str r1, [r4, #0x60]
	mov r1, #0xfe
	lsl r1, r1, #0x16
	str r1, [r4, #0x64]
	bl ov01_02203E74
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_02203E40

	thumb_func_start ov01_02203E64
ov01_02203E64: ; 0x02203E64
	push {r4, lr}
	add r4, r0, #0
	bl ov01_02203E94
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_02203E64

	thumb_func_start ov01_02203E74
ov01_02203E74: ; 0x02203E74
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x58
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x5c
	str r0, [sp, #4]
	ldr r0, [r3]
	mov r1, #0x6a
	mov r2, #0
	add r3, r3, #4
	bl ov01_021F1AB8
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov01_02203E74

	thumb_func_start ov01_02203E94
ov01_02203E94: ; 0x02203E94
	ldr r3, _02203E9C ; =ov01_021F1448
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_02203E9C: .word ov01_021F1448
	thumb_func_end ov01_02203E94

	thumb_func_start ov01_02203EA0
ov01_02203EA0: ; 0x02203EA0
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	bl ov01_021F1468
	add r6, r0, #0
	str r4, [sp, #0x2c]
	add r0, r4, #0
	mov r1, #0x13
	bl ov01_021F1450
	str r0, [sp, #0x30]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	bne _02203F24
	str r5, [sp, #0x34]
	add r0, r5, #0
	add r1, sp, #0x14
	bl MapObject_GetPositionVec
	ldr r1, [r6, #0x24]
	add r0, sp, #8
	bl sub_02023640
	add r0, sp, #8
	add r1, sp, #0x14
	add r2, sp, #0x3c
	bl VEC_Subtract
	add r0, sp, #8
	add r1, sp, #0x14
	bl VEC_Distance
	str r0, [sp, #0x38]
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x38]
	add r0, sp, #0x3c
	add r1, r0, #0
	bl VEC_Normalize
	add r0, r5, #0
	add r1, sp, #0x20
	bl MapObject_GetPositionVec
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x2c
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _02203F28 ; =ov01_022095B4
	add r0, r4, #0
	add r2, sp, #0x20
	mov r3, #0
	bl ov01_021F1620
	ldr r1, [sp, #0x30]
	str r0, [r1, #0x60]
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0x60]
_02203F24:
	add sp, #0x48
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02203F28: .word ov01_022095B4
	thumb_func_end ov01_02203EA0

	thumb_func_start ov01_02203F2C
ov01_02203F2C: ; 0x02203F2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02068D74
	ldr r0, [r0, #8]
	str r4, [r0, #0x64]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02203F2C

	thumb_func_start ov01_02203F3C
ov01_02203F3C: ; 0x02203F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02203F3C

	thumb_func_start ov01_02203F68
ov01_02203F68: ; 0x02203F68
	bx lr
	.balign 4, 0
	thumb_func_end ov01_02203F68

	thumb_func_start ov01_02203F6C
ov01_02203F6C: ; 0x02203F6C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r1, sp, #0xc
	bl MapObject_GetPositionVec
	ldr r0, [r4, #0x10]
	add r4, #0x14
	add r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl VEC_MultAdd
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02203F6C

	thumb_func_start ov01_02203F98
ov01_02203F98: ; 0x02203F98
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r6, _02203FFC ; =ov01_022095C8
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #4
_02203FA6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02203FA6
	ldr r0, [r6]
	str r0, [r3]
	ldr r1, [r4, #8]
	ldr r0, _02204000 ; =0x45800000
	ldr r1, [r1, #0x64]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x24]
	ldr r1, [r4, #8]
	ldr r0, _02204000 ; =0x45800000
	ldr r1, [r1, #0x64]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x28]
	ldr r1, [r4, #8]
	ldr r0, _02204000 ; =0x45800000
	ldr r1, [r1, #0x64]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r1, sp, #0x30
	bl sub_02068DB8
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	add r0, r0, #4
	add r2, sp, #0
	add r3, sp, #0x24
	bl sub_0201F554
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02203FFC: .word ov01_022095C8
_02204000: .word 0x45800000
	thumb_func_end ov01_02203F98

	thumb_func_start ov01_02204004
ov01_02204004: ; 0x02204004
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x1c
	add r7, r0, #0
	add r5, r2, #0
	str r3, [sp]
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x10]
	str r6, [r4, #0x14]
	ldr r0, [sp]
	str r5, [r4, #0x18]
	str r0, [r4, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl AllocFromHeap
	mov r2, #0
	str r0, [r4]
	cmp r6, #0
	ble _0220403E
	mov r1, #0xff
_02204034:
	ldr r0, [r4]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, r6
	blt _02204034
_0220403E:
	mov r0, #0x5c
	add r6, r5, #0
	mul r6, r0
	add r0, r7, #0
	add r1, r6, #0
	bl AllocFromHeap
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	mov r0, #0
	add r2, r6, #0
	bl MIi_CpuClearFast
	add r0, r7, #0
	lsl r1, r5, #2
	bl AllocFromHeap
	mov r6, #0
	str r0, [r4, #0xc]
	cmp r5, #0
	ble _0220407E
	add r2, r6, #0
	add r3, r6, #0
_0220406C:
	ldr r0, [r4, #8]
	add r6, r6, #1
	add r1, r0, r2
	ldr r0, [r4, #0xc]
	add r2, #0x5c
	str r1, [r0, r3]
	add r3, r3, #4
	cmp r6, r5
	blt _0220406C
_0220407E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02204004

	thumb_func_start ov01_02204084
ov01_02204084: ; 0x02204084
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl FreeToHeap
	ldr r0, [r4, #0xc]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02204084

	thumb_func_start ov01_022040A4
ov01_022040A4: ; 0x022040A4
	push {r3, lr}
	add r2, r1, #0
	ldr r3, [r0, #0x10]
	ldr r1, [r0]
	strb r3, [r1, r2]
	ldr r3, [r0, #4]
	lsl r1, r2, #2
	ldr r1, [r3, r1]
	str r1, [sp]
	add r1, sp, #0
	bl ov01_02204168
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022040A4

	thumb_func_start ov01_022040C0
ov01_022040C0: ; 0x022040C0
	ldr r2, [r0, #0x10]
	sub r3, r2, #1
	str r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	lsl r0, r3, #2
	str r1, [r2, r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_022040C0

	thumb_func_start ov01_022040D0
ov01_022040D0: ; 0x022040D0
	ldr r2, [r0]
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq _022040E0
	ldr r1, [r0, #0xc]
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	bx lr
_022040E0:
	mov r0, #0
	bx lr
	thumb_func_end ov01_022040D0

	thumb_func_start ov01_022040E4
ov01_022040E4: ; 0x022040E4
	push {r3, lr}
	add r2, r1, #0
	ldr r3, [r0, #4]
	lsl r1, r2, #2
	ldr r1, [r3, r1]
	str r1, [sp]
	add r1, sp, #0
	bl ov01_02204168
	pop {r3, pc}
	thumb_func_end ov01_022040E4

	thumb_func_start ov01_022040F8
ov01_022040F8: ; 0x022040F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_02204144
	cmp r0, #0
	beq _02204110
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_022040D0
	pop {r3, r4, r5, pc}
_02204110:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_022040E4
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022040F8

	thumb_func_start ov01_0220411C
ov01_0220411C: ; 0x0220411C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02204128
	mov r0, #0
	pop {r3, r4, r5, pc}
_02204128:
	ldr r1, [r4, #0x58]
	bl ov01_02204144
	cmp r0, #0
	bne _0220413E
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_022040C0
	mov r0, #1
	pop {r3, r4, r5, pc}
_0220413E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_0220411C

	thumb_func_start ov01_02204144
ov01_02204144: ; 0x02204144
	ldr r0, [r0]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _02204150
	mov r0, #1
	bx lr
_02204150:
	mov r0, #0
	bx lr
	thumb_func_end ov01_02204144

	thumb_func_start ov01_02204154
ov01_02204154: ; 0x02204154
	ldr r2, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02204162
	mov r0, #1
	bx lr
_02204162:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_02204154

	thumb_func_start ov01_02204168
ov01_02204168: ; 0x02204168
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1]
	add r4, r2, #0
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02204198
	add r2, r0, #0
	add r2, #8
	beq _0220418C
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0220418C
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0220418E
_0220418C:
	mov r1, #0
_0220418E:
	cmp r1, #0
	beq _02204198
	ldr r1, [r1]
	add r2, r0, r1
	b _0220419A
_02204198:
	mov r2, #0
_0220419A:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r2, [r0, #0x54]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r0, #0x54]
	bl NNS_G3dRenderObjInit
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0xc]
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	add r1, r1, #1
	str r1, [r5, #0x10]
	str r4, [r0, #0x58]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02204168

	thumb_func_start ov01_022041C4
ov01_022041C4: ; 0x022041C4
	push {r3, lr}
	mov r1, #0x10
	bl AllocFromHeap
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, pc}
	thumb_func_end ov01_022041C4

	thumb_func_start ov01_022041D8
ov01_022041D8: ; 0x022041D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x24
	add r7, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	strh r1, [r4, #0x22]
	strh r7, [r4, #0x20]
	str r1, [r4, #0x1c]
	add r1, r5, #0
	mov r2, #4
	bl GF_ExpHeap_FndInitAllocator
	lsl r6, r7, #5
	add r0, r5, #0
	add r1, r6, #0
	bl AllocFromHeap
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	mov r0, #0
	add r2, r6, #0
	bl MIi_CpuClearFast
	add r0, r5, #0
	lsl r1, r7, #2
	bl AllocFromHeap
	mov r3, #0
	str r0, [r4, #0x14]
	cmp r7, #0
	ble _02204248
	add r5, r3, #0
	add r6, r3, #0
	add r2, r3, #0
_02204226:
	ldr r0, [r4, #0x10]
	add r3, r3, #1
	add r0, r0, r5
	str r2, [r0, #0x14]
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	str r2, [r0, #4]
	ldr r0, [r4, #0x10]
	str r2, [r0, r5]
	ldr r0, [r4, #0x10]
	add r1, r0, r5
	ldr r0, [r4, #0x14]
	add r5, #0x20
	str r1, [r0, r6]
	add r6, r6, #4
	cmp r3, r7
	blt _02204226
_02204248:
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0220425E
	ldr r0, [sp]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0]
	b _02204268
_0220425E:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	str r4, [r0, #0x18]
	ldr r0, [sp]
	str r4, [r0, #8]
_02204268:
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_022041D8

	thumb_func_start ov01_02204278
ov01_02204278: ; 0x02204278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	cmp r0, #0
	beq _022042F6
	add r1, r0, #0
	ldr r4, [r1, #4]
	cmp r4, #0
	bne _02204292
	bl FreeToHeap
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02204292:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ble _022042F0
_0220429E:
	ldrh r0, [r4, #0x20]
	mov r7, #0
	cmp r0, #0
	ble _022042CC
	add r5, r7, #0
_022042A8:
	ldr r0, [r4, #0x10]
	add r6, r0, r5
	ldr r0, [r6, #0x14]
	cmp r0, #1
	bne _022042C2
	add r0, r4, #0
	add r1, r6, #0
	bl ov01_02204500
	add r0, r4, #0
	add r1, r6, #0
	bl ov01_0220431C
_022042C2:
	ldrh r0, [r4, #0x20]
	add r7, r7, #1
	add r5, #0x20
	cmp r7, r0
	blt _022042A8
_022042CC:
	ldr r0, [r4, #0x10]
	bl FreeToHeap
	ldr r0, [r4, #0x14]
	bl FreeToHeap
	add r0, r4, #0
	ldr r4, [r4, #0x18]
	bl FreeToHeap
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _0220429E
_022042F0:
	ldr r0, [sp]
	bl FreeToHeap
_022042F6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02204278

	thumb_func_start ov01_022042FC
ov01_022042FC: ; 0x022042FC
	push {r3, lr}
	ldrh r2, [r0, #0x22]
	ldrh r1, [r0, #0x20]
	cmp r2, r1
	blo _0220430E
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_0220430E:
	add r1, r2, #1
	strh r1, [r0, #0x22]
	ldr r1, [r0, #0x14]
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022042FC

	thumb_func_start ov01_0220431C
ov01_0220431C: ; 0x0220431C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x22]
	add r4, r1, #0
	cmp r0, #0
	bne _0220432E
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_0220432E:
	sub r0, r0, #1
	strh r0, [r5, #0x22]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0220433C
	bl FreeToHeap
_0220433C:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x14]
	ldrh r0, [r5, #0x22]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #2
	str r4, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_0220431C

	thumb_func_start ov01_0220434C
ov01_0220434C: ; 0x0220434C
	ldrh r0, [r0, #0x22]
	bx lr
	thumb_func_end ov01_0220434C

	thumb_func_start ov01_02204350
ov01_02204350: ; 0x02204350
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	cmp r0, #0
	beq _022043D4
	ldr r6, [r0, #4]
	cmp r6, #0
	beq _022043D4
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ble _022043D4
_0220436C:
	ldrh r0, [r6, #0x20]
	mov r7, #0
	cmp r0, #0
	ble _022043C2
	add r5, r7, #0
_02204376:
	ldr r0, [r6, #0x10]
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _022043B8
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _022043B8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022043B8
	add r0, r4, #0
	bl ov01_02204594
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	beq _022043B8
	add r0, r4, #0
	bl ov01_022045DC
	cmp r0, #0
	beq _022043B8
	ldr r0, [r4, #0x18]
	add r1, r0, #1
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _022043B6
	mov r0, #0
	str r0, [r4, #0x1c]
	b _022043B8
_022043B6:
	str r1, [r4, #0x18]
_022043B8:
	ldrh r0, [r6, #0x20]
	add r7, r7, #1
	add r5, #0x20
	cmp r7, r0
	blt _02204376
_022043C2:
	ldr r0, [sp, #4]
	ldr r6, [r6, #0x18]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _0220436C
_022043D4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02204350

	thumb_func_start ov01_022043D8
ov01_022043D8: ; 0x022043D8
	push {r4, r5, r6, r7}
	cmp r0, #0
	beq _0220441E
	ldr r5, [r0, #4]
	cmp r5, #0
	beq _0220441E
	ldr r1, [r0, #0xc]
	mov r3, #0
	cmp r1, #0
	ble _0220441E
	mov r1, #1
_022043EE:
	ldrh r2, [r5, #0x20]
	mov r4, #0
	cmp r2, #0
	ble _02204414
	add r6, r4, #0
_022043F8:
	ldr r2, [r5, #0x10]
	add r2, r2, r6
	ldr r7, [r2, #0x14]
	cmp r7, #1
	bne _0220440A
	ldr r7, [r2, #0x1c]
	cmp r7, #0
	beq _0220440A
	str r1, [r2, #0xc]
_0220440A:
	ldrh r2, [r5, #0x20]
	add r4, r4, #1
	add r6, #0x20
	cmp r4, r2
	blt _022043F8
_02204414:
	ldr r2, [r0, #0xc]
	add r3, r3, #1
	ldr r5, [r5, #0x18]
	cmp r3, r2
	blt _022043EE
_0220441E:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_022043D8

	thumb_func_start ov01_02204424
ov01_02204424: ; 0x02204424
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	cmp r0, #0
	beq _0220446E
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _0220446E
	ldr r0, [r0, #0xc]
	mov r7, #0
	cmp r0, #0
	ble _0220446E
_0220443A:
	ldrh r0, [r4, #0x20]
	mov r6, #0
	cmp r0, #0
	ble _02204462
	add r5, r6, #0
_02204444:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	ldr r1, [r0, #0x14]
	cmp r1, #1
	bne _02204458
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _02204458
	bl ov01_022044E0
_02204458:
	ldrh r0, [r4, #0x20]
	add r6, r6, #1
	add r5, #0x20
	cmp r6, r0
	blt _02204444
_02204462:
	ldr r0, [sp]
	add r7, r7, #1
	ldr r0, [r0, #0xc]
	ldr r4, [r4, #0x18]
	cmp r7, r0
	blt _0220443A
_0220446E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02204424

	thumb_func_start ov01_02204470
ov01_02204470: ; 0x02204470
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	add r6, r3, #0
	bl NNS_G3dGetAnmByIdx
	add r7, r0, #0
	bne _0220448A
	bl GF_AssertFail
_0220448A:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r5]
	cmp r0, #0
	bne _0220449E
	bl GF_AssertFail
_0220449E:
	ldr r0, [r5]
	ldr r3, [sp, #0x18]
	add r1, r7, #0
	add r2, r6, #0
	bl NNS_G3dAnmObjInit
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02204470

	thumb_func_start ov01_022044B0
ov01_022044B0: ; 0x022044B0
	push {r4, r5, r6, lr}
	ldr r6, [r0, #0x1c]
	add r5, r1, #0
	add r4, r2, #0
	cmp r6, #0
	beq _022044C0
	blx r6
	str r4, [r5, #4]
_022044C0:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_022044B0

	thumb_func_start ov01_022044C4
ov01_022044C4: ; 0x022044C4
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov01_022044C4

	thumb_func_start ov01_022044C8
ov01_022044C8: ; 0x022044C8
	push {r3, r4}
	mov r4, #0
	str r4, [r0, #0x18]
	mov r4, #1
	str r4, [r0, #0x1c]
	str r4, [r0, #0x14]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_022044C8

	thumb_func_start ov01_022044E0
ov01_022044E0: ; 0x022044E0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _022044EE
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0]
	bx lr
_022044EE:
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r2]
	bx lr
	thumb_func_end ov01_022044E0

	thumb_func_start ov01_02204500
ov01_02204500: ; 0x02204500
	ldr r3, _02204508 ; =NNS_G3dFreeAnmObj
	ldr r1, [r1]
	bx r3
	nop
_02204508: .word NNS_G3dFreeAnmObj
	thumb_func_end ov01_02204500

	thumb_func_start ov01_0220450C
ov01_0220450C: ; 0x0220450C
	ldr r3, _02204514 ; =NNS_G3dRenderObjAddAnmObj
	ldr r1, [r1]
	bx r3
	nop
_02204514: .word NNS_G3dRenderObjAddAnmObj
	thumb_func_end ov01_0220450C

	thumb_func_start ov01_02204518
ov01_02204518: ; 0x02204518
	push {r3, lr}
	cmp r1, #0
	bne _02204522
	mov r0, #0
	pop {r3, pc}
_02204522:
	ldr r1, [r1]
	cmp r1, #0
	bne _0220452C
	mov r0, #0
	pop {r3, pc}
_0220452C:
	cmp r0, #0
	bne _02204534
	mov r0, #0
	pop {r3, pc}
_02204534:
	ldr r2, [r0, #8]
	cmp r2, #0
	bne _0220454A
	ldr r2, [r0, #0x10]
	cmp r2, #0
	bne _0220454A
	ldr r2, [r0, #0x18]
	cmp r2, #0
	bne _0220454A
	mov r0, #0
	pop {r3, pc}
_0220454A:
	bl NNS_G3dRenderObjRemoveAnmObj
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_02204518

	thumb_func_start ov01_02204554
ov01_02204554: ; 0x02204554
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov01_02204554

	thumb_func_start ov01_0220455C
ov01_0220455C: ; 0x0220455C
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov01_0220455C

	thumb_func_start ov01_02204560
ov01_02204560: ; 0x02204560
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0220456A
	mov r0, #1
	bx lr
_0220456A:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_02204560

	thumb_func_start ov01_02204570
ov01_02204570: ; 0x02204570
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _02204588
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r2]
	bx lr
_02204588:
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0]
	bx lr
	thumb_func_end ov01_02204570

	thumb_func_start ov01_02204590
ov01_02204590: ; 0x02204590
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov01_02204590

	thumb_func_start ov01_02204594
ov01_02204594: ; 0x02204594
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _022045BA
	ldr r3, [r0]
	mov r1, #1
	ldr r2, [r3]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r3]
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldr r1, [r2]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _022045DA
	mov r0, #0
	str r0, [r2]
	bx lr
_022045BA:
	ldr r0, [r0]
	ldr r2, [r0]
	cmp r2, #0
	bgt _022045D2
	ldr r1, [r0, #8]
	ldrh r1, [r1, #4]
	lsl r2, r1, #0xc
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0]
	bx lr
_022045D2:
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0]
_022045DA:
	bx lr
	thumb_func_end ov01_02204594

	thumb_func_start ov01_022045DC
ov01_022045DC: ; 0x022045DC
	ldr r1, [r0, #0x10]
	ldr r0, [r0]
	cmp r1, #0
	bne _022045FE
	ldr r2, [r0]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	cmp r2, r0
	blt _022045FA
	mov r0, #1
	bx lr
_022045FA:
	mov r0, #0
	bx lr
_022045FE:
	ldr r0, [r0]
	cmp r0, #0
	bne _02204608
	mov r0, #1
	bx lr
_02204608:
	mov r0, #0
	bx lr
	thumb_func_end ov01_022045DC

	thumb_func_start ov01_0220460C
ov01_0220460C: ; 0x0220460C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov01_022041D8
	ldr r1, _02204630 ; =ov01_022046A4
	str r0, [r4]
	bl ov01_022044C4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02204630: .word ov01_022046A4
	thumb_func_end ov01_0220460C

	thumb_func_start ov01_02204634
ov01_02204634: ; 0x02204634
	ldr r3, _02204638 ; =FreeToHeap
	bx r3
	.balign 4, 0
_02204638: .word FreeToHeap
	thumb_func_end ov01_02204634

	thumb_func_start ov01_0220463C
ov01_0220463C: ; 0x0220463C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	bl ov01_022042FC
	add r4, r0, #0
	bne _02204650
	bl GF_AssertFail
_02204650:
	mov r1, #0
	mov r2, #0
	add r0, r4, #0
	mvn r1, r1
	add r3, r2, #0
	bl ov01_022044C8
	mov r0, #0x8c
	add r1, r6, #0
	mov r2, #4
	bl AllocAndReadWholeNarcMemberByIdPair
	add r2, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	mov r3, #0
	bl ov01_022044B0
	str r4, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_0220463C

	thumb_func_start ov01_02204678
ov01_02204678: ; 0x02204678
	ldr r3, _02204684 ; =ov01_0220450C
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #4]
	bx r3
	nop
_02204684: .word ov01_0220450C
	thumb_func_end ov01_02204678

	thumb_func_start ov01_02204688
ov01_02204688: ; 0x02204688
	ldr r3, _02204694 ; =ov01_02204518
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #4]
	bx r3
	nop
_02204694: .word ov01_02204518
	thumb_func_end ov01_02204688

	thumb_func_start ov01_02204698
ov01_02204698: ; 0x02204698
	ldr r3, _022046A0 ; =ov01_0220434C
	ldr r0, [r0]
	bx r3
	nop
_022046A0: .word ov01_0220434C
	thumb_func_end ov01_02204698

	thumb_func_start ov01_022046A4
ov01_022046A4: ; 0x022046A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0
	bl NNS_G3dGetAnmByIdx
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_022046D4
	add r1, r4, #0
	str r0, [r5]
	bl ov01_02204728
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_022046A4

	thumb_func_start ov01_022046C8
ov01_022046C8: ; 0x022046C8
	ldrb r0, [r0, #9]
	mov r1, #3
	lsl r0, r0, #1
	add r0, #0x1c
	bic r0, r1
	bx lr
	thumb_func_end ov01_022046C8

	thumb_func_start ov01_022046D4
ov01_022046D4: ; 0x022046D4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov01_022046C8
	add r1, r0, #0
	add r0, r4, #0
	bl NNS_FndAllocFromAllocator
	pop {r4, pc}
	thumb_func_end ov01_022046D4

	thumb_func_start ov01_022046E8
ov01_022046E8: ; 0x022046E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02204724 ; =_02110A0C
	add r4, r1, #0
	ldr r0, [r0]
	add r1, r5, #0
	str r0, [r5, #0xc]
	ldrb r2, [r4, #9]
	mov r0, #0
	add r1, #0x1a
	strb r2, [r5, #0x19]
	lsl r2, r2, #1
	bl MIi_CpuClear16
	ldrb r0, [r4, #9]
	mov r2, #0
	cmp r0, #0
	bls _02204720
	mov r0, #1
	lsl r0, r0, #8
_02204710:
	add r1, r2, #0
	orr r1, r0
	strh r1, [r5, #0x1a]
	ldrb r1, [r4, #9]
	add r2, r2, #1
	add r5, r5, #2
	cmp r2, r1
	blo _02204710
_02204720:
	pop {r3, r4, r5, pc}
	nop
_02204724: .word _02110A0C
	thumb_func_end ov01_022046E8

	thumb_func_start ov01_02204728
ov01_02204728: ; 0x02204728
	mov r3, #0
	str r3, [r0]
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r2, #0x7f
	strb r2, [r0, #0x18]
	mov r2, #1
	lsl r2, r2, #0xc
	str r2, [r0, #4]
	str r3, [r0, #0x14]
	ldr r3, _02204740 ; =ov01_022046E8
	bx r3
	.balign 4, 0
_02204740: .word ov01_022046E8
	thumb_func_end ov01_02204728

	thumb_func_start ov01_02204744
ov01_02204744: ; 0x02204744
	push {r4, lr}
	mov r1, #0x78
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x78
	bl MIi_CpuClearFast
	bl GF_RTC_GetTimeOfDay
	str r0, [r4]
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02204744

	thumb_func_start ov01_02204764
ov01_02204764: ; 0x02204764
	ldr r3, _02204768 ; =FreeToHeap
	bx r3
	.balign 4, 0
_02204768: .word FreeToHeap
	thumb_func_end ov01_02204764

	thumb_func_start ov01_0220476C
ov01_0220476C: ; 0x0220476C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #4]
	add r4, r2, #0
	add r6, r3, #0
	cmp r1, #4
	bge _022047D4
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0220478C
	bl GF_AssertFail
_0220478C:
	cmp r6, #4
	ble _02204794
	bl GF_AssertFail
_02204794:
	ldr r2, [r5, #4]
	add r1, r5, #0
	mov r0, #0x1c
	add r1, #8
	mul r0, r2
	mov r3, #1
	add r2, r1, r0
	str r3, [r1, r0]
	str r6, [r2, #4]
	cmp r6, #4
	ble _022047AE
	mov r0, #4
	str r0, [r2, #4]
_022047AE:
	ldr r1, [r2, #4]
	mov r0, #0
	cmp r1, #0
	ble _022047CA
_022047B6:
	lsl r1, r0, #2
	ldr r3, [r4, r1]
	add r1, r2, r1
	add r0, r0, #1
	str r3, [r1, #8]
	lsl r0, r0, #0x18
	ldr r1, [r2, #4]
	lsr r0, r0, #0x18
	cmp r0, r1
	blt _022047B6
_022047CA:
	str r7, [r2, #0x18]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022047D4:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_0220476C

	thumb_func_start ov01_022047DC
ov01_022047DC: ; 0x022047DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl GF_RTC_GetTimeOfDay
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r5]
	cmp r0, r7
	beq _0220482E
	lsl r0, r0, #0x18
	add r4, r5, #0
	lsr r0, r0, #0x18
	str r7, [r5]
	mov r6, #0
	add r4, #8
	str r0, [sp]
_022047FC:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02204824
	ldr r2, _02204830 ; =ov01_022095EC
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	add r1, r1, r4
	ldr r1, [r1, #8]
	bl ov01_02204518
	ldr r1, _02204830 ; =ov01_022095EC
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, r7]
	lsl r1, r1, #2
	add r1, r1, r4
	ldr r1, [r1, #8]
	bl ov01_0220450C
_02204824:
	add r6, r6, #1
	add r5, #0x1c
	add r4, #0x1c
	cmp r6, #4
	blt _022047FC
_0220482E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02204830: .word ov01_022095EC
	thumb_func_end ov01_022047DC

	thumb_func_start ov01_02204834
ov01_02204834: ; 0x02204834
	ldr r1, [r0]
	ldr r0, _0220483C ; =ov01_022095EC
	ldrb r0, [r0, r1]
	bx lr
	.balign 4, 0
_0220483C: .word ov01_022095EC
	thumb_func_end ov01_02204834

	thumb_func_start FieldSys_AnimApricornTree
FieldSys_AnimApricornTree: ; 0x02204840
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x20
	mov r1, #0x28
	add r7, r2, #0
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4]
	str r6, [r4, #8]
	str r7, [r4, #0x24]
	ldr r0, [r5, #0x10]
	ldr r1, _02204870 ; =Task_AnimApricornTree
	add r2, r4, #0
	bl TaskManager_Call
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02204870: .word Task_AnimApricornTree
	thumb_func_end FieldSys_AnimApricornTree

	thumb_func_start Task_AnimApricornTree
Task_AnimApricornTree: ; 0x02204874
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl TaskManager_GetSys
	add r5, r0, #0
	add r0, r6, #0
	bl TaskManager_GetEnv
	add r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0xa
	bhi _0220493C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0220489A: ; jump table
	.short _022048B0 - _0220489A - 2 ; case 0
	.short _022048E0 - _0220489A - 2 ; case 1
	.short _0220490A - _0220489A - 2 ; case 2
	.short _02204978 - _0220489A - 2 ; case 3
	.short _022049BE - _0220489A - 2 ; case 4
	.short _02204A06 - _0220489A - 2 ; case 5
	.short _02204A8E - _0220489A - 2 ; case 6
	.short _02204A1E - _0220489A - 2 ; case 7
	.short _02204A40 - _0220489A - 2 ; case 8
	.short _02204A66 - _0220489A - 2 ; case 9
	.short _02204A7C - _0220489A - 2 ; case 10
_022048B0:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_02055708
	cmp r0, #0
	bne _022048C8
	ldr r0, [r4, #0x24]
	mov r1, #0
	strh r1, [r0]
	mov r0, #0xa
	str r0, [r4]
	b _02204A8E
_022048C8:
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	ldr r1, _02204A94 ; =ov01_02204B78
	add r0, r6, #0
	bl TaskManager_Call
	mov r0, #1
	str r0, [r4]
	b _02204A8E
_022048E0:
	ldr r0, [r4, #8]
	bl MapObject_UnpauseMovement
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0205F328
	add r0, r4, #0
	mov r1, #0
	add r0, #0x23
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x22
	strb r1, [r0]
	mov r0, #2
	str r0, [r4]
	ldr r0, _02204A98 ; =SEQ_SE_GS_KI_YURERU
	bl PlaySE
	b _02204A8E
_0220490A:
	mov r1, #0x22
	ldrsb r0, [r4, r1]
	sub r2, r0, #1
	add r0, r4, #0
	add r0, #0x22
	strb r2, [r0]
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bgt _02204932
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x23
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x22
	strb r1, [r0]
_02204932:
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #2
	bhs _0220493E
_0220493C:
	b _02204A8E
_0220493E:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0205F328
	ldr r0, [r4, #8]
	bl MapObject_PauseMovement
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_02055708
	cmp r0, #0
	beq _0220496C
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_02055760
	ldr r0, [r4, #0x24]
	mov r1, #1
	strh r1, [r0]
	mov r0, #3
	str r0, [r4]
	b _02204A8E
_0220496C:
	ldr r0, [r4, #0x24]
	mov r1, #0
	strh r1, [r0]
	mov r0, #0xa
	str r0, [r4]
	b _02204A8E
_02204978:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetFacingDirection
	mov r1, #0
	str r1, [r4, #0x14]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x18]
	cmp r0, #3
	bhi _022049B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02204996: ; jump table
	.short _0220499E - _02204996 - 2 ; case 0
	.short _022049A6 - _02204996 - 2 ; case 1
	.short _022049B2 - _02204996 - 2 ; case 2
	.short _022049AC - _02204996 - 2 ; case 3
_0220499E:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	b _022049B8
_022049A6:
	ldr r0, _02204A9C ; =0xFFFFF000
	str r0, [r4, #0x1c]
	b _022049B8
_022049AC:
	ldr r0, _02204A9C ; =0xFFFFF000
	str r0, [r4, #0x14]
	b _022049B8
_022049B2:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
_022049B8:
	mov r0, #4
	str r0, [r4]
	b _02204A8E
_022049BE:
	ldr r0, [r5, #0x40]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0205E02C
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_020557A0
	sub r6, r0, #1
	bpl _022049D8
	bl GF_AssertFail
_022049D8:
	ldr r1, _02204AA0 ; =0x0000010E
	ldr r0, [r5, #0x3c]
	ldr r2, [sp, #4]
	ldr r3, [sp]
	add r1, r6, r1
	bl ov01_02204AAC
	str r0, [r4, #4]
	add r1, sp, #8
	bl MapObject_GetPositionVec
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	add r1, sp, #8
	bl MapObject_SetPositionVec
	mov r0, #5
	str r0, [r4]
	b _02204A8E
_02204A06:
	ldr r0, [r4, #4]
	bl ov01_021FA2D4
	cmp r0, #0
	bne _02204A8E
	ldr r0, [r4, #8]
	ldr r1, _02204AA4 ; =0x00000106
	bl ov01_021FA930
	mov r0, #7
	str r0, [r4]
	b _02204A8E
_02204A1E:
	ldr r0, [r4, #8]
	bl ov01_021FA2D4
	cmp r0, #0
	bne _02204A8E
	mov r0, #8
	strh r0, [r4, #0x20]
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_0205F328
	ldr r0, [r4, #8]
	bl MapObject_UnpauseMovement
	mov r0, #8
	str r0, [r4]
	b _02204A8E
_02204A40:
	mov r1, #0x20
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4, #0x20]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _02204A8E
	ldr r0, [r4, #4]
	lsl r1, r1, #4
	bl MapObject_ClearBits
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, _02204AA8 ; =SEQ_SE_GS_FW255E
	bl PlaySE
	mov r0, #9
	str r0, [r4]
	b _02204A8E
_02204A66:
	bl ov01_02204B24
	cmp r0, #0
	beq _02204A8E
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0205F328
	mov r0, #0xa
	str r0, [r4]
	b _02204A8E
_02204A7C:
	ldr r0, [r4, #8]
	bl MapObject_PauseMovement
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02204A8E:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02204A94: .word ov01_02204B78
_02204A98: .word SEQ_SE_GS_KI_YURERU
_02204A9C: .word 0xFFFFF000
_02204AA0: .word 0x0000010E
_02204AA4: .word 0x00000106
_02204AA8: .word SEQ_SE_GS_FW255E
	thumb_func_end Task_AnimApricornTree

	thumb_func_start ov01_02204AAC
ov01_02204AAC: ; 0x02204AAC
	push {r3, r4, lr}
	sub sp, #0xc
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r1, r2, #0
	add r2, r3, #0
	add r3, r4, #0
	bl CreateSpecialFieldObject
	add r4, r0, #0
	bne _02204ACC
	bl GF_AssertFail
_02204ACC:
	add r0, r4, #0
	mov r1, #0xfc
	bl MapObject_SetID
	add r0, r4, #0
	mov r1, #0
	bl MapObject_SetType
	add r0, r4, #0
	mov r1, #0
	bl MapObject_SetFlagID
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl MapObject_SetXRange
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl MapObject_SetYRange
	mov r1, #9
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl MapObject_SetBits
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	bl MapObject_ClearBits
	add r0, r4, #0
	mov r1, #1
	bl sub_0205F89C
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	bl MapObject_SetBits
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_02204AAC

	thumb_func_start ov01_02204B24
ov01_02204B24: ; 0x02204B24
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl MapObject_GetPositionVec
	ldr r1, [r4, #0xc]
	ldr r0, _02204B74 ; =ov01_022095F4
	ldr r2, [sp, #4]
	ldrsb r0, [r0, r1]
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl MapObject_SetPositionVec
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x10
	blt _02204B6E
	ldr r0, [r4, #4]
	bl MapObject_Remove
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02204B6E:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_02204B74: .word ov01_022095F4
	thumb_func_end ov01_02204B24

	thumb_func_start ov01_02204B78
ov01_02204B78: ; 0x02204B78
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl TaskManager_GetSys
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	add r0, r7, #0
	bl TaskManager_GetStatePtr
	add r4, r0, #0
	add r0, r7, #0
	bl TaskManager_GetEnv
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _02204C40
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02204BAC: ; jump table
	.short _02204BB4 - _02204BAC - 2 ; case 0
	.short _02204BC2 - _02204BAC - 2 ; case 1
	.short _02204BF6 - _02204BAC - 2 ; case 2
	.short _02204C30 - _02204BAC - 2 ; case 3
_02204BB4:
	add r0, r6, #0
	bl MapObject_UnpauseMovement
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02204C40
_02204BC2:
	add r0, r6, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _02204C40
	add r0, r6, #0
	bl MapObject_ClearHeldMovementIfActive
	mov r1, #2
	ldr r0, [r5, #0x40]
	lsl r1, r1, #0xc
	bl ov01_PlayerAvatar_OrrTransitionFlags
	ldr r0, [r5, #0x40]
	bl ov01_PlayerAvatar_ApplyTransitionFlags
	add r0, r6, #0
	mov r1, #0
	bl sub_0205F328
	mov r0, #0
	str r0, [r7]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02204C40
_02204BF6:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	cmp r0, #0x18
	ble _02204C40
	add r0, r6, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _02204C40
	add r0, r6, #0
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetState
	bl sub_0205C99C
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	bl ov01_PlayerAvatar_OrrTransitionFlags
	ldr r0, [r5, #0x40]
	bl ov01_PlayerAvatar_ApplyTransitionFlags
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02204C40
_02204C30:
	add r0, r6, #0
	bl MapObject_PauseMovement
	add r0, r7, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02204C40:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02204B78

	thumb_func_start ov01_02204C44
ov01_02204C44: ; 0x02204C44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	add r6, r2, #0
	add r7, r3, #0
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	cmp r4, #0
	beq _02204C60
	mov r0, #1
	b _02204C62
_02204C60:
	mov r0, #0
_02204C62:
	str r0, [r2]
	str r6, [r2, #8]
	str r7, [r2, #0xc]
	ldr r0, [r2, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r2, #0xc]
	strh r1, [r0]
	ldr r0, [r5, #0x10]
	ldr r1, _02204C7C ; =ov01_02204C80
	bl TaskManager_Call
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02204C7C: .word ov01_02204C80
	thumb_func_end ov01_02204C44

	thumb_func_start ov01_02204C80
ov01_02204C80: ; 0x02204C80
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl TaskManager_GetSys
	add r6, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnv
	add r4, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	bl ov02_022470A0
	cmp r0, #0
	beq _02204CC0
	ldr r0, [r4, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	strh r1, [r0]
	add r0, r4, #0
	bl FreeToHeap
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02050B90
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02204CC0:
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_02204CF8
	cmp r0, #0
	beq _02204CDC
	ldr r1, _02204CF4 ; =ov01_02204DA0
	add r0, r5, #0
	add r2, r4, #0
	bl TaskManager_Jump
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02204CDC:
	ldr r0, [r4, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	strh r1, [r0]
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02204CF4: .word ov01_02204DA0
	thumb_func_end ov01_02204C80

	thumb_func_start ov01_02204CF8
ov01_02204CF8: ; 0x02204CF8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r2, [r6, #0x20]
	add r5, r1, #0
	ldr r2, [r2]
	add r0, sp, #0
	mov r1, #0xff
	bl ReadWholeNarcMemberByIdPair
	add r0, sp, #0
	ldrh r4, [r0]
	cmp r4, #0
	bne _02204D1A
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02204D1A:
	ldrh r0, [r0, #2]
	cmp r0, #3
	blo _02204D2A
	bl GF_AssertFail
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02204D2A:
	ldr r0, [r6, #0xc]
	bl SavArray_PlayerParty_get
	mov r1, #0
	bl GetPartyMonByIndex
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	bne _02204D50
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	b _02204D52
_02204D50:
	mov r0, #0x7b
_02204D52:
	str r0, [r5, #4]
	cmp r0, #0x15
	beq _02204D62
	cmp r0, #0x2a
	beq _02204D66
	cmp r0, #0x33
	beq _02204D6A
	b _02204D6C
_02204D62:
	add r4, r4, #5
	b _02204D6C
_02204D66:
	add r4, r4, #5
	b _02204D6C
_02204D6A:
	add r4, r4, #5
_02204D6C:
	ldr r0, [r5]
	cmp r0, #0
	beq _02204D74
	add r4, r4, #5
_02204D74:
	cmp r4, #0x64
	ble _02204D7A
	mov r4, #0x64
_02204D7A:
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r4
	bge _02204D98
	add r0, sp, #0
	ldrh r1, [r0]
	add sp, #4
	strh r1, [r5, #0x10]
	ldrh r0, [r0, #2]
	strh r0, [r5, #0x12]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02204D98:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_02204CF8

	thumb_func_start ov01_02204DA0
ov01_02204DA0: ; 0x02204DA0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl TaskManager_GetStatePtr
	add r4, r0, #0
	add r0, r6, #0
	bl TaskManager_GetEnv
	add r5, r0, #0
	add r0, r6, #0
	bl TaskManager_GetSys
	ldr r1, [r4]
	cmp r1, #0
	beq _02204DC8
	cmp r1, #1
	beq _02204DEC
	cmp r1, #2
	beq _02204E04
	b _02204E7A
_02204DC8:
	ldr r1, [r5]
	cmp r1, #0
	beq _02204DD4
	bl FollowingPokemon_GetMapObject
	b _02204DDA
_02204DD4:
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetMapObject
_02204DDA:
	mov r1, #0
	mov r2, #1
	bl ov01_02200540
	str r0, [r5, #0x14]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02204E7A
_02204DEC:
	ldr r0, [r5, #0x14]
	bl ov01_022003F4
	cmp r0, #0
	beq _02204E7A
	ldr r0, [r5, #0x14]
	bl sub_02068B48
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02204E7A
_02204E04:
	bl ov01_02204E8C
	add r4, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0x20
	beq _02204E14
	cmp r0, #0x69
	bne _02204E1E
_02204E14:
	cmp r4, #7
	bhs _02204E1E
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02204E1E:
	cmp r4, #8
	blo _02204E26
	bl GF_AssertFail
_02204E26:
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq _02204E36
	cmp r0, #1
	beq _02204E3E
	cmp r0, #2
	beq _02204E46
	b _02204E4E
_02204E36:
	ldr r0, _02204E80 ; =ov01_02209614
	lsl r1, r4, #1
	ldrh r2, [r0, r1]
	b _02204E66
_02204E3E:
	ldr r0, _02204E84 ; =ov01_02209604
	lsl r1, r4, #1
	ldrh r2, [r0, r1]
	b _02204E66
_02204E46:
	ldr r0, _02204E88 ; =ov01_02209624
	lsl r1, r4, #1
	ldrh r2, [r0, r1]
	b _02204E66
_02204E4E:
	bl GF_AssertFail
	ldr r0, [r5, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	strh r1, [r0]
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #1
	pop {r4, r5, r6, pc}
_02204E66:
	ldr r0, [r5, #8]
	mov r1, #1
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	strh r2, [r0]
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #1
	pop {r4, r5, r6, pc}
_02204E7A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02204E80: .word ov01_02209614
_02204E84: .word ov01_02209604
_02204E88: .word ov01_02209624
	thumb_func_end ov01_02204DA0

	thumb_func_start ov01_02204E8C
ov01_02204E8C: ; 0x02204E8C
	push {r3, lr}
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x19
	bhs _02204EA4
	mov r0, #0
	pop {r3, pc}
_02204EA4:
	cmp r0, #0x2d
	bhs _02204EAC
	mov r0, #1
	pop {r3, pc}
_02204EAC:
	cmp r0, #0x37
	bhs _02204EB4
	mov r0, #2
	pop {r3, pc}
_02204EB4:
	cmp r0, #0x41
	bhs _02204EBC
	mov r0, #3
	pop {r3, pc}
_02204EBC:
	cmp r0, #0x4b
	bhs _02204EC4
	mov r0, #4
	pop {r3, pc}
_02204EC4:
	cmp r0, #0x55
	bhs _02204ECC
	mov r0, #5
	pop {r3, pc}
_02204ECC:
	cmp r0, #0x5f
	bhs _02204ED4
	mov r0, #6
	pop {r3, pc}
_02204ED4:
	mov r0, #7
	pop {r3, pc}
	thumb_func_end ov01_02204E8C

	thumb_func_start ov01_02204ED8
ov01_02204ED8: ; 0x02204ED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	str r4, [r2]
	mov r0, #0
	strh r0, [r4]
	ldr r0, [r5, #0x10]
	ldr r1, _02204EF8 ; =ov01_02204EFC
	bl TaskManager_Call
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02204EF8: .word ov01_02204EFC
	thumb_func_end ov01_02204ED8

	thumb_func_start ov01_02204EFC
ov01_02204EFC: ; 0x02204EFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	bl TaskManager_GetSys
	add r5, r0, #0
	add r0, r7, #0
	bl TaskManager_GetEnv
	ldr r1, [r5, #0x20]
	add r6, r0, #0
	ldr r1, [r1]
	mov r0, #0xfe
	mov r2, #0xb
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _02204F2A
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02204FCE
_02204F2A:
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov01_022050F8
	ldr r0, [r5, #0xc]
	bl Sav2_PlayerData_GetProfileAddr
	bl PlayerProfile_GetTrainerID
	add r2, r0, #0
	ldr r0, [sp, #8]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x4c
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [sp, #0xc]
	bl ov01_02204FE0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02204F6E
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FreeToHeap
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02204F6E:
	cmp r0, #0
	bne _02204F76
	add r2, r4, #4
	b _02204FA0
_02204F76:
	cmp r0, #1
	bne _02204F80
	add r2, r4, #0
	add r2, #0x1c
	b _02204FA0
_02204F80:
	cmp r0, #2
	bne _02204F8A
	add r2, r4, #0
	add r2, #0x34
	b _02204FA0
_02204F8A:
	bl GF_AssertFail
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FreeToHeap
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02204FA0:
	add r0, r5, #0
	add r1, sp, #0x10
	bl ov02_02247374
	cmp r0, #0
	beq _02204FCE
	ldr r0, [r6]
	mov r1, #1
	strh r1, [r0]
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FreeToHeap
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02050B90
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02204FCE:
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FreeToHeap
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_02204EFC

	thumb_func_start ov01_02204FE0
ov01_02204FE0: ; 0x02204FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	ldr r1, [sp]
	mov r5, #6
	add r6, r1, #0
	mul r6, r5
	mul r5, r0
	lsl r1, r6, #0x10
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r2, [sp, #4]
	add r4, r3, #0
	mov ip, r0
	lsr r1, r1, #0x10
	mov r0, #0
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	cmp r1, #0
	bls _02205040
	mov r7, #2
_0220500C:
	lsl r5, r0, #2
	add r6, r2, r5
	ldrsh r5, [r2, r5]
	cmp r4, r5
	bne _02205036
	ldrsh r5, [r6, r7]
	cmp r3, r5
	bne _02205036
	mov r1, #6
	bl _s32_div_f
	ldr r1, [sp]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	ldr r2, [sp, #4]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205074
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02205036:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	blo _0220500C
_02205040:
	mov r0, ip
	add r5, r1, r0
	cmp r1, r5
	bge _0220506A
	mov r6, #2
_0220504A:
	lsl r7, r1, #2
	add r0, r2, r7
	ldrsh r7, [r2, r7]
	cmp r4, r7
	bne _02205060
	ldrsh r0, [r0, r6]
	cmp r3, r0
	bne _02205060
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02205060:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, r5
	blt _0220504A
_0220506A:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02204FE0

	thumb_func_start ov01_02205074
ov01_02205074: ; 0x02205074
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r7, #0
	add r0, r2, #0
	mov r1, #0xa
	mvn r7, r7
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	cmp r5, #5
	blo _022050A6
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	lsl r0, r4, #2
	add r3, r4, r0
	lsl r0, r1, #0x18
	ldr r2, _022050E4 ; =ov01_0220969A
	lsr r1, r0, #0x18
	add r0, r2, r3
	ldrsb r7, [r1, r0]
	b _022050E0
_022050A6:
	cmp r5, #4
	bne _022050B4
	ldr r0, _022050E8 ; =ov01_02209672
	lsl r1, r4, #2
	add r0, r0, r1
	ldrsb r7, [r6, r0]
	b _022050E0
_022050B4:
	cmp r5, #3
	bne _022050C4
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _022050EC ; =ov01_02209654
	add r0, r0, r1
	ldrsb r7, [r6, r0]
	b _022050E0
_022050C4:
	cmp r5, #2
	bne _022050D2
	ldr r0, _022050F0 ; =ov01_02209640
	lsl r1, r4, #1
	add r0, r0, r1
	ldrsb r7, [r6, r0]
	b _022050E0
_022050D2:
	cmp r5, #1
	bne _022050DC
	ldr r0, _022050F4 ; =ov01_02209634
	ldrsb r7, [r0, r4]
	b _022050E0
_022050DC:
	bl GF_AssertFail
_022050E0:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022050E4: .word ov01_0220969A
_022050E8: .word ov01_02209672
_022050EC: .word ov01_02209654
_022050F0: .word ov01_02209640
_022050F4: .word ov01_02209634
	thumb_func_end ov01_02205074

	thumb_func_start ov01_022050F8
ov01_022050F8: ; 0x022050F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	add r6, r1, #0
	str r2, [sp]
	add r1, sp, #8
	add r2, sp, #4
	bl sub_0205E02C
	add r0, r4, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	beq _02205156
	add r0, r4, #0
	bl FollowingPokemon_GetMapObject
	add r7, r0, #0
	bl MapObject_GetCurrentX
	add r5, r0, #0
	add r0, r7, #0
	bl MapObject_GetCurrentY
	add r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, r5
	bne _02205156
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _02205156
	add r0, r7, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	bl GetDeltaXByFacingDirection
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r7, #0
	bl GetDeltaYByFacingDirection
	add r0, r4, r0
	str r0, [sp, #4]
_02205156:
	ldr r0, [sp, #8]
	str r0, [r6]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	str r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_022050F8

	thumb_func_start ScrCmd_795
ScrCmd_795: ; 0x02205164
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x28
	bl FieldSysGetAttrAddr
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov01_021EED60
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_795

	thumb_func_start ScrCmd_796
ScrCmd_796: ; 0x022051B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x28
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	bl ov01_021EEE30
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_796

	thumb_func_start ScrCmd_797
ScrCmd_797: ; 0x022051CC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x28
	bl FieldSysGetAttrAddr
	add r1, r0, #0
	add r4, #0x80
	ldr r0, [r4]
	ldr r1, [r1]
	bl ov01_021EEE44
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_797

	thumb_func_start ov01_022051EC
ov01_022051EC: ; 0x022051EC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0xc4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_02205218
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022051EC

	thumb_func_start ov01_02205208
ov01_02205208: ; 0x02205208
	push {r4, lr}
	add r4, r0, #0
	bl ov01_022052A4
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_02205208

	thumb_func_start ov01_02205218
ov01_02205218: ; 0x02205218
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x20
	bl GF_ExpHeap_FndInitAllocator
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0x67
	mov r2, #0x84
	mov r3, #4
	bl ov01_021FBCD8
	mov r0, #4
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x24
	add r1, #0x14
	mov r2, #0x67
	mov r3, #0xa8
	bl ov01_021FBE44
	mov r0, #4
	str r0, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x38
	add r1, #0x14
	mov r2, #0x67
	mov r3, #0xa6
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x14
	bl ov01_021FBF2C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x24
	bl ov01_021FBF50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x38
	bl ov01_021FBF50
	add r0, r4, #0
	add r0, #0x24
	mov r1, #2
	mov r2, #0
	bl ov01_022053C4
	add r4, #0x4c
	add r0, r4, #0
	mov r1, #0
	bl ov01_021FC004
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_02205218

	thumb_func_start ov01_022052A4
ov01_022052A4: ; 0x022052A4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #4
	add r0, #0x38
	bl ov01_021FBE80
	add r0, r4, #0
	add r0, #0x24
	add r1, r4, #4
	bl ov01_021FBE80
	add r4, #0x14
	add r0, r4, #0
	bl ov01_021FBDA8
	pop {r4, pc}
	thumb_func_end ov01_022052A4

	thumb_func_start ov01_022052C4
ov01_022052C4: ; 0x022052C4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x16
	str r5, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _022052F0 ; =ov01_022096CC
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022052F0: .word ov01_022096CC
	thumb_func_end ov01_022052C4

	thumb_func_start ov01_022052F4
ov01_022052F4: ; 0x022052F4
	push {r3, lr}
	bl sub_02068D74
	ldr r0, [r0]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022052F4

	thumb_func_start ov01_02205300
ov01_02205300: ; 0x02205300
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	ldr r1, [r0, #4]
	mov r2, #0
	str r1, [r4, #4]
	str r2, [r4]
	ldr r4, [r0, #4]
	mov r1, #2
	add r0, r4, #0
	add r0, #0x24
	bl ov01_022053C4
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #1
	bl ov01_021FC004
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	add r4, #0x4c
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov01_021FC00C
	mov r0, #SEQ_SE_GS_TUREARUKI>>4
	lsl r0, r0, #4
	bl PlaySE
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02205300

	thumb_func_start ov01_02205350
ov01_02205350: ; 0x02205350
	bx lr
	.balign 4, 0
	thumb_func_end ov01_02205350

	thumb_func_start ov01_02205354
ov01_02205354: ; 0x02205354
	ldr r0, [r1, #4]
	ldr r3, _02205360 ; =ov01_021FC004
	add r0, #0x4c
	mov r1, #0
	bx r3
	nop
_02205360: .word ov01_021FC004
	thumb_func_end ov01_02205354

	thumb_func_start ov01_02205364
ov01_02205364: ; 0x02205364
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #4]
	mov r1, #2
	add r0, r4, #0
	add r0, #0x24
	bl ov01_02205388
	cmp r0, #0
	beq _0220537C
	mov r0, #1
	str r0, [r5]
_0220537C:
	add r4, #0x4c
	add r0, r4, #0
	bl ov01_021FBF68
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02205364

	thumb_func_start ov01_02205388
ov01_02205388: ; 0x02205388
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r1, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r6, #0
	bls _022053B8
_02205396:
	mov r0, #0x14
	mul r0, r4
	mov r1, #1
	add r0, r7, r0
	lsl r1, r1, #0xc
	bl ov01_021FBEE4
	cmp r0, #0
	beq _022053AE
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_022053AE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _02205396
_022053B8:
	cmp r5, r6
	bne _022053C0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022053C0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02205388

	thumb_func_start ov01_022053C4
ov01_022053C4: ; 0x022053C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	mov r4, #0
	cmp r5, #0
	bls _022053E8
_022053D2:
	mov r0, #0x14
	mul r0, r4
	add r0, r6, r0
	add r1, r7, #0
	bl ov01_021FBF20
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r5
	blo _022053D2
_022053E8:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_022053C4

	thumb_func_start ScrCmd_808
ScrCmd_808: ; 0x022053EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	ldr r6, _02205420 ; =FS_OVERLAY_ID(OVY_25)
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl HandleLoadOverlay
	add r5, #0x80
	ldr r0, [r5]
	add r1, r4, #0
	bl ov25_022598C0
	add r0, r6, #0
	bl UnloadOverlayByID
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02205420: .word FS_OVERLAY_ID(OVY_25)
	thumb_func_end ScrCmd_808

	thumb_func_start ov01_02205424
ov01_02205424: ; 0x02205424
	mov r1, #1
	add r0, #0xf9
	strb r1, [r0]
	bx lr
	thumb_func_end ov01_02205424

	thumb_func_start ov01_0220542C
ov01_0220542C: ; 0x0220542C
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r6, _022054D0 ; =ov01_02209720
	add r5, sp, #0x30
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r6, _022054D4 ; =ov01_02209730
	add r5, sp, #0x20
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r6, _022054D8 ; =ov01_02209740
	add r5, sp, #0x10
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r6, _022054DC ; =ov01_02209710
	add r5, sp, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	mov r1, #0
_02205468:
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	cmp r3, r0
	bne _0220547A
	add r0, sp, #0x20
	lsl r1, r4, #2
	add sp, #0x40
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0220547A:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _02205468
	mov r2, #0
	add r1, sp, #0x20
_02205488:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	cmp r3, r0
	bne _0220549A
	add r0, sp, #0x10
	lsl r1, r4, #2
	add sp, #0x40
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0220549A:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _02205488
	mov r2, #0
	add r1, sp, #0x10
_022054A8:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	cmp r3, r0
	bne _022054BA
	add r0, sp, #0
	lsl r1, r4, #2
	add sp, #0x40
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_022054BA:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _022054A8
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x40
	pop {r4, r5, r6, pc}
	nop
_022054D0: .word ov01_02209720
_022054D4: .word ov01_02209730
_022054D8: .word ov01_02209740
_022054DC: .word ov01_02209710
	thumb_func_end ov01_0220542C

	thumb_func_start ov01_022054E0
ov01_022054E0: ; 0x022054E0
	push {r3, r4, r5, lr}
	sub sp, #0xc0
	ldr r5, _02205538 ; =ov01_02209750
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0x18
_022054EC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022054EC
	add r0, r4, #0
	bl ov01_02205584
	cmp r0, #0
	beq _02205504
	add sp, #0xc0
	mov r0, #0
	pop {r3, r4, r5, pc}
_02205504:
	add r0, r4, #0
	bl sub_020659A8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	bne _02205516
	add sp, #0xc0
	mov r0, #0
	pop {r3, r4, r5, pc}
_02205516:
	add r0, r4, #0
	bl sub_0206599C
	add r4, r0, #0
	cmp r4, #0x10
	blt _02205526
	bl GF_AssertFail
_02205526:
	sub r0, r5, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x12
	add r0, sp, #0
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	add sp, #0xc0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02205538: .word ov01_02209750
	thumb_func_end ov01_022054E0

	thumb_func_start ov01_0220553C
ov01_0220553C: ; 0x0220553C
	push {r4, lr}
	add r4, r0, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	beq _02205554
	cmp r0, #0xfa
	beq _02205554
	cmp r0, #0xfb
	beq _02205554
	mov r0, #0
	pop {r4, pc}
_02205554:
	add r0, r4, #0
	mov r1, #2
	bl MapObject_GetParam
	mov r1, #1
	and r0, r1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_0220553C

	thumb_func_start ov01_02205564
ov01_02205564: ; 0x02205564
	push {r3, lr}
	bl MapObject_GetGfxID
	ldr r1, _02205580 ; =0x0000019F
	cmp r0, r1
	blt _0220557A
	add r1, r1, #5
	cmp r0, r1
	bgt _0220557A
	mov r0, #1
	pop {r3, pc}
_0220557A:
	mov r0, #0
	pop {r3, pc}
	nop
_02205580: .word 0x0000019F
	thumb_func_end ov01_02205564

	thumb_func_start ov01_02205584
ov01_02205584: ; 0x02205584
	push {r3, r4, r5, lr}
	mov r1, #1
	add r4, r0, #0
	bl MapObject_GetParam
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	beq _022055A0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022055A0:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	asr r1, r0, #4
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_02205584

	thumb_func_start ov01_022055B0
ov01_022055B0: ; 0x022055B0
	push {r3, r4, r5, lr}
	mov r1, #1
	add r4, r0, #0
	bl MapObject_GetParam
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	beq _022055CC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022055CC:
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022055B0

	thumb_func_start ov01_022055DC
ov01_022055DC: ; 0x022055DC
	push {r3, r4, r5, lr}
	mov r1, #1
	add r4, r0, #0
	bl MapObject_GetParam
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	beq _022055F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022055F8:
	asr r1, r5, #8
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_022055DC

	thumb_func_start ov01_02205604
ov01_02205604: ; 0x02205604
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r7, #0
	bl MapObject_GetCurrentX
	str r0, [r4]
	add r0, r7, #0
	bl MapObject_GetCurrentY
	str r0, [r5]
	cmp r6, #3
	bhi _0220565C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02205634: ; jump table
	.short _0220563C - _02205634 - 2 ; case 0
	.short _02205644 - _02205634 - 2 ; case 1
	.short _0220564C - _02205634 - 2 ; case 2
	.short _02205654 - _02205634 - 2 ; case 3
_0220563C:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02205644:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0220564C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02205654:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0220565C:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02205604

	thumb_func_start ov01_02205664
ov01_02205664: ; 0x02205664
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r7, #0
	bl MapObject_GetPrevX
	str r0, [r4]
	add r0, r7, #0
	bl MapObject_GetPrevY
	str r0, [r5]
	cmp r6, #3
	bhi _022056BC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02205694: ; jump table
	.short _0220569C - _02205694 - 2 ; case 0
	.short _022056A4 - _02205694 - 2 ; case 1
	.short _022056AC - _02205694 - 2 ; case 2
	.short _022056B4 - _02205694 - 2 ; case 3
_0220569C:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022056A4:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022056AC:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022056B4:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022056BC:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02205664

	thumb_func_start ov01_022056C4
ov01_022056C4: ; 0x022056C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl MapObject_GetFieldSysPtr
	add r7, r0, #0
	add r0, r6, #0
	bl MapObject_GetCurrentX
	add r4, r0, #0
	add r0, r6, #0
	bl MapObject_GetCurrentY
	add r2, r0, #0
	cmp r5, #5
	bhi _02205716
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022056F0: ; jump table
	.short _022056FC - _022056F0 - 2 ; case 0
	.short _02205700 - _022056F0 - 2 ; case 1
	.short _02205708 - _022056F0 - 2 ; case 2
	.short _02205704 - _022056F0 - 2 ; case 3
	.short _0220570C - _022056F0 - 2 ; case 4
	.short _02205712 - _022056F0 - 2 ; case 5
_022056FC:
	sub r2, r2, #1
	b _02205716
_02205700:
	add r2, r2, #1
	b _02205716
_02205704:
	sub r4, r4, #1
	b _02205716
_02205708:
	add r4, r4, #1
	b _02205716
_0220570C:
	add r4, r4, #1
	add r2, r2, #1
	b _02205716
_02205712:
	sub r4, r4, #1
	add r2, r2, #1
_02205716:
	add r0, r7, #0
	add r1, r4, #0
	bl GetMetatileBehaviorAt
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_022056C4

	thumb_func_start ov01_02205720
ov01_02205720: ; 0x02205720
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, sp, #0
	add r4, r2, #0
	add r6, r3, #0
	bl MapObject_GetPositionVec
	cmp r4, #3
	bhi _02205776
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02205740: ; jump table
	.short _02205748 - _02205740 - 2 ; case 0
	.short _02205754 - _02205740 - 2 ; case 1
	.short _0220576C - _02205740 - 2 ; case 2
	.short _02205760 - _02205740 - 2 ; case 3
_02205748:
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #8]
	b _02205776
_02205754:
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #8]
	b _02205776
_02205760:
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp]
	b _02205776
_0220576C:
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp]
_02205776:
	add r0, r5, #0
	add r1, sp, #0
	add r2, r6, #0
	bl sub_0205FBC0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_02205720

	thumb_func_start ov01_02205784
ov01_02205784: ; 0x02205784
	ldr r3, _0220578C ; =ov01_0220329C
	mov r1, #0
	bx r3
	nop
_0220578C: .word ov01_0220329C
	thumb_func_end ov01_02205784

	thumb_func_start ov01_02205790
ov01_02205790: ; 0x02205790
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	beq _022057BE
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	add r1, sp, #0
	bl MapObject_GetPositionVec
	add r0, r6, #0
	add r1, sp, #0
	add r2, r4, #0
	bl sub_0205FBC0
_022057BE:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_02205790

	thumb_func_start ov01_022057C4
ov01_022057C4: ; 0x022057C4
	push {r3, lr}
	bl FollowingPokemon_GetMapObject
	bl sub_0205F684
	pop {r3, pc}
	thumb_func_end ov01_022057C4

	thumb_func_start ov01_022057D0
ov01_022057D0: ; 0x022057D0
	push {r3, lr}
	bl FollowingPokemon_GetMapObject
	bl sub_020659B8
	pop {r3, pc}
	thumb_func_end ov01_022057D0

	thumb_func_start ov01_022057DC
ov01_022057DC: ; 0x022057DC
	push {r3, lr}
	bl sub_0205F1A0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0x16
	bl ov01_021FC5A4
	ldr r2, [r0]
	add r1, r0, #4
	lsl r0, r2, #1
	add r0, r1, r0
	add r3, r0, r2
	mov r1, #0
	cmp r2, #0
	ble _02205806
	mov r0, #1
_022057FE:
	strb r0, [r3, r1]
	add r1, r1, #1
	cmp r1, r2
	blt _022057FE
_02205806:
	pop {r3, pc}
	thumb_func_end ov01_022057DC

	thumb_func_start ov01_02205808
ov01_02205808: ; 0x02205808
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0205F35C
	add r7, r0, #0
	add r0, r5, #0
	bl MapObject_GetGfxID
	add r1, r0, #0
	add r0, r7, #0
	add r2, sp, #0
	bl ov01_021F9744
	add r0, r5, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	beq _0220583C
	cmp r0, #0xfa
	beq _0220583C
	cmp r0, #0xfb
	bne _0220586A
_0220583C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, sp, #0
	bl ov01_02205870
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02023EC8
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_0220586A:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_02205808

	thumb_func_start ov01_02205870
ov01_02205870: ; 0x02205870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r3, #0
	bl sub_0205F35C
	bl sub_0205F1A0
	cmp r5, #0
	beq _02205888
	mov r1, #0x16
	b _0220588A
_02205888:
	mov r1, #0x15
_0220588A:
	add r0, #0xfc
	ldr r0, [r0]
	bl ov01_021FC5A4
	add r4, #0xc
	add r1, r4, #0
	bl sub_02026E18
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_02205870

	thumb_func_start ov01_0220589C
ov01_0220589C: ; 0x0220589C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x28
	add r5, r2, #0
	bl AllocFromHeapAtEnd
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r6, #0
	mov r1, #2
	bl MapObject_GetParam
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	bl ov01_02206088
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0205F35C
	bl FldObjSys_GetMModelNarc
	add r1, r7, #0
	mov r2, #0xb
	bl NARC_AllocAndReadWholeMember
	str r0, [r4]
	bl NNS_G3dGetTex
	add r6, r0, #0
	mov r1, #0
	bl sub_02020888
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_02020838
	add r1, r4, #0
	str r0, [r4, #4]
	add r0, r7, #0
	add r1, #8
	mov r2, #0x20
	bl MIi_CpuCopy16
	add r0, r4, #0
	add r0, #8
	mov r1, #0x10
	bl sub_02003F04
	mov r0, #0
	mov r1, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r0, #8
	add r2, #0xf0
	mov r3, #0xb4
	bl TintPalette_CustomTone
	add r0, r5, #0
	bl sub_02023FB0
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r2, r4, #0
	mov r0, #1
	lsr r1, r1, #0xd
	add r2, #8
	mov r3, #0x20
	bl GF_CreateNewVramTransferTask
	add r0, r5, #0
	bl sub_02023FA0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02023FA0
	add r1, r0, #0
	ldr r3, _02205964 ; =0x7FFF0000
	lsl r1, r1, #0x10
	and r3, r6
	lsr r3, r3, #0x10
	ldr r2, [r4, #4]
	mov r0, #0
	lsr r1, r1, #0xd
	lsl r3, r3, #4
	bl GF_CreateNewVramTransferTask
	ldr r0, _02205968 ; =ov01_0220596C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02205964: .word 0x7FFF0000
_02205968: .word ov01_0220596C
	thumb_func_end ov01_0220589C

	thumb_func_start ov01_0220596C
ov01_0220596C: ; 0x0220596C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GF_GetNumPendingVramTransferTasks
	cmp r0, #0
	bne _0220598C
	add r0, r5, #0
	bl sub_0200E390
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
_0220598C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_0220596C

	thumb_func_start ov01_02205990
ov01_02205990: ; 0x02205990
	str r0, [r3, #4]
	str r1, [r3, #8]
	str r2, [r3, #0xc]
	ldr r0, [r3, #0x1c]
	cmp r0, #3
	bne _022059A2
	mov r0, #2
	str r0, [r3, #0x1c]
	bx lr
_022059A2:
	cmp r0, #0
	bne _022059AA
	mov r0, #1
	str r0, [r3, #0x1c]
_022059AA:
	bx lr
	thumb_func_end ov01_02205990

	thumb_func_start ov01_022059AC
ov01_022059AC: ; 0x022059AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0xf9
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205A2A
	add r0, r5, #0
	add r0, #0xfa
	ldrb r0, [r0]
	cmp r0, #0
	bne _02205A02
	ldr r0, [r5, #0x40]
	bl GetPlayerXCoord
	add r4, r0, #0
	ldr r0, [r5, #0x40]
	bl GetPlayerYCoord
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetFacingDirection
	add r3, r0, #0
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	ldr r0, [r0]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	bl sub_020699F8
	add r1, r5, #0
	add r1, #0xfa
	add r0, r5, #0
	add r0, #0xe4
	ldrb r1, [r1]
	ldr r0, [r0]
	cmp r1, #1
	bne _02205A2A
	bl ov01_021F9048
	b _02205A2A
_02205A02:
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl FollowPokeObj_GetSpecies
	ldr r1, [r5, #0x20]
	ldr r1, [r1]
	bl GetFollowPokePermissionBySpeciesAndMap
	cmp r0, #0
	bne _02205A2A
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl MapObject_Remove
	add r0, r5, #0
	mov r1, #0
	add r0, #0xfa
	strb r1, [r0]
_02205A2A:
	mov r0, #0
	add r5, #0xf9
	strb r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_022059AC

	thumb_func_start ov01_02205A34
ov01_02205A34: ; 0x02205A34
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r1, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	beq _02205A5C
	add r0, r4, #0
	bl FollowingPokemon_GetMapObject
	add r4, r0, #0
	add r1, sp, #0
	bl MapObject_GetPositionVec
	add r0, r4, #0
	add r1, sp, #0
	str r5, [sp, #4]
	bl MapObject_SetPositionVec
_02205A5C:
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_02205A34

	thumb_func_start ov01_02205A60
ov01_02205A60: ; 0x02205A60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl TaskManager_GetSys
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetStatePtr
	add r4, r0, #0
	add r0, r5, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	bne _02205A80
	mov r0, #1
	pop {r3, r4, r5, pc}
_02205A80:
	ldr r0, [r4]
	add r5, #0xe4
	ldr r5, [r5]
	cmp r0, #0
	beq _02205A94
	cmp r0, #1
	beq _02205AB0
	cmp r0, #2
	beq _02205ACE
	b _02205AE6
_02205A94:
	add r0, r5, #0
	bl sub_0205F714
	cmp r0, #0
	beq _02205AAA
	add r0, r5, #0
	bl MapObject_UnpauseMovement
	mov r0, #1
	str r0, [r4]
	b _02205AE6
_02205AAA:
	mov r0, #2
	str r0, [r4]
	b _02205AE6
_02205AB0:
	add r0, r5, #0
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _02205AE6
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #0
	beq _02205AE6
	add r0, r5, #0
	bl MapObject_PauseMovement
	mov r0, #1
	pop {r3, r4, r5, pc}
_02205ACE:
	add r0, r5, #0
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _02205AE6
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #0
	beq _02205AE6
	mov r0, #1
	pop {r3, r4, r5, pc}
_02205AE6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02205A60

	thumb_func_start ov01_02205AEC
ov01_02205AEC: ; 0x02205AEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0x48
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	ldr r0, [r4, #0x10]
	ldr r1, _02205B10 ; =ov01_02205B14
	bl TaskManager_Call
	pop {r4, pc}
	nop
_02205B10: .word ov01_02205B14
	thumb_func_end ov01_02205AEC

	thumb_func_start ov01_02205B14
ov01_02205B14: ; 0x02205B14
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl TaskManager_GetSys
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnv
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r1, #7
	bhi _02205BD2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02205B3A: ; jump table
	.short _02205B4A - _02205B3A - 2 ; case 0
	.short _02205B86 - _02205B3A - 2 ; case 1
	.short _02205BA0 - _02205B3A - 2 ; case 2
	.short _02205BDC - _02205B3A - 2 ; case 3
	.short _02205BFC - _02205B3A - 2 ; case 4
	.short _02205C7E - _02205B3A - 2 ; case 5
	.short _02205C92 - _02205B3A - 2 ; case 6
	.short _02205CD0 - _02205B3A - 2 ; case 7
_02205B4A:
	add r0, r5, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	bne _02205B60
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0x30
	mov r0, #1
	pop {r4, r5, r6, pc}
_02205B60:
	add r0, r5, #0
	bl ov01_022057C4
	cmp r0, #0
	beq _02205B76
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0x30
	mov r0, #1
	pop {r4, r5, r6, pc}
_02205B76:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_UnpauseMovement
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02205B86:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _02205BD2
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_02205CF0
	strb r0, [r4]
	b _02205CDA
_02205BA0:
	ldr r0, _02205CE0 ; =ov01_022096E0
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	add r5, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _02205BD2
	ldrb r1, [r4, #3]
	add r0, r1, #1
	lsl r2, r1, #2
	add r1, sp, #0x10
	strb r0, [r4, #3]
	ldr r1, [r1, r2]
	add r0, r5, #0
	bl MapObject_SetHeldMovement
	ldrb r0, [r4, #3]
	cmp r0, #2
	bhs _02205BD4
_02205BD2:
	b _02205CDA
_02205BD4:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02205CDA
_02205BDC:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	add r5, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _02205CDA
	add r0, r5, #0
	mov r1, #0
	bl MapObject_SetHeldMovement
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02205CDA
_02205BFC:
	ldr r3, _02205CE4 ; =ov01_022096F0
	add r2, sp, #8
	mov r1, #8
_02205C02:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02205C02
	ldr r3, _02205CE8 ; =ov01_022096E0
	add r2, sp, #0
	mov r1, #8
_02205C14:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02205C14
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	add r6, r0, #0
	mov r5, #2
	ldr r0, [r4, #0x44]
	lsl r5, r5, #0xc
	cmp r0, #0
	bne _02205C38
	mov r0, #0
	mvn r0, r0
	mul r5, r0
_02205C38:
	add r0, r6, #0
	add r1, sp, #0x24
	bl MapObject_GetPositionVec
	ldrb r2, [r4, #1]
	add r1, sp, #8
	ldr r0, [sp, #0x2c]
	ldrsb r1, [r1, r2]
	ldr r2, [sp, #0x28]
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	add r0, r0, r5
	str r0, [sp, #0x24]
	ldrb r1, [r4, #1]
	add r0, sp, #0
	ldrsb r0, [r0, r1]
	add r1, sp, #0x24
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [sp, #0x28]
	add r0, r6, #0
	bl MapObject_SetPositionVec
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #8
	blo _02205CDA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02205CDA
_02205C7E:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	mov r1, #3
	bl ov01_0220329C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02205CDA
_02205C92:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #0x14
	blo _02205CDA
	add r0, r5, #0
	mov r1, #0
	bl ov01_02205790
	ldr r3, _02205CEC ; =ov01_02209704
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x3c]
	bl ov01_021F771C
	add r1, sp, #0x18
	bl sub_02023E78
	add r5, #0xe4
	ldr r0, [r5]
	mov r1, #1
	bl sub_02069E84
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02205CDA
_02205CD0:
	bl FreeToHeap
	add sp, #0x30
	mov r0, #1
	pop {r4, r5, r6, pc}
_02205CDA:
	mov r0, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02205CE0: .word ov01_022096E0
_02205CE4: .word ov01_022096F0
_02205CE8: .word ov01_022096E0
_02205CEC: .word ov01_02209704
	thumb_func_end ov01_02205B14

	thumb_func_start ov01_02205CF0
ov01_02205CF0: ; 0x02205CF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	bl PlayerAvatar_GetMapObject
	bl MapObject_GetCurrentX
	str r0, [sp]
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	bl MapObject_GetCurrentY
	add r7, r0, #0
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_GetCurrentX
	add r6, r0, #0
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_GetCurrentY
	ldr r1, [sp]
	cmp r6, r1
	bne _02205D38
	add r1, r7, #1
	cmp r0, r1
	bne _02205D38
	mov r0, #1
	str r0, [r4, #0x44]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02205D38:
	ldr r1, [sp]
	add r1, r1, #1
	cmp r6, r1
	bne _02205D4C
	cmp r0, r7
	bne _02205D4C
	mov r0, #0
	str r0, [r4, #0x44]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02205D4C:
	ldr r1, [sp]
	add r2, r6, #1
	cmp r2, r1
	bne _02205D60
	cmp r0, r7
	bne _02205D60
	mov r0, #1
	str r0, [r4, #0x44]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02205D60:
	bl GF_AssertFail
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02205CF0

	thumb_func_start ov01_02205D68
ov01_02205D68: ; 0x02205D68
	push {r4, lr}
	add r4, r0, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	bne _02205D78
	mov r0, #0
	pop {r4, pc}
_02205D78:
	add r0, r4, #0
	bl ov01_022057C4
	cmp r0, #0
	beq _02205D94
	add r0, r4, #0
	bl sub_0206A054
	add r0, r4, #0
	mov r1, #0
	bl ov01_02205790
	mov r0, #0
	pop {r4, pc}
_02205D94:
	mov r0, #0xb
	mov r1, #0x44
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	mov r0, #0
	str r0, [r2]
	ldr r0, [r4, #0x10]
	ldr r1, _02205DB0 ; =ov01_02205DB4
	bl TaskManager_Call
	mov r0, #1
	pop {r4, pc}
	nop
_02205DB0: .word ov01_02205DB4
	thumb_func_end ov01_02205D68

	thumb_func_start ov01_02205DB4
ov01_02205DB4: ; 0x02205DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl TaskManager_GetSys
	add r5, r0, #0
	add r0, r4, #0
	bl TaskManager_GetEnv
	add r6, r0, #0
	add r0, r4, #0
	bl TaskManager_GetStatePtr
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _02205ED2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02205DE2: ; jump table
	.short _02205DEC - _02205DE2 - 2 ; case 0
	.short _02205DFC - _02205DE2 - 2 ; case 1
	.short _02205E12 - _02205DE2 - 2 ; case 2
	.short _02205E5A - _02205DE2 - 2 ; case 3
	.short _02205EC6 - _02205DE2 - 2 ; case 4
_02205DEC:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_UnpauseMovement
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_02205DFC:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _02205ED2
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02205ED2
_02205E12:
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	str r0, [sp]
	bl MapObject_GetGfxID
	bl ov01_02206088
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	bl FldObjSys_GetMModelNarc
	add r1, r7, #0
	mov r2, #0xb
	bl NARC_AllocAndReadWholeMember
	add r5, r0, #0
	bl NNS_G3dGetTex
	ldr r1, [r0, #0x38]
	mov r2, #0x40
	add r0, r0, r1
	add r1, r6, #4
	bl MIi_CpuCopy16
	add r0, r5, #0
	bl FreeToHeap
	ldr r0, [sp]
	mov r1, #1
	bl ov01_0220329C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02205ED2
_02205E5A:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	cmp r0, #0x14
	blt _02205ED2
	add r0, r5, #0
	mov r1, #0
	bl ov01_02205790
	ldr r3, _02205ED8 ; =ov01_022096F8
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x3c]
	bl ov01_021F771C
	add r7, r0, #0
	add r1, sp, #8
	bl sub_02023E78
	add r0, r7, #0
	bl sub_02023FB0
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02023FB0
	add r1, r0, #0
	add r2, r6, #4
	lsl r1, r1, #0x10
	ldr r6, _02205EDC ; =0xFFFF0000
	ldr r3, [sp, #4]
	mov r0, #1
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #3
	bl GF_CreateNewVramTransferTask
	add r0, r5, #0
	bl sub_0206A054
	add r0, r5, #0
	bl FollowingPokemon_GetMapObject
	mov r1, #0
	bl sub_02069E28
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02205ED2
_02205EC6:
	add r0, r6, #0
	bl FreeToHeap
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02205ED2:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02205ED8: .word ov01_022096F8
_02205EDC: .word 0xFFFF0000
	thumb_func_end ov01_02205DB4

	thumb_func_start ov01_02205EE0
ov01_02205EE0: ; 0x02205EE0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	mov r0, #0
	str r0, [r2]
	ldr r1, _02205EFC ; =ov01_02205F00
	add r0, r4, #0
	bl TaskManager_Call
	pop {r4, pc}
	.balign 4, 0
_02205EFC: .word ov01_02205F00
	thumb_func_end ov01_02205EE0

	thumb_func_start ov01_02205F00
ov01_02205F00: ; 0x02205F00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl TaskManager_GetSys
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnv
	add r6, r0, #0
	add r0, r5, #0
	bl TaskManager_GetStatePtr
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #6
	bls _02205F22
	b _02206024
_02205F22:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02205F2E: ; jump table
	.short _02205F3C - _02205F2E - 2 ; case 0
	.short _02205F56 - _02205F2E - 2 ; case 1
	.short _02205F7A - _02205F2E - 2 ; case 2
	.short _02205FA4 - _02205F2E - 2 ; case 3
	.short _02205FB6 - _02205F2E - 2 ; case 4
	.short _02205FF2 - _02205F2E - 2 ; case 5
	.short _0220601A - _02205F2E - 2 ; case 6
_02205F3C:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl sub_020659CC
	add r4, #0xe4
	ldr r0, [r4]
	bl sub_0205F484
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02206024
_02205F56:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _02206024
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	add r4, #0xe4
	ldr r1, [r4]
	bl ov01_02206028
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02206024
_02205F7A:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _02206024
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	bl MapObject_GetFacingDirection
	add r4, #0xe4
	add r1, r0, #0
	ldr r0, [r4]
	bl MapObject_SetFacingDirection
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02206024
_02205FA4:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	cmp r0, #0xa
	ble _02206024
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02206024
_02205FB6:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _02206024
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #0
	bl sub_0206A040
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	bl MapObject_GetFacingDirection
	mov r1, #0x34
	bl sub_0206234C
	add r4, #0xe4
	add r1, r0, #0
	ldr r0, [r4]
	bl MapObject_SetHeldMovement
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02206024
_02205FF2:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _02206024
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #2
	bl ov01_0220329C
	add r0, r4, #0
	bl sub_0206A054
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02206024
_0220601A:
	add r0, r6, #0
	bl FreeToHeap
	mov r0, #1
	pop {r4, r5, r6, pc}
_02206024:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_02205F00

	thumb_func_start ov01_02206028
ov01_02206028: ; 0x02206028
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	bl MapObject_GetCurrentX
	add r6, r0, #0
	ldr r0, [sp]
	bl MapObject_GetCurrentY
	add r7, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentX
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetCurrentY
	sub r6, r6, r4
	sub r4, r7, r0
	ldr r0, [sp]
	bl MapObject_GetFacingDirection
	cmp r6, #0
	bge _02206062
	add r0, r5, #0
	mov r1, #0xa
	bl MapObject_SetHeldMovement
	pop {r3, r4, r5, r6, r7, pc}
_02206062:
	ble _0220606E
	add r0, r5, #0
	mov r1, #0xb
	bl MapObject_SetHeldMovement
	pop {r3, r4, r5, r6, r7, pc}
_0220606E:
	cmp r4, #0
	bge _0220607C
	add r0, r5, #0
	mov r1, #8
	bl MapObject_SetHeldMovement
	pop {r3, r4, r5, r6, r7, pc}
_0220607C:
	ble _02206086
	add r0, r5, #0
	mov r1, #9
	bl MapObject_SetHeldMovement
_02206086:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02206028

	thumb_func_start ov01_02206088
ov01_02206088: ; 0x02206088
	push {r3, lr}
	bl GetMoveModelNoBySpriteId
	cmp r0, #0
	bge _02206098
	bl GF_AssertFail
	mov r0, #0
_02206098:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_02206088

	thumb_func_start ov01_0220609C
ov01_0220609C: ; 0x0220609C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	beq _022060B4
	add r5, #0xe4
	ldr r0, [r5]
	add r1, r4, #0
	bl MapObject_SetFacingDirection
_022060B4:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_0220609C

	thumb_func_start ov01_022060B8
ov01_022060B8: ; 0x022060B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl FollowingPokemon_IsActive
	cmp r0, #0
	bne _022060CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022060CC:
	add r0, r6, #0
	bl ov01_022057C4
	cmp r0, #0
	beq _022060DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022060DA:
	cmp r5, #0
	bne _022060E2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022060E2:
	mov r0, #0xb
	mov r1, #0x84
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x84
	bl MI_CpuFill8
	strb r5, [r4, #1]
	strb r7, [r4, #3]
	ldr r0, [r6, #0x10]
	ldr r1, _02206108 ; =ov01_0220610C
	add r2, r4, #0
	bl TaskManager_Call
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02206108: .word ov01_0220610C
	thumb_func_end ov01_022060B8

	thumb_func_start ov01_0220610C
ov01_0220610C: ; 0x0220610C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl TaskManager_GetSys
	add r6, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnv
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetStatePtr
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #3
	bls _0220612E
	b _0220625A
_0220612E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220613A: ; jump table
	.short _02206142 - _0220613A - 2 ; case 0
	.short _02206180 - _0220613A - 2 ; case 1
	.short _022061EA - _0220613A - 2 ; case 2
	.short _02206250 - _0220613A - 2 ; case 3
_02206142:
	add r0, r6, #0
	bl FollowingPokemon_GetMapObject
	bl MapObject_GetGfxID
	bl ov01_02206088
	add r7, r0, #0
	ldr r0, [r6, #0x3c]
	bl FldObjSys_GetMModelNarc
	add r1, r7, #0
	mov r2, #0xb
	bl NARC_AllocAndReadWholeMember
	add r6, r0, #0
	bl NNS_G3dGetTex
	ldr r1, [r0, #0x38]
	mov r2, #0x40
	add r0, r0, r1
	add r1, r4, #4
	bl MIi_CpuCopy16
	add r0, r6, #0
	bl FreeToHeap
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0220625A
_02206180:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0220618C
	sub r0, r0, #1
	strb r0, [r4, #2]
	b _0220625A
_0220618C:
	mov r0, #0
	ldrsb r2, [r4, r0]
	ldrb r1, [r4, #1]
	add r1, r2, r1
	strb r1, [r4]
	ldrsb r0, [r4, r0]
	cmp r0, #0x10
	blt _022061A6
	mov r0, #0x10
	strb r0, [r4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_022061A6:
	ldr r0, _02206260 ; =0x0000FFFF
	add r1, r4, #0
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #4
	add r1, #0x44
	mov r2, #0x20
	bl sub_02003DE8
	ldr r0, [r6, #0x3c]
	bl ov01_021F771C
	add r6, r0, #0
	bl sub_02023FB0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02023FB0
	add r1, r0, #0
	ldr r3, _02206264 ; =0xFFFF0000
	lsl r1, r1, #0x10
	and r3, r5
	add r2, r4, #0
	lsr r3, r3, #0x10
	mov r0, #1
	lsr r1, r1, #0xd
	add r2, #0x44
	lsl r3, r3, #3
	bl GF_CreateNewVramTransferTask
	ldrb r0, [r4, #3]
	strb r0, [r4, #2]
	b _0220625A
_022061EA:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _022061F6
	sub r0, r0, #1
	strb r0, [r4, #2]
	b _0220625A
_022061F6:
	mov r0, #0
	ldrsb r2, [r4, r0]
	ldrb r1, [r4, #1]
	sub r1, r2, r1
	strb r1, [r4]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _0220620C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0220620C:
	ldr r0, _02206260 ; =0x0000FFFF
	add r1, r4, #0
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #4
	add r1, #0x44
	mov r2, #0x20
	bl sub_02003DE8
	ldr r0, [r6, #0x3c]
	bl ov01_021F771C
	add r6, r0, #0
	bl sub_02023FB0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02023FB0
	add r1, r0, #0
	ldr r3, _02206264 ; =0xFFFF0000
	lsl r1, r1, #0x10
	and r3, r5
	add r2, r4, #0
	lsr r3, r3, #0x10
	mov r0, #1
	lsr r1, r1, #0xd
	add r2, #0x44
	lsl r3, r3, #3
	bl GF_CreateNewVramTransferTask
	ldrb r0, [r4, #3]
	strb r0, [r4, #2]
	b _0220625A
_02206250:
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0220625A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02206260: .word 0x0000FFFF
_02206264: .word 0xFFFF0000
	thumb_func_end ov01_0220610C

	thumb_func_start ov01_02206268
ov01_02206268: ; 0x02206268
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02069FB0
	cmp r0, #0
	bne _02206278
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02206278:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, #0xe4
	add r4, r0, #0
	ldr r7, [r5]
	bl MapObject_GetCurrentX
	add r5, r0, #0
	add r0, r4, #0
	bl MapObject_GetCurrentY
	add r4, r0, #0
	add r0, r7, #0
	bl MapObject_GetCurrentX
	add r6, r0, #0
	add r0, r7, #0
	bl MapObject_GetCurrentY
	cmp r5, r6
	bne _022062B4
	add r1, r4, #1
	cmp r1, r0
	beq _022062B0
	sub r1, r4, #1
	cmp r1, r0
	bne _022062C8
_022062B0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022062B4:
	cmp r4, r0
	bne _022062C8
	add r0, r5, #1
	cmp r0, r6
	beq _022062C4
	sub r0, r5, #1
	cmp r0, r6
	bne _022062C8
_022062C4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022062C8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_02206268

	thumb_func_start ov01_022062CC
ov01_022062CC: ; 0x022062CC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	bl GetIdxOfFirstAliveMonInParty_CrashIfNone
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022062CC

	.rodata

ov01_02208E0C: ; 0x02208E0C
	.word ov01_021FCDBC
	.word ov01_021FCDC4
	.word ov01_021FCDFC
	.word 0x00000000

ov01_02208E1C: ; 0x02208E1C
	.word 0x00000028
	.word ov01_021FD328
	.word ov01_021FD378
	.word ov01_021FD37C
	.word ov01_021FD3E0

ov01_02208E30: ; 0x02208E30
	.byte 0xB7, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0xFD, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00
	.byte 0xFB, 0x00, 0x00, 0x00, 0x6E, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x00, 0x00
	.byte 0xFE, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00, 0x00
	.byte 0x20, 0x01, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x23, 0x01, 0x00, 0x00, 0x74, 0x00, 0x00, 0x00
	.byte 0x24, 0x01, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0x21, 0x01, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00

ov01_02208E90: ; 0x02208E90
	.byte 0x1F, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00

ov01_02208EA0: ; 0x02208EA0
	.word 0x00000020
	.word ov01_021FD6C8
	.word ov01_021FD714
	.word ov01_021FD718
	.word ov01_021FD7D4

ov01_02208EB4: ; 0x02208EB4
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x20, 0x01, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00

ov01_02208EC8: ; 0x02208EC8
	.word 0x00000020
	.word ov01_021FD784
	.word ov01_021FD714
	.word ov01_021FD718
	.word ov01_021FD838

ov01_02208EDC: ; 0x02208EDC
	.word 0x00000020
	.word ov01_021FD6C8
	.word ov01_021FD714
	.word ov01_021FD92C
	.word ov01_021FD980

ov01_02208EF0: ; 0x02208EF0
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

ov01_02208F14: ; 0x02208F14
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_02208F38: ; 0x02208F38
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00
	.byte 0x00, 0x14, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0E, 0x00, 0x00

ov01_02208F74: ; 0x02208F74
	.word 0x00000038
	.word ov01_021FDFD4
	.word ov01_021FDB34
	.word ov01_021FE058
	.word ov01_021FE0EC

ov01_02208F88: ; 0x02208F88
	.word 0x00000038
	.word ov01_021FDAC0
	.word ov01_021FDB34
	.word ov01_021FDB44
	.word ov01_021FDBCC

ov01_02208F9C: ; 0x02208F9C
	.word 0x00000038
	.word ov01_021FDEAC
	.word ov01_021FDF14
	.word ov01_021FDF20
	.word ov01_021FDF64

ov01_02208FB0: ; 0x02208FB0
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00
	.byte 0x00, 0x40, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x00

ov01_02208FC8: ; 0x02208FC8
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0x40, 0x01, 0x00
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x00

ov01_02208FE0: ; 0x02208FE0
	.word 0x0000001C
	.word ov01_021FE4FC
	.word ov01_021FE524
	.word ov01_021FE528
	.word ov01_021FE558

ov01_02208FF4: ; 0x02208FF4
	.byte 0x5A, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00
	.byte 0x5D, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x61, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00

ov01_0220901C: ; 0x0220901C
	.byte 0x4A, 0x00, 0x00, 0x00
	.byte 0x4B, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00
	.byte 0x4F, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00
	.byte 0x53, 0x00, 0x00, 0x00

ov01_02209044: ; 0x02209044
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00

ov01_02209084: ; 0x02209084
	.word 0x0000001C
	.word ov01_021FE6B4
	.word ov01_021FE6F4
	.word ov01_021FE70C
	.word ov01_021FE768

ov01_02209098: ; 0x02209098
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_022090AC: ; 0x022090AC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00

ov01_022090C4: ; 0x022090C4
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_022090D0: ; 0x022090D0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00

ov01_022090DC: ; 0x022090DC
	.word 0x00000034
	.word ov01_021FE868
	.word ov01_021FE8B0
	.word ov01_021FE8C8
	.word ov01_021FE970

ov01_022090F0: ; 0x022090F0
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_022090FC: ; 0x022090FC
	.word 0x00000024
	.word ov01_021FEB3C
	.word ov01_021FEB78
	.word ov01_021FEB8C
	.word ov01_021FEBC0

ov01_02209110: ; 0x02209110
	.word 0x00000080
	.word ov01_021FED14
	.word ov01_021FED4C
	.word ov01_021FED58
	.word ov01_021FED80

ov01_02209124: ; 0x02209124
	.word 0x00000080
	.word ov01_021FEE64
	.word ov01_021FEE9C
	.word ov01_021FEEA8
	.word ov01_021FEED0

ov01_02209138: ; 0x02209138
	.word 0x00000040
	.word ov01_021FF174
	.word ov01_021FF228
	.word ov01_021FF234
	.word ov01_021FF35C

ov01_0220914C:
	.word 0x00000028
	.word ov01_021FF394
	.word ov01_021FF418
	.word ov01_021FF424
	.word ov01_021FF44C

ov01_02209160: ; 0x02209160
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_02209178: ; 0x02209178
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_02209190: ; 0x02209190
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_022091A8: ; 0x022091A8
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_022091C0: ; 0x022091C0
	.word 0x00000028
	.word ov01_021FF54C
	.word ov01_021FF5B8
	.word ov01_021FF5C4
	.word ov01_021FF658

ov01_022091D4: ; 0x022091D4
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_022091EC: ; 0x022091EC
	.word 0x00000024
	.word ov01_021FF7B0
	.word ov01_021FF7F4
	.word ov01_021FF800
	.word ov01_021FF830

ov01_02209200: ; 0x02209200
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_02209218: ; 0x02209218
	.word 0x00000040
	.word ov01_021FF9F4
	.word ov01_021FFAB0
	.word ov01_021FFABC
	.word ov01_021FFBD4

	; -ipa file boundary
ov01_0220922C: ; 0x0220922C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00

ov01_02209244:
	.word 0x00000040
	.word ov01_021FFCA8
	.word ov01_021FFD64
	.word ov01_021FFD70
	.word ov01_021FFE98

ov01_02209258: ; 0x02209258
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_02209270: ; 0x02209270
	.byte 0x64, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00

ov01_02209280: ; 0x02209280
	.word 0x00000024
	.word ov01_021FFFCC
	.word ov01_021FFFFC
	.word ov01_0220001C
	.word ov01_02200020

ov01_02209294: ; 0x02209294
	.word 0x00000024
	.word ov01_02200140
	.word ov01_02200184
	.word ov01_02200190
	.word ov01_022001C0

ov01_022092A8: ; 0x022092A8
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	; -ipa file boundary
ov01_022092C0: ; 0x022092C0
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00

ov01_022092C8:
	.word 0x00000044
	.word ov01_02200418
	.word ov01_022004EC
	.word ov01_02200480
	.word ov01_02200508

ov01_022092DC: ; 0x022092DC
	.word 0x00000044
	.word ov01_0220059C
	.word ov01_022004EC
	.word ov01_02200614
	.word ov01_02200508

ov01_022092F0: ; 0x022092F0
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

ov01_02209308: ; 0x02209308
	.word 0x00000024
	.word ov01_02200780
	.word ov01_022007D0
	.word ov01_022007DC
	.word ov01_022007F8

ov01_0220931C: ; 0x0220931C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00

ov01_02209334: ; 0x02209334
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_02209340: ; 0x02209340
	.word 0x00000030
	.word ov01_02200900
	.word ov01_02200938
	.word ov01_0220093C
	.word ov01_02200A08

ov01_02209354: ; 0x02209354
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xE0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov01_022093B4: ; 0x022093B4
	.byte 0x04, 0x0A, 0x07, 0x05, 0x0A, 0x0A

sSpikyEarPichuMoveset: ; 0x022093BA
	.short MOVE_HELPING_HAND
	.short MOVE_VOLT_TACKLE
	.short MOVE_SWAGGER
	.short MOVE_PAIN_SPLIT

sStatJudgeBestStatMsgIdxs: ; 0x022093C2
	.short msg_0096_D31R0201_00122
	.short msg_0096_D31R0201_00123
	.short msg_0096_D31R0201_00124
	.short msg_0096_D31R0201_00127
	.short msg_0096_D31R0201_00125
	.short msg_0096_D31R0201_00126

	.balign 4, 0
ov01_022093D0:
	.word 7, 3
	.word 5, 2

sTutorMoves: ; 0x022093E0
	.short MOVE_DIVE
	.byte 40, 0
	.short MOVE_MUD_SLAP
	.byte 32, 1
	.short MOVE_FURY_CUTTER
	.byte 32, 0
	.short MOVE_ICY_WIND
	.byte 48, 0
	.short MOVE_ROLLOUT
	.byte 32, 1
	.short MOVE_THUNDER_PUNCH
	.byte 64, 0
	.short MOVE_FIRE_PUNCH
	.byte 64, 0
	.short MOVE_SUPERPOWER
	.byte 48, 1
	.short MOVE_ICE_PUNCH
	.byte 64, 0
	.short MOVE_IRON_HEAD
	.byte 40, 1
	.short MOVE_AQUA_TAIL
	.byte 40, 1
	.short MOVE_OMINOUS_WIND
	.byte 48, 0
	.short MOVE_GASTRO_ACID
	.byte 32, 1
	.short MOVE_SNORE
	.byte 32, 2
	.short MOVE_SPITE
	.byte 40, 2
	.short MOVE_AIR_CUTTER
	.byte 48, 0
	.short MOVE_HELPING_HAND
	.byte 40, 2
	.short MOVE_ENDEAVOR
	.byte 64, 1
	.short MOVE_OUTRAGE
	.byte 48, 1
	.short MOVE_ANCIENT_POWER
	.byte 40, 1
	.short MOVE_SYNTHESIS
	.byte 40, 2
	.short MOVE_SIGNAL_BEAM
	.byte 40, 1
	.short MOVE_ZEN_HEADBUTT
	.byte 64, 0
	.short MOVE_VACUUM_WAVE
	.byte 48, 0
	.short MOVE_EARTH_POWER
	.byte 40, 1
	.short MOVE_GUNK_SHOT
	.byte 32, 1
	.short MOVE_TWISTER
	.byte 40, 1
	.short MOVE_SEED_BOMB
	.byte 40, 1
	.short MOVE_IRON_DEFENSE
	.byte 40, 1
	.short MOVE_MAGNET_RISE
	.byte 40, 2
	.short MOVE_LAST_RESORT
	.byte 48, 2
	.short MOVE_BOUNCE
	.byte 32, 1
	.short MOVE_TRICK
	.byte 48, 0
	.short MOVE_HEAT_WAVE
	.byte 48, 1
	.short MOVE_KNOCK_OFF
	.byte 40, 0
	.short MOVE_SUCKER_PUNCH
	.byte 40, 0
	.short MOVE_SWIFT
	.byte 40, 2
	.short MOVE_UPROAR
	.byte 48, 2
	.short MOVE_SUPER_FANG
	.byte 40, 1
	.short MOVE_PAIN_SPLIT
	.byte 64, 1
	.short MOVE_STRING_SHOT
	.byte 32, 2
	.short MOVE_TAILWIND
	.byte 48, 2
	.short MOVE_GRAVITY
	.byte 32, 2
	.short MOVE_WORRY_SEED
	.byte 32, 2
	.short MOVE_MAGIC_COAT
	.byte 32, 2
	.short MOVE_ROLE_PLAY
	.byte 48, 2
	.short MOVE_HEAL_BELL
	.byte 48, 2
	.short MOVE_LOW_KICK
	.byte 32, 1
	.short MOVE_SKY_ATTACK
	.byte 64, 1
	.short MOVE_BLOCK
	.byte 32, 2
	.short MOVE_BUG_BITE
	.byte 32, 0
	.short MOVE_HEADBUTT
	.byte 0, 3

ov01_022094B0: ; 0x022094B0
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_022094BC: ; 0x022094BC
	.byte 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_022094C8: ; 0x022094C8
	.word 0x00000054
	.word ov01_02203820
	.word ov01_022033E0
	.word ov01_02203890
	.word ov01_022037E8

ov01_022094DC: ; 0x022094DC
	.word 0x00000054
	.word ov01_0220335C
	.word ov01_022033E0
	.word ov01_022033E4
	.word ov01_022034B8

ov01_022094F0: ; 0x022094F0
	.word 0x00000054
	.word ov01_022035DC
	.word ov01_022033E0
	.word ov01_02203654
	.word ov01_022037E8

ov01_02209504: ; 0x02209504
	.word 0x00000054
	.word ov01_0220335C
	.word ov01_022033E0
	.word ov01_022034F8
	.word ov01_022035A4

ov01_02209518: ; 0x02209518
	.word 0x00000068
	.word ov01_02203BB4
	.word ov01_02203CA0
	.word ov01_02203CB8
	.word ov01_02203DC0

ov01_0220952C: ; 0x0220952C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00

ov01_02209544: ; 0x02209544
	.byte 0x02, 0x00, 0x00, 0x00

ov01_02209548: ; 0x02209548
	.byte 0x96, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x97, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x99, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x9A, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x9D, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x9F, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0xA1, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0xA3, 0x00, 0x00, 0x00

ov01_022095B4: ; 0x022095B4
	.word 0x00000020
	.word ov01_02203F3C
	.word ov01_02203F68
	.word ov01_02203F6C
	.word ov01_02203F98

ov01_022095C8: ; 0x022095C8
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_022095EC: ; 0x022095EC
	.byte 0x00, 0x01, 0x02, 0x03
	.byte 0x03, 0x00, 0x00, 0x00

ov01_022095F4: ; 0x022095F4
	.byte 0x04, 0x03, 0x03, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0xFF, 0xFE, 0xFD
	.byte 0xFC, 0xFB, 0xFA, 0xF9

ov01_02209604: ; 0x02209604
#ifdef HEARTGOLD
	.short ITEM_RED_SHARD, ITEM_YELLOW_SHARD, ITEM_HELIX_FOSSIL
#else
	.short ITEM_BLUE_SHARD, ITEM_GREEN_SHARD, ITEM_DOME_FOSSIL
#endif
	.short ITEM_MAX_ETHER
#ifdef HEARTGOLD
	.short ITEM_BLUE_SHARD, ITEM_GREEN_SHARD
#else
	.short ITEM_RED_SHARD, ITEM_YELLOW_SHARD
#endif
	.short ITEM_OLD_AMBER, ITEM_MAX_REVIVE

ov01_02209614: ; 0x02209614
	.short ITEM_MAX_ETHER, ITEM_REVIVE, ITEM_HEART_SCALE, ITEM_RED_SHARD, ITEM_BLUE_SHARD, ITEM_GREEN_SHARD
	.short ITEM_YELLOW_SHARD, ITEM_STAR_PIECE

ov01_02209624: ; 0x02209624
	.short ITEM_MAX_ETHER, ITEM_PEARL, ITEM_BIG_PEARL
#ifdef HEARTGOLD
	.short ITEM_RED_SHARD, ITEM_YELLOW_SHARD, ITEM_CLAW_FOSSIL, ITEM_CLAW_FOSSIL
#else
	.short ITEM_BLUE_SHARD, ITEM_GREEN_SHARD, ITEM_ROOT_FOSSIL, ITEM_ROOT_FOSSIL
#endif
	.short ITEM_RARE_BONE

ov01_02209634: ; 0x02209634
	.byte 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00

ov01_02209640: ; 0x02209640
	.byte 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00
	.byte 0x00, 0x01, 0x01, 0x00

ov01_02209654: ; 0x02209654
	.byte 0x00, 0x01, 0xFF, 0x00, 0xFF, 0x01, 0x01, 0x00, 0xFF, 0x01, 0xFF, 0x00
	.byte 0xFF, 0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0x01, 0x01, 0x00, 0xFF, 0x01
	.byte 0xFF, 0x00

ov01_02209672: ; 0x02209672
	.byte 0xFF, 0x00, 0x00, 0x01, 0x01, 0xFF, 0x00, 0x00, 0x01, 0x01, 0xFF, 0x00, 0x00, 0x01
	.byte 0x01, 0xFF, 0x00, 0x00, 0x01, 0x01, 0xFF, 0x00, 0x01, 0x00, 0x01, 0xFF, 0x00, 0x01, 0x00, 0x01
	.byte 0xFF, 0x00, 0x01, 0x00, 0x01, 0xFF, 0x00, 0x01, 0x00, 0x01

ov01_0220969A: ; 0x0220969A
	.byte 0xFF, 0x00, 0x00, 0x01, 0x01, 0x01
	.byte 0xFF, 0x00, 0x00, 0x01, 0x01, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x01, 0xFF, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0xFF, 0xFF, 0x00, 0x01, 0x00, 0x01, 0x01, 0xFF, 0x00, 0x01, 0x00, 0x00, 0x01, 0xFF
	.byte 0x00, 0x01, 0x01, 0x00, 0x01, 0xFF, 0x00, 0x00, 0x01, 0x00, 0x01, 0xFF

ov01_022096CC: ; 0x022096CC
	.word 0x00000008
	.word ov01_02205300
	.word ov01_02205354
	.word ov01_02205350
	.word ov01_02205364

ov01_022096E0: ; 0x022096E0
	.byte 0x01, 0x02, 0x02, 0x03, 0x03, 0x02, 0x02, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00

ov01_022096F0: ; 0x022096F0
	.byte 0x04, 0x04, 0x04, 0x02, 0x02, 0x02, 0x00, 0x00

ov01_022096F8: ; 0x022096F8
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

ov01_02209704: ; 0x02209704
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

ov01_02209710: ; 0x02209710
	.byte 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00

ov01_02209720: ; 0x02209720
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00

ov01_02209730: ; 0x02209730
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00

ov01_02209740: ; 0x02209740
	.byte 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00

ov01_02209750: ; 0x02209750
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00
	.byte 0x00, 0xC0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0xA0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00
	.byte 0x00, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00
	.byte 0x00, 0xA0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00

	.data

	.balign 4, 0
ov01_02209AE0: ; 0x02209AE0
	.byte 0x5D, 0x00, 0x5E, 0x00, 0x5F, 0x00, 0x60, 0x00, 0x61, 0x00, 0x62, 0x00, 0x63, 0x00, 0x64, 0x00
	.byte 0x65, 0x00, 0x00, 0x00

	.balign 4, 0
ov01_02209AF4: ; 0x02209AF4
	.asciz "fielddata/wazaoshie/waza_oshie.bin"

	.balign 4, 0
ov01_02209B18: ; 0x02209B18
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
