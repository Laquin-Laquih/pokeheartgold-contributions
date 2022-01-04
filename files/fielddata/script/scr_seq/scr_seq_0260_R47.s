#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R47.h"
#include "msgdata/msg/msg_0407_R47.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R47_000
	scrdef scr_seq_R47_001
	scrdef scr_seq_R47_002
	scrdef scr_seq_R47_003
	scrdef scr_seq_R47_004
	scrdef_end

scr_seq_R47_000:
	setvar VAR_UNK_40EB, 1
	setflag FLAG_UNK_9C9
	get_game_version VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 7
	gotoif ne, _004F
	scrcmd_342 4, 87, 385
	scrcmd_342 5, 87, 389
	scrcmd_342 6, 87, 385
	goto _0067

_004F:
	scrcmd_342 4, 87, 389
	scrcmd_342 5, 87, 385
	scrcmd_342 6, 87, 385
_0067:
	comparevartovalue VAR_UNK_40F9, 2
	gotoif eq, _00E6
	comparevartovalue VAR_UNK_40F9, 3
	gotoif eq, _00E6
	comparevartovalue VAR_UNK_40F9, 5
	gotoif ge, _00EC
	checkflag FLAG_UNK_189
	gotoif FALSE, _009F
	clearflag FLAG_UNK_189
	end

_009F:
	checkflag FLAG_GAME_CLEAR
	gotoif TRUE, _00B2
	goto _00E6
	.byte 0x02, 0x00
_00B2:
	get_phone_book_rematch 32, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 0
	gotoif ne, _00E6
	get_weekday VAR_TEMP_x4002
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, _00E0
	clearflag FLAG_UNK_304
	goto _00E4

_00E0:
	setflag FLAG_UNK_304
_00E4:
	end

_00E6:
	setflag FLAG_UNK_304
	end

_00EC:
	scrcmd_342 4, 87, 385
	scrcmd_342 5, 87, 385
	scrcmd_342 6, 87, 389
	goto _00E6
	.byte 0x02, 0x00
scr_seq_R47_002:
	comparevartovalue VAR_UNK_40F9, 5
	gotoif ge, _0162
	get_game_version VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 7
	gotoif ne, _0148
	scrcmd_342 4, 87, 385
	scrcmd_342 5, 87, 389
	scrcmd_342 6, 87, 385
	goto _0160

_0148:
	scrcmd_342 4, 87, 389
	scrcmd_342 5, 87, 385
	scrcmd_342 6, 87, 385
_0160:
	end

_0162:
	scrcmd_342 4, 87, 385
	scrcmd_342 5, 87, 385
	scrcmd_342 6, 87, 389
	end

scr_seq_R47_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_151
	gotoif TRUE, _019E
	npc_msg msg_0407_R47_00000
	waitbutton
	closemsg
	setflag FLAG_UNK_151
	releaseall
	end

_019E:
	npc_msg msg_0407_R47_00001
	waitbutton
	closemsg
	releaseall
	end

scr_seq_R47_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_157
	gotoif TRUE, _0210
	npc_msg msg_0407_R47_00002
	apply_movement obj_R47_leader3, _022C
	wait_movement
	npc_msg msg_0407_R47_00003
	get_player_facing VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _01EB
	apply_movement obj_R47_leader3, _0234
	goto _020E

_01EB:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, _0206
	apply_movement obj_R47_leader3, _023C
	goto _020E

_0206:
	apply_movement obj_R47_leader3, _0244
_020E:
	wait_movement
_0210:
	buffer_players_name 0
	npc_msg msg_0407_R47_00004
	closemsg
	apply_movement obj_R47_leader3, _022C
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end
	.byte 0x00, 0x00

_022C:
	step 32, 1
	step_end

_0234:
	step 33, 1
	step_end

_023C:
	step 34, 1
	step_end

_0244:
	step 35, 1
	step_end
scr_seq_R47_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0407_R47_00005
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _02B5
	photo_album_is_full VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _02C0
	npc_msg msg_0407_R47_00006
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0x00
	wait_fade
	cameron_photo 91
	faceplayer
	lockall
	fade_screen 6, 1, 1, 0x00
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg msg_0407_R47_00007
	waitbutton
	closemsg
	releaseall
	end

_02B5:
	npc_msg msg_0407_R47_00008
	waitbutton
	closemsg
	releaseall
	end

_02C0:
	npc_msg msg_0407_R47_00009
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
