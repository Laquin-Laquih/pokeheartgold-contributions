#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R01.h"
#include "msgdata/msg/msg_0319_R01.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R01_000
	scrdef scr_seq_R01_001
	scrdef scr_seq_R01_002
	scrdef_end

scr_seq_R01_001:
	checkflag FLAG_UNK_189
	gotoif FALSE, _001F
	clearflag FLAG_UNK_189
	end

_001F:
	get_weekday VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 1
	gotoif eq, _0050
	comparevartovalue VAR_TEMP_x4000, 2
	gotoif eq, _0050
	comparevartovalue VAR_TEMP_x4000, 6
	gotoif eq, _0050
	setflag FLAG_HIDE_CAMERON
	end

_0050:
	clearflag FLAG_HIDE_CAMERON
	end

scr_seq_R01_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _015B
	photo_album_is_full VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _016F
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	get_player_facing VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, _00CF
	apply_movement obj_player, _01BC
	apply_movement obj_R01_gsmiddleman1, _01D0
	goto _00FA

_00CF:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _00EA
	apply_movement obj_player, _019C
	goto _00FA

_00EA:
	apply_movement obj_player, _01A8
	apply_movement obj_R01_gsmiddleman1, _01D0
_00FA:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0121
	apply_movement obj_partner_poke, _01DC
	wait_movement
_0121:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0x00
	wait_fade
	cameron_photo 72
	lockall
	fade_screen 6, 1, 1, 0x00
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 2
	waitbutton
	closemsg
	releaseall
	end

_015B:
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

_016F:
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end
	.byte 0x00, 0x0f, 0x00, 0x01, 0x00, 0x0c, 0x00, 0x02, 0x00, 0x0e, 0x00, 0x01, 0x00
	.byte 0x0c, 0x00, 0x03, 0x00, 0x21, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00

_019C:
	step 12, 3
	step 33, 1
	step_end

_01A8:
	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_01BC:
	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end

_01D0:
	step 63, 1
	step 32, 1
	step_end

_01DC:
	step 15, 1
	step 12, 1
	step 1, 1
	step_end
scr_seq_R01_002:
	direction_signpost msg_0319_R01_00000, 1, 4, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd std_signpost
	end
	.balign 4, 0
