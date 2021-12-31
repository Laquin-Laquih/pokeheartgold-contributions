#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_R02R0201.h"
#include "msgdata/msg/msg_0322_R02R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R02R0201_000
	scrdef_end

scr_seq_R02R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_134
	gotoif TRUE, _0045
	npc_msg msg_0322_R02R0201_00000
	goto_if_no_item_space ITEM_NUGGET, 1, _0050
	callstd std_give_item_verbose
	setflag FLAG_UNK_134
_0045:
	npc_msg msg_0322_R02R0201_00002
	waitbutton
	closemsg
	releaseall
	end

_0050:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.balign 4, 0
