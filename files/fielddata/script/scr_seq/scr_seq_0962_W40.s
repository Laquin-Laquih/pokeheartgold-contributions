#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_W40.h"
#include "msgdata/msg/msg_0744_W40.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_W40_000
	scrdef scr_seq_W40_001
	scrdef scr_seq_W40_002
	scrdef scr_seq_W40_003
	scrdef scr_seq_W40_004
	scrdef scr_seq_W40_005
	scrdef scr_seq_W40_006
	scrdef scr_seq_W40_007
	scrdef scr_seq_W40_008
	scrdef scr_seq_W40_009
	scrdef_end

scr_seq_W40_000:
	get_weekday VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 1
	gotoif ne, _0045
	clearflag FLAG_UNK_206
	goto _0049

_0045:
	setflag FLAG_UNK_206
_0049:
	end

scr_seq_W40_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_lead_mon_index VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_x800C, VAR_SPECIAL_x8002, RIBBON_ALERT
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0171
	checkflag FLAG_GOT_SHOCK_RIBBON
	gotoif TRUE, _0185
	comparevartovalue VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	gotoif eq, _011F
	checkflag FLAG_UNK_0D7
	gotoif TRUE, _0101
	get_weekday VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00B2
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 3
	goto _00F9

_00B2:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 0
	goto_if_no_item_space ITEM_SHARP_BEAK, 1, _0115
	callstd std_give_item_verbose
	setflag FLAG_UNK_0D7
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 1
_00F9:
	waitbutton
	closemsg
	releaseall
	end

_0101:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 2
	waitbutton
	closemsg
	releaseall
	end

_0115:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_011F:
	get_weekday VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0142
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 3
	goto _00F9

_0142:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 28
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_x800C, 30
	give_ribbon VAR_SPECIAL_x8002, RIBBON_ALERT
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_GOT_SHOCK_RIBBON
	waitbutton
	closemsg
	releaseall
	end

_0171:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 29
	waitbutton
	closemsg
	releaseall
	end

_0185:
	get_std_msg_naix 0, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 31
	waitbutton
	closemsg
	releaseall
	end

scr_seq_W40_008:
	scrcmd_609
	lockall
	apply_movement obj_W40_gsmiddleman1, _02C8
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	comparevartovalue VAR_SPECIAL_x8000, 252
	gotoif ne, _01C8
	apply_movement obj_W40_gsmiddleman1, _02D4
	goto _0206

_01C8:
	comparevartovalue VAR_SPECIAL_x8000, 253
	gotoif ne, _01E3
	apply_movement obj_W40_gsmiddleman1, _02E0
	goto _0206

_01E3:
	comparevartovalue VAR_SPECIAL_x8000, 254
	gotoif ne, _01FE
	apply_movement obj_W40_gsmiddleman1, _02F4
	goto _0206

_01FE:
	apply_movement obj_W40_gsmiddleman1, _0308
_0206:
	wait_movement
	scrcmd_729 VAR_TEMP_x4002
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif eq, _0223
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 56
_0223:
	apply_movement obj_W40_gsmiddleman1, _031C
	apply_movement obj_player, _02B8
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	npc_msg msg_0744_W40_00015
	closemsg
	apply_movement obj_W40_gsmiddleman1, _02C8
	wait_movement
	npc_msg msg_0744_W40_00016
	closemsg
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	comparevartovalue VAR_SPECIAL_x8000, 252
	gotoif ne, _0274
	apply_movement obj_W40_gsmiddleman1, _0324
	goto _02B2

_0274:
	comparevartovalue VAR_SPECIAL_x8000, 253
	gotoif ne, _028F
	apply_movement obj_W40_gsmiddleman1, _0330
	goto _02B2

_028F:
	comparevartovalue VAR_SPECIAL_x8000, 254
	gotoif ne, _02AA
	apply_movement obj_W40_gsmiddleman1, _0344
	goto _02B2

_02AA:
	apply_movement obj_W40_gsmiddleman1, _0358
_02B2:
	wait_movement
	releaseall
	end


_02B8:
	step 71, 1
	step 12, 1
	step 72, 1
	step_end

_02C8:
	step 75, 1
	step 63, 1
	step_end

_02D4:
	step 16, 5
	step 32, 2
	step_end

_02E0:
	step 16, 2
	step 19, 1
	step 16, 3
	step 32, 2
	step_end

_02F4:
	step 16, 2
	step 19, 2
	step 16, 3
	step 32, 2
	step_end

_0308:
	step 16, 2
	step 19, 3
	step 16, 3
	step 32, 2
	step_end

_031C:
	step 12, 1
	step_end

_0324:
	step 17, 6
	step 32, 1
	step_end

_0330:
	step 17, 3
	step 18, 1
	step 17, 3
	step 32, 1
	step_end

_0344:
	step 17, 3
	step 18, 2
	step 17, 3
	step 32, 1
	step_end

_0358:
	step 17, 3
	step 18, 3
	step 17, 3
	step 32, 1
	step_end
scr_seq_W40_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0744_W40_00018
	waitbutton
	closemsg
	releaseall
	end

scr_seq_W40_002:
	scrcmd_055 19, 1, 4, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_W40_009:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 20, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_W40_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0744_W40_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_W40_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0744_W40_00006
	waitbutton
	closemsg
	releaseall
	end

scr_seq_W40_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0744_W40_00003
	waitbutton
	closemsg
	releaseall
	end

scr_seq_W40_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0744_W40_00009
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
