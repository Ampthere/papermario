#include "common.h"
#include "npc.h"

API_CALLABLE(N(SpinyTromp_CheckDist)) {
    f32 x = script->varTable[0] - gPlayerStatus.position.x;
    f32 y = script->varTable[2] - gPlayerStatus.position.y;
    f32 z = 0.0f - gPlayerStatus.position.z;

    script->varTable[4] = sqrtf(SQ(x) + SQ(y) + SQ(z));

    return ApiStatus_DONE2;
}
