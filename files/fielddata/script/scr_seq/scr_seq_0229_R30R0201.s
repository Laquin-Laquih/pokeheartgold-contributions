#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R30R0201.h"
#include "msgdata/msg/msg_0377_R30R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R30R0201_000
	scrdef scr_seq_R30R0201_001
	scrdef scr_seq_R30R0201_002
	scrdef scr_seq_R30R0201_003
	scrdef_end

scr_seq_R30R0201_003:
	comparevartovalue VAR_UNK_40F9, 1
	gotoif eq, _0021
	end

_0021:
	move_person 0, 5, 0, 6, 3
	end

scr_seq_R30R0201_001:
	scrcmd_609
	lockall
	apply_movement obj_R30R0201_gsgentleman, _03AC
	wait_movement
	apply_movement obj_R30R0201_ookido, _041C
	apply_movement obj_R30R0201_gsgentleman, _03B4
	wait_movement
	buffer_players_name 0
	gender_msgbox msg_0377_R30R0201_00000, msg_0377_R30R0201_00001
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_R30R0201_gsgentleman, _03C4
	apply_movement obj_player, _0404
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	apply_movement obj_R30R0201_gsgentleman, _03E4
	wait_movement
	npc_msg msg_0377_R30R0201_00002
	setvar VAR_SPECIAL_x8004, 484
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	npc_msg msg_0377_R30R0201_00003
	npc_msg msg_0377_R30R0201_00004
	closemsg
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_081 0
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	fade_screen 6, 1, 1, 0x00
	wait_fade
	goto _02E8
	.byte 0x02, 0x00
scr_seq_R30R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_40F9, 4
	gotoif ge, _00F1
	comparevartovalue VAR_UNK_40F9, 2
	gotoif ge, _02CD
_00F1:
	checkflag FLAG_UNK_06C
	gotoif TRUE, _019F
	checkflag FLAG_UNK_0C9
	gotoif TRUE, _012A
	comparevartovalue VAR_UNK_4107, 2
	gotoif ge, _011F
	npc_msg msg_0377_R30R0201_00005
	waitbutton
	closemsg
	releaseall
	end

_011F:
	npc_msg msg_0377_R30R0201_00006
	waitbutton
	closemsg
	releaseall
	end

_012A:
	buffer_players_name 0
	gender_msgbox msg_0377_R30R0201_00016, msg_0377_R30R0201_00017
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0189
	goto_if_no_item_space ITEM_EXP__SHARE, 1, _0194
	callstd std_give_item_verbose
	closemsg
	setflag FLAG_UNK_06C
	setvar VAR_SPECIAL_x8004, 478
	setvar VAR_SPECIAL_x8005, 1
	takeitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	releaseall
	end

_0189:
	npc_msg msg_0377_R30R0201_00020
	waitbutton
	closemsg
	releaseall
	end

_0194:
	npc_msg msg_0377_R30R0201_00019
	waitbutton
	closemsg
	releaseall
	end

_019F:
	checkflag FLAG_UNK_107
	gotoif FALSE, _011F
	npc_msg msg_0377_R30R0201_00007
	closemsg
	scrcmd_386 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 2
	gotoif ne, _01CE
	apply_movement obj_R30R0201_gsgentleman, _01F8
	goto _01F1

_01CE:
	comparevartovalue VAR_TEMP_x4000, 3
	gotoif ne, _01E9
	apply_movement obj_R30R0201_gsgentleman, _020C
	goto _01F1

_01E9:
	apply_movement obj_R30R0201_gsgentleman, _0220
_01F1:
	wait_movement
	releaseall
	end
	.byte 0x00

_01F8:
	step 1, 3
	step 2, 3
	step 0, 3
	step 3, 3
	step_end

_020C:
	step 1, 3
	step 3, 3
	step 0, 3
	step 2, 3
	step_end

_0220:
	step 3, 3
	step 0, 3
	step 2, 3
	step 1, 3
	step_end
scr_seq_R30R0201_002:
	scrcmd_609
	lockall
	setvar VAR_UNK_40F9, 2
	apply_movement obj_R30R0201_gsgentleman, _03AC
	wait_movement
	apply_movement obj_R30R0201_gsgentleman, _02D8
	wait_movement
	buffer_players_name 0
	gender_msgbox msg_0377_R30R0201_00021, msg_0377_R30R0201_00022
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_R30R0201_gsgentleman, _03C4
	apply_movement obj_player, _0404
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	npc_msg msg_0377_R30R0201_00023
	closemsg
	apply_movement obj_R30R0201_gsgentleman, _03E4
	wait_movement
	buffer_players_name 0
	scrcmd_495 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 7
	gotoif ne, _02B0
	setvar VAR_SPECIAL_x8004, 535
	goto _02B6

_02B0:
	setvar VAR_SPECIAL_x8004, 534
_02B6:
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	closemsg
	npc_msg msg_0377_R30R0201_00026
	waitbutton
	closemsg
	releaseall
	end

_02CD:
	npc_msg msg_0377_R30R0201_00027
	waitbutton
	closemsg
	releaseall
	end


_02D8:
	step 13, 1
	step 14, 1
	step 13, 1
	step_end
_02E8:
	play_bgm SEQ_GS_OHKIDO
	apply_movement obj_R30R0201_ookido, _0424
	wait_movement
	apply_movement obj_player, _0414
	wait_movement
	buffer_players_name 0
	gender_msgbox msg_0377_R30R0201_00008, msg_0377_R30R0201_00009
	closemsg
	apply_movement obj_R30R0201_ookido, _0438
	wait_movement
	npc_msg msg_0377_R30R0201_00010
	closemsg
	apply_movement obj_R30R0201_ookido, _0444
	wait_movement
	npc_msg msg_0377_R30R0201_00011
	buffer_players_name 0
	npc_msg msg_0377_R30R0201_00012
	scrcmd_291
	setflag FLAG_UNK_06B
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	scrcmd_573
	gender_msgbox msg_0377_R30R0201_00013, msg_0377_R30R0201_00014
	closemsg
	buffer_players_name 0
	npc_msg msg_0377_R30R0201_00015
	register_gear_number 2
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_R30R0201_ookido, _0450
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_R30R0201_ookido
	wait_se SEQ_SE_DP_DOOR
	fade_out_bgm 0, 30
	scrcmd_081 0
	reset_bgm
	releaseall
	setvar VAR_UNK_4107, 1
	scrcmd_280 2
	setflag FLAG_UNK_195
	setflag FLAG_HIDE_COMM_CLUB_CLOSED_LADIES
	clearflag FLAG_HIDE_COMM_CLUB_RECEPTIONISTS
	setflag FLAG_HIDE_NEW_BARK_RIVAL
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_RIVAL
	setvar VAR_SCENE_ELMS_LAB, 3
	clearflag FLAG_HIDE_ELMS_LAB_OFFICER
	setvar VAR_UNK_408C, 2
	end
	.byte 0x00

_03AC:
	step 75, 1
	step_end

_03B4:
	step 17, 1
	step 18, 5
	step 33, 1
	step_end

_03C4:
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.byte 0x20, 0x00, 0x01, 0x00, 0x23, 0x00, 0x01, 0x00, 0x22, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00

_03E4:
	step 18, 3
	step 16, 1
	step 63, 1
	step 24, 1
	step 9, 1
	step 11, 3
	step 29, 1
	step_end

_0404:
	step 12, 1
	step 15, 1
	step 12, 2
	step_end

_0414:
	step 34, 1
	step_end

_041C:
	step 34, 1
	step_end

_0424:
	step 9, 1
	step 10, 4
	step 8, 2
	step 31, 1
	step_end

_0438:
	step 9, 1
	step 31, 1
	step_end

_0444:
	step 8, 1
	step 31, 1
	step_end

_0450:
	step 9, 3
	step 63, 1
	step_end
	.balign 4, 0
