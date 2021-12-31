#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T07R0205.h"
#include "msgdata/msg/msg_0505_T07R0205.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T07R0205_000
	scrdef_end

scr_seq_T07R0205_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_158
	gotoif TRUE, _0071
	npc_msg msg_0505_T07R0205_00000
	scrcmd_379 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 3
	gotoif eq, _0045
	comparevartovalue VAR_TEMP_x4000, 4
	gotoif eq, _0045
	npc_msg msg_0505_T07R0205_00001
	waitbutton
	closemsg
	releaseall
	end

_0045:
	npc_msg msg_0505_T07R0205_00002
	goto_if_no_item_space ITEM_SPELL_TAG, 1, _007C
	callstd std_give_item_verbose
	setflag FLAG_UNK_158
_0071:
	npc_msg msg_0505_T07R0205_00003
	waitbutton
	closemsg
	releaseall
	end

_007C:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.balign 4, 0
