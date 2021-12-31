#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T22FS0101.h"
#include "msgdata/msg/msg_0557_T22FS0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T22FS0101_000
	scrdef scr_seq_T22FS0101_001
	scrdef scr_seq_T22FS0101_002
	scrdef scr_seq_T22FS0101_003
	scrdef scr_seq_T22FS0101_004
	scrdef_end

scr_seq_T22FS0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd 2011
	scrcmd_054
	setvar VAR_SPECIAL_x8004, 1
	callstd 2048
	releaseall
	end

scr_seq_T22FS0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd 2011
	scrcmd_054
	setvar VAR_SPECIAL_x8004, 1
	callstd 2052
	releaseall
	end

scr_seq_T22FS0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_06F
	gotoif TRUE, _0115
	buffer_players_name 0
	gender_msgbox msg_0557_T22FS0101_00002, msg_0557_T22FS0101_00003
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00F7
_007D:
	get_party_count VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 6
	gotoif eq, _0106
	give_togepi_egg
	setflag FLAG_UNK_070
	buffer_players_name 0
	npc_msg msg_0557_T22FS0101_00004
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	gender_msgbox msg_0557_T22FS0101_00005, msg_0557_T22FS0101_00006
	closemsg
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, _00C5
	apply_movement obj_T22FS0101_assistantm, _014C
	goto _00CD

_00C5:
	apply_movement obj_T22FS0101_assistantm, _0140
_00CD:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T22FS0101_assistantm
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	releaseall
	setvar VAR_SCENE_VIOLET_CITY_OW, 3
	clearflag FLAG_HIDE_VIOLET_KIMONO_GIRL
	clearflag FLAG_HIDE_ELMS_LAB_AIDE
	setvar VAR_SCENE_ELMS_LAB, 7
	end

_00F7:
	npc_msg msg_0557_T22FS0101_00008
	waitbutton
	closemsg
	releaseall
	setflag FLAG_UNK_06F
	end

_0106:
	npc_msg msg_0557_T22FS0101_00007
	waitbutton
	closemsg
	releaseall
	setflag FLAG_UNK_06F
	end

_0115:
	buffer_players_name 0
	gender_msgbox msg_0557_T22FS0101_00009, msg_0557_T22FS0101_00010
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _007D
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00F7
	end


_0140:
	step 14, 2
	step 13, 3
	step_end

_014C:
	step 13, 2
	step 14, 2
	step 13, 1
	step_end
scr_seq_T22FS0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0557_T22FS0101_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T22FS0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0557_T22FS0101_00001
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
