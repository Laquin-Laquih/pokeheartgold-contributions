#ifndef POKEHEARTGOLD_EVENT_DATA_H_
#define POKEHEARTGOLD_EVENT_DATA_H_

#include "save.h"
#include "constants/flags.h"
#include "constants/vars.h"

typedef struct ScriptState {
    u16 vars[NUM_VARS];
    u8 flags[NUM_FLAGS / 8];
} SCRIPT_STATE;

u32 SaveArray_Flags_sizeof(void);
void SaveArray_Flags_Init(SCRIPT_STATE *scriptState);
SCRIPT_STATE *SaveArray_Flags_Get(SAVEDATA *saveData);
BOOL CheckFlagInArray(SCRIPT_STATE *scriptState, u16 flagno);
void SetFlagInArray(SCRIPT_STATE *scriptState, u16 flagno);
void ClearFlagInArray(SCRIPT_STATE *scriptState, u16 flagno);
u8 *GetFlagAddr(SCRIPT_STATE *scriptState, u16 flagno);
u16 *GetVarAddr(SCRIPT_STATE *scriptState, u16 varno);

#endif //POKEHEARTGOLD_EVENT_DATA_H_
