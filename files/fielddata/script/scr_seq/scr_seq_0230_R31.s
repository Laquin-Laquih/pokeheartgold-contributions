#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R31.h"
#include "msgdata/msg/msg_0378_R31.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R31_000
	scrdef scr_seq_R31_001
	scrdef scr_seq_R31_002
	scrdef scr_seq_R31_003
	scrdef scr_seq_R31_004
	scrdef scr_seq_R31_005
	scrdef_end

scr_seq_R31_000:
	end

scr_seq_R31_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_4114, 1
	gotoif ne, _003D
	goto _0098
	.byte 0x16, 0x00, 0x50, 0x00, 0x00, 0x00
_003D:
	comparevartovalue VAR_UNK_4114, 2
	gotoif ne, _0056
	goto _01AD
	.byte 0x16, 0x00, 0x37, 0x00, 0x00, 0x00
_0056:
	comparevartovalue VAR_UNK_4114, 4
	gotoif ne, _006F
	goto _01AD
	.byte 0x16, 0x00, 0x1e, 0x00, 0x00, 0x00
_006F:
	comparevartovalue VAR_UNK_4114, 6
	gotoif ne, _008D
	scrcmd_781 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _02AE
_008D:
	npc_msg msg_0378_R31_00000
	waitbutton
	closemsg
	releaseall
	end

_0098:
	npc_msg msg_0378_R31_00001
	closemsg
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_349
	scrcmd_351 16384
	comparevartovalue VAR_TEMP_x4000, 255
	gotoif eq, _0206
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 0
	gotoif eq, _021F
	scrcmd_426 32780, 16384, 0
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0238
	scrcmd_426 32780, 16384, 1
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _0251
	scrcmd_363 7, 16384, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _026A
	comparevartovalue VAR_SPECIAL_x800C, 4
	gotoif eq, _0295
	scrcmd_364 16384
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _0149
	apply_movement obj_player, _02BC
	goto _0187

_0149:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0164
	apply_movement obj_player, _02C4
	goto _0187

_0164:
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _017F
	apply_movement obj_player, _02CC
	goto _0187

_017F:
	apply_movement obj_player, _02D4
_0187:
	wait_movement
	buffer_players_name 0
	npc_msg msg_0378_R31_00005
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
_0195:
	npc_msg msg_0378_R31_00007
	setvar VAR_UNK_4114, 2
	comparevartovar VAR_TEMP_x4000, VAR_TEMP_x4001
	gotoif ne, _01AD
	scrcmd_606
_01AD:
	goto_if_no_item_space ITEM_TM44, 1, _01FC
	callstd std_give_item_verbose
	comparevartovalue VAR_UNK_4114, 2
	gotoif ne, _01EB
	setvar VAR_UNK_4114, 3
	goto _01F1

_01EB:
	setvar VAR_UNK_4114, 5
_01F1:
	npc_msg msg_0378_R31_00008
	waitbutton
	closemsg
	releaseall
	end

_01FC:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0206:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	npc_msg msg_0378_R31_00009
	waitbutton
	closemsg
	releaseall
	end

_021F:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	npc_msg msg_0378_R31_00015
	waitbutton
	closemsg
	releaseall
	end

_0238:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	npc_msg msg_0378_R31_00002
	waitbutton
	closemsg
	releaseall
	end

_0251:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	npc_msg msg_0378_R31_00003
	waitbutton
	closemsg
	releaseall
	end

_026A:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	npc_msg msg_0378_R31_00004
	closemsg
	buffer_players_name 0
	npc_msg msg_0378_R31_00006
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	scrcmd_428 16384
	goto _0195
	.byte 0x02, 0x00
_0295:
	scrcmd_150
	fade_screen 6, 1, 1, 0x00
	wait_fade
	npc_msg msg_0378_R31_00010
	waitbutton
	closemsg
	releaseall
	end

_02AE:
	setvar VAR_UNK_4114, 1
	goto _0098
	.byte 0x02, 0x00

_02BC:
	step 32, 1
	step_end

_02C4:
	step 33, 1
	step_end

_02CC:
	step 34, 1
	step_end

_02D4:
	step 35, 1
	step_end
scr_seq_R31_002:
	scrcmd_055 13, 1, 2, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_R31_003:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 14, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_R31_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0378_R31_00012
	waitbutton
	closemsg
	releaseall
	end
	.byte 0x49, 0x00, 0xdc, 0x05, 0x60
	.byte 0x00, 0x68, 0x00, 0x2d, 0x00, 0x01, 0x32, 0x00, 0x35, 0x00, 0x61, 0x00, 0x02, 0x00
scr_seq_R31_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0378_R31_00011
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
