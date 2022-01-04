#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_D24R0102.h"
#include "msgdata/msg/msg_0073_D24R0102.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D24R0102_000
	scrdef scr_seq_D24R0102_001
	scrdef scr_seq_D24R0102_002
	scrdef scr_seq_D24R0102_003
	scrdef scr_seq_D24R0102_004
	scrdef scr_seq_D24R0102_005
	scrdef_end

scr_seq_D24R0102_005:
	clearflag FLAG_UNK_10F
	end

scr_seq_D24R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_545 32780
	comparevartovalue VAR_SPECIAL_x800C, 28
	gotoif eq, _0093
	comparevartovalue VAR_UNK_40EC, 1
	gotoif ge, _008A
	checkflag FLAG_UNK_10F
	gotoif TRUE, _0081
	npc_msg msg_0073_D24R0102_00000
	setflag FLAG_UNK_10F
	get_player_facing VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _0077
	apply_movement obj_D24R0102_suit, _009C
	goto _007F

_0077:
	apply_movement obj_D24R0102_suit, _00E4
_007F:
	wait_movement
_0081:
	npc_msg msg_0073_D24R0102_00001
	goto _0366

_008A:
	npc_msg msg_0073_D24R0102_00002
	goto _0366

_0093:
	npc_msg msg_0073_D24R0102_00003
	goto _0366


_009C:
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 75, 1
	step_end

_00E4:
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 75, 1
	step_end
scr_seq_D24R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_403E, 8
	gotoif eq, _033C
	comparevartovalue VAR_UNK_403E, 7
	gotoif eq, _02C4
	comparevartovalue VAR_UNK_403E, 4
	gotoif ge, _0277
	scrcmd_545 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _02DB
	scrcmd_770 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0223
	comparevartovalue VAR_UNK_40EC, 4
	gotoif eq, _01F6
	comparevartovalue VAR_UNK_40EC, 3
	gotoif eq, _01D6
	comparevartovalue VAR_UNK_40EC, 2
	gotoif eq, _01C3
	comparevartovalue VAR_UNK_40EC, 1
	gotoif eq, _01BA
_01B1:
	npc_msg msg_0073_D24R0102_00004
	goto _0366

_01BA:
	npc_msg msg_0073_D24R0102_00005
	goto _0366

_01C3:
	comparevartovalue VAR_UNK_403E, 1
	gotoif eq, _035D
	goto _02FA

_01D6:
	comparevartovalue VAR_UNK_403E, 2
	gotoif eq, _035D
	comparevartovalue VAR_UNK_403E, 1
	gotoif eq, _0303
	goto _02FA

_01F6:
	comparevartovalue VAR_UNK_403E, 3
	gotoif eq, _035D
	comparevartovalue VAR_UNK_403E, 2
	gotoif eq, _030C
	comparevartovalue VAR_UNK_403E, 1
	gotoif eq, _0303
	goto _02FA

_0223:
	comparevartovalue VAR_UNK_40EC, 0
	gotoif eq, _01B1
	comparevartovalue VAR_UNK_40EC, 1
	gotoif eq, _01BA
	comparevartovalue VAR_UNK_403E, 4
	gotoif eq, _035D
	comparevartovalue VAR_UNK_403E, 3
	gotoif eq, _0315
	comparevartovalue VAR_UNK_403E, 2
	gotoif eq, _030C
	comparevartovalue VAR_UNK_403E, 1
	gotoif eq, _0303
	goto _02FA

_0277:
	comparevartovalue VAR_UNK_403E, 6
	gotoif eq, _035D
	comparevartovalue VAR_UNK_40F1, 4
	gotoif eq, _02B1
	comparevartovalue VAR_UNK_403E, 5
	gotoif eq, _035D
	comparevartovalue VAR_UNK_40F1, 1
	gotoif ge, _0321
	goto _035D

_02B1:
	comparevartovalue VAR_UNK_403E, 5
	gotoif eq, _032A
	goto _0321

_02C4:
	scrcmd_545 32780
	comparevartovalue VAR_SPECIAL_x800C, 28
	gotoif eq, _0333
	goto _035D

_02DB:
	comparevartovalue VAR_UNK_40EC, 1
	gotoif eq, _02F1
	npc_msg msg_0073_D24R0102_00004
	goto _0366

_02F1:
	npc_msg msg_0073_D24R0102_00009
	goto _0366

_02FA:
	npc_msg msg_0073_D24R0102_00006
	goto _0345

_0303:
	npc_msg msg_0073_D24R0102_00007
	goto _0345

_030C:
	npc_msg msg_0073_D24R0102_00008
	goto _0345

_0315:
	npc_msg msg_0073_D24R0102_00010
	npc_msg msg_0073_D24R0102_00011
	goto _0345

_0321:
	npc_msg msg_0073_D24R0102_00012
	goto _0345

_032A:
	npc_msg msg_0073_D24R0102_00013
	goto _0345

_0333:
	npc_msg msg_0073_D24R0102_00014
	goto _0345

_033C:
	npc_msg msg_0073_D24R0102_00017
	goto _0366

_0345:
	buffer_players_name 0
	npc_msg msg_0073_D24R0102_00016
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	addvar VAR_UNK_403E, 1
	goto _0366

_035D:
	npc_msg msg_0073_D24R0102_00015
	goto _0366

_0366:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D24R0102_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_770 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _03AA
	scrcmd_545 32780
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _03A1
	npc_msg msg_0073_D24R0102_00019
	goto _0366

_03A1:
	npc_msg msg_0073_D24R0102_00018
	goto _0366

_03AA:
	npc_msg msg_0073_D24R0102_00020
	goto _0366

scr_seq_D24R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_403E, 7
	gotoif ge, _03EB
	scrcmd_770 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _03E2
	npc_msg msg_0073_D24R0102_00021
	goto _0366

_03E2:
	npc_msg msg_0073_D24R0102_00022
	goto _0366

_03EB:
	npc_msg msg_0073_D24R0102_00023
	goto _0366

scr_seq_D24R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0073_D24R0102_00024
	goto _0366
	.balign 4, 0
