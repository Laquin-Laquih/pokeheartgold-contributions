#ifndef POKEHEARTGOLD_CONSTANTS_EASY_CHAT_H
#define POKEHEARTGOLD_CONSTANTS_EASY_CHAT_H

#include "constants/species.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/abilities.h"

#define EC_GROUP_POKEMON (0)
#define EC_GROUP_MOVE (1)
#define EC_GROUP_STATUS (2)
#define EC_GROUP_TRAINER (3)
#define EC_GROUP_PEOPLE (4)
#define EC_GROUP_GREETINGS (5)
#define EC_GROUP_LIFESTYLE (6)
#define EC_GROUP_FEELINGS (7)
#define EC_GROUP_TOUGH_WORDS (8)
#define EC_GROUP_UNION (9)
#define EC_GROUP_QUESTION_MARKS (10)

#define EC_WORDS_POKEMON_MIN (0)
#define EC_WORDS_POKEMON_MAX (496)
#define EC_WORDS_POKEMON_COUNT (496)
#define EC_WORDS_MOVE_MIN (496)
#define EC_WORDS_MOVE_MAX (964)
#define EC_WORDS_MOVE_COUNT (468)
#define EC_WORDS_STATUS_MIN (964)
#define EC_WORDS_STATUS_MAX (982)
#define EC_WORDS_STATUS_COUNT (18)
#define EC_WORDS_TRAINER_MIN (982)
#define EC_WORDS_TRAINER_MAX (1106)
#define EC_WORDS_TRAINER_COUNT (124)
#define EC_WORDS_PEOPLE_MIN (1106)
#define EC_WORDS_PEOPLE_MAX (1144)
#define EC_WORDS_PEOPLE_COUNT (38)
#define EC_WORDS_GREETINGS_MIN (1144)
#define EC_WORDS_GREETINGS_MAX (1182)
#define EC_WORDS_GREETINGS_COUNT (38)
#define EC_WORDS_LIFESTYLE_MIN (1182)
#define EC_WORDS_LIFESTYLE_MAX (1289)
#define EC_WORDS_LIFESTYLE_COUNT (107)
#define EC_WORDS_FEELINGS_MIN (1289)
#define EC_WORDS_FEELINGS_MAX (1393)
#define EC_WORDS_FEELINGS_COUNT (104)
#define EC_WORDS_TOUGH_WORDS_MIN (1393)
#define EC_WORDS_TOUGH_WORDS_MAX (1440)
#define EC_WORDS_TOUGH_WORDS_COUNT (47)
#define EC_WORDS_UNION_MIN (1440)
#define EC_WORDS_UNION_MAX (1472)
#define EC_WORDS_UNION_COUNT (32)
#define EC_WORDS_QUESTION_MARKS_MIN (1472)
#define EC_WORDS_QUESTION_MARKS_MAX (1495)
#define EC_WORDS_QUESTION_MARKS_COUNT (23)

#define EC_WORD_POKEMON(species) (0+species)

#define EC_WORD_MOVE(move) (496+move)

#define EC_WORD_STATUS(type) (964+type)

#define EC_WORD_TRAINER(ability) (982+ability)

#define EC_WORD_PEOPLE_MATCH_UP (1106)
#define EC_WORD_PEOPLE_NO_1 (1107)
#define EC_WORD_PEOPLE_PREPARATION (1108)
#define EC_WORD_PEOPLE_WINS (1109)
#define EC_WORD_PEOPLE_NO_MATCH (1110)
#define EC_WORD_PEOPLE_SPIRIT (1111)
#define EC_WORD_PEOPLE_ACE_CARD (1112)
#define EC_WORD_PEOPLE_COME_ON (1113)
#define EC_WORD_PEOPLE_ATTACK (1114)
#define EC_WORD_PEOPLE_SURRENDER (1115)
#define EC_WORD_PEOPLE_COURAGE (1116)
#define EC_WORD_PEOPLE_TALENT (1117)
#define EC_WORD_PEOPLE_STRATEGY (1118)
#define EC_WORD_PEOPLE_MATCH (1119)
#define EC_WORD_PEOPLE_VICTORY (1120)
#define EC_WORD_PEOPLE_SENSE (1121)
#define EC_WORD_PEOPLE_VERSUS (1122)
#define EC_WORD_PEOPLE_FIGHTS (1123)
#define EC_WORD_PEOPLE_POWER (1124)
#define EC_WORD_PEOPLE_CHALLENGE (1125)
#define EC_WORD_PEOPLE_STRONG (1126)
#define EC_WORD_PEOPLE_TAKE_IT_EASY (1127)
#define EC_WORD_PEOPLE_FOE (1128)
#define EC_WORD_PEOPLE_GENIUS (1129)
#define EC_WORD_PEOPLE_LEGEND (1130)
#define EC_WORD_PEOPLE_BATTLE (1131)
#define EC_WORD_PEOPLE_FIGHT (1132)
#define EC_WORD_PEOPLE_REVIVE (1133)
#define EC_WORD_PEOPLE_POINTS (1134)
#define EC_WORD_PEOPLE_SERIOUS (1135)
#define EC_WORD_PEOPLE_LOSS (1136)
#define EC_WORD_PEOPLE_PARTNER (1137)
#define EC_WORD_PEOPLE_INVINCIBLE (1138)
#define EC_WORD_PEOPLE_EASY (1139)
#define EC_WORD_PEOPLE_WEAK (1140)
#define EC_WORD_PEOPLE_EASY_WIN (1141)
#define EC_WORD_PEOPLE_MOVE (1142)
#define EC_WORD_PEOPLE_TRAINER (1143)

#define EC_WORD_GREETINGS_OPPONENT (1144)
#define EC_WORD_GREETINGS_I (1145)
#define EC_WORD_GREETINGS_YOU (1146)
#define EC_WORD_GREETINGS_MOTHER (1147)
#define EC_WORD_GREETINGS_GRANDFATHER (1148)
#define EC_WORD_GREETINGS_UNCLE (1149)
#define EC_WORD_GREETINGS_FATHER (1150)
#define EC_WORD_GREETINGS_BOY (1151)
#define EC_WORD_GREETINGS_ADULT (1152)
#define EC_WORD_GREETINGS_BROTHER (1153)
#define EC_WORD_GREETINGS_SISTER (1154)
#define EC_WORD_GREETINGS_GRANDMOTHER (1155)
#define EC_WORD_GREETINGS_AUNT (1156)
#define EC_WORD_GREETINGS_PARENT (1157)
#define EC_WORD_GREETINGS_OLD_MAN (1158)
#define EC_WORD_GREETINGS_ME (1159)
#define EC_WORD_GREETINGS_GIRL (1160)
#define EC_WORD_GREETINGS_GAL (1161)
#define EC_WORD_GREETINGS_FAMILY (1162)
#define EC_WORD_GREETINGS_HER (1163)
#define EC_WORD_GREETINGS_HIM (1164)
#define EC_WORD_GREETINGS_YOU_2 (1165)
#define EC_WORD_GREETINGS_SIBLINGS (1166)
#define EC_WORD_GREETINGS_KIDS (1167)
#define EC_WORD_GREETINGS_MR_ (1168)
#define EC_WORD_GREETINGS_MS_ (1169)
#define EC_WORD_GREETINGS_MYSELF (1170)
#define EC_WORD_GREETINGS_WHO (1171)
#define EC_WORD_GREETINGS_FRIEND (1172)
#define EC_WORD_GREETINGS_ALLY (1173)
#define EC_WORD_GREETINGS_PERSON (1174)
#define EC_WORD_GREETINGS_KIDS_2 (1175)
#define EC_WORD_GREETINGS_I_2 (1176)
#define EC_WORD_GREETINGS_EVERYONE (1177)
#define EC_WORD_GREETINGS_RIVAL (1178)
#define EC_WORD_GREETINGS_I_3 (1179)
#define EC_WORD_GREETINGS_I_4 (1180)
#define EC_WORD_GREETINGS_BABY (1181)

#define EC_WORD_LIFESTYLE_KONNICHIWA (1182)
#define EC_WORD_LIFESTYLE_HELLO (1183)
#define EC_WORD_LIFESTYLE_BONJOUR (1184)
#define EC_WORD_LIFESTYLE_CIAO (1185)
#define EC_WORD_LIFESTYLE_HALLO (1186)
#define EC_WORD_LIFESTYLE_HOLA (1187)
#define EC_WORD_LIFESTYLE_OH_WELL (1188)
#define EC_WORD_LIFESTYLE_AAH (1189)
#define EC_WORD_LIFESTYLE_AHAHA (1190)
#define EC_WORD_LIFESTYLE_HUH_ (1191)
#define EC_WORD_LIFESTYLE_THANKS (1192)
#define EC_WORD_LIFESTYLE_NO_PROBLEM (1193)
#define EC_WORD_LIFESTYLE_NOPE (1194)
#define EC_WORD_LIFESTYLE_YES (1195)
#define EC_WORD_LIFESTYLE_HERE_GOES (1196)
#define EC_WORD_LIFESTYLE_LET_S_GO (1197)
#define EC_WORD_LIFESTYLE_HERE_I_COME (1198)
#define EC_WORD_LIFESTYLE_YEAH (1199)
#define EC_WORD_LIFESTYLE_WELCOME (1200)
#define EC_WORD_LIFESTYLE_URGH (1201)
#define EC_WORD_LIFESTYLE_LET_ME_THINK (1202)
#define EC_WORD_LIFESTYLE_HMM (1203)
#define EC_WORD_LIFESTYLE_WHOA (1204)
#define EC_WORD_LIFESTYLE_WROOOAAR_ (1205)
#define EC_WORD_LIFESTYLE_WOW (1206)
#define EC_WORD_LIFESTYLE_SNICKER (1207)
#define EC_WORD_LIFESTYLE_CUTE_LAUGH (1208)
#define EC_WORD_LIFESTYLE_UNBELIEVABLE (1209)
#define EC_WORD_LIFESTYLE_CRIES (1210)
#define EC_WORD_LIFESTYLE_OK (1211)
#define EC_WORD_LIFESTYLE_AGREE (1212)
#define EC_WORD_LIFESTYLE_EH_ (1213)
#define EC_WORD_LIFESTYLE_BOO_HOO (1214)
#define EC_WORD_LIFESTYLE_HEHEHE (1215)
#define EC_WORD_LIFESTYLE_HEY (1216)
#define EC_WORD_LIFESTYLE_OH_YEAH (1217)
#define EC_WORD_LIFESTYLE_OH_WOW_ (1218)
#define EC_WORD_LIFESTYLE_HEEEY (1219)
#define EC_WORD_LIFESTYLE_GREETINGS (1220)
#define EC_WORD_LIFESTYLE_OOPS (1221)
#define EC_WORD_LIFESTYLE_WELL_DONE (1222)
#define EC_WORD_LIFESTYLE_OH_MY (1223)
#define EC_WORD_LIFESTYLE_EEK (1224)
#define EC_WORD_LIFESTYLE_YAAAH (1225)
#define EC_WORD_LIFESTYLE_GIGGLE (1226)
#define EC_WORD_LIFESTYLE_GIVE_ME (1227)
#define EC_WORD_LIFESTYLE_GWAHAHAHA (1228)
#define EC_WORD_LIFESTYLE_UGH (1229)
#define EC_WORD_LIFESTYLE_SORRY (1230)
#define EC_WORD_LIFESTYLE_FORGIVE_ME (1231)
#define EC_WORD_LIFESTYLE_I_M_SORRY (1232)
#define EC_WORD_LIFESTYLE_HEY_ (1233)
#define EC_WORD_LIFESTYLE_GOOD_BYE (1234)
#define EC_WORD_LIFESTYLE_THANK_YOU (1235)
#define EC_WORD_LIFESTYLE_I_VE_ARRIVED (1236)
#define EC_WORD_LIFESTYLE_WEEP (1237)
#define EC_WORD_LIFESTYLE_PARDON_ME (1238)
#define EC_WORD_LIFESTYLE_SO_SORRY (1239)
#define EC_WORD_LIFESTYLE_SEE_YA (1240)
#define EC_WORD_LIFESTYLE_EXCUSE_ME (1241)
#define EC_WORD_LIFESTYLE_OKAY_THEN (1242)
#define EC_WORD_LIFESTYLE_TUT (1243)
#define EC_WORD_LIFESTYLE_BLUSH (1244)
#define EC_WORD_LIFESTYLE_GO_AHEAD (1245)
#define EC_WORD_LIFESTYLE_CHEERS (1246)
#define EC_WORD_LIFESTYLE_HEY__2 (1247)
#define EC_WORD_LIFESTYLE_WHAT_S_UP_ (1248)
#define EC_WORD_LIFESTYLE_HUH__2 (1249)
#define EC_WORD_LIFESTYLE_NO (1250)
#define EC_WORD_LIFESTYLE_SIGH (1251)
#define EC_WORD_LIFESTYLE_HI (1252)
#define EC_WORD_LIFESTYLE_YEP (1253)
#define EC_WORD_LIFESTYLE_YEAH_YEAH (1254)
#define EC_WORD_LIFESTYLE_BYE_BYE (1255)
#define EC_WORD_LIFESTYLE_MEET_YOU (1256)
#define EC_WORD_LIFESTYLE_HAHAHA (1257)
#define EC_WORD_LIFESTYLE_AIYEEH (1258)
#define EC_WORD_LIFESTYLE_HIYAH (1259)
#define EC_WORD_LIFESTYLE_MUHAHAHA (1260)
#define EC_WORD_LIFESTYLE_LOL (1261)
#define EC_WORD_LIFESTYLE_SNORT (1262)
#define EC_WORD_LIFESTYLE_HUMPH (1263)
#define EC_WORD_LIFESTYLE_HEY_2 (1264)
#define EC_WORD_LIFESTYLE_HE_HE_HE (1265)
#define EC_WORD_LIFESTYLE_HEH (1266)
#define EC_WORD_LIFESTYLE_HOHOHO (1267)
#define EC_WORD_LIFESTYLE_THERE_YOU_GO (1268)
#define EC_WORD_LIFESTYLE_OH_DEAR (1269)
#define EC_WORD_LIFESTYLE_BYE_FOR_NOW (1270)
#define EC_WORD_LIFESTYLE_ANGRY (1271)
#define EC_WORD_LIFESTYLE_MUFUFU (1272)
#define EC_WORD_LIFESTYLE_MMM (1273)
#define EC_WORD_LIFESTYLE_HELLO_ (1274)
#define EC_WORD_LIFESTYLE_HI_THERE (1275)
#define EC_WORD_LIFESTYLE_NO_WAY (1276)
#define EC_WORD_LIFESTYLE_YAHOO (1277)
#define EC_WORD_LIFESTYLE_YO (1278)
#define EC_WORD_LIFESTYLE_WELCOME_2 (1279)
#define EC_WORD_LIFESTYLE_OK_2 (1280)
#define EC_WORD_LIFESTYLE_REGARDS (1281)
#define EC_WORD_LIFESTYLE_LALALA (1282)
#define EC_WORD_LIFESTYLE_YAY (1283)
#define EC_WORD_LIFESTYLE_WAIL (1284)
#define EC_WORD_LIFESTYLE_WOW_2 (1285)
#define EC_WORD_LIFESTYLE_BOO_ (1286)
#define EC_WORD_LIFESTYLE_WAHAHA (1287)
#define EC_WORD_LIFESTYLE__ (1288)

#define EC_WORD_FEELINGS_IDOL (1289)
#define EC_WORD_FEELINGS_TOMORROW (1290)
#define EC_WORD_FEELINGS_PLAYING (1291)
#define EC_WORD_FEELINGS_ANIME (1292)
#define EC_WORD_FEELINGS_JOB (1293)
#define EC_WORD_FEELINGS_SONG (1294)
#define EC_WORD_FEELINGS_HOME (1295)
#define EC_WORD_FEELINGS_MOVIE (1296)
#define EC_WORD_FEELINGS_SWEETS (1297)
#define EC_WORD_FEELINGS_MONEY (1298)
#define EC_WORD_FEELINGS_POCKET_MONEY (1299)
#define EC_WORD_FEELINGS_CHIT_CHAT (1300)
#define EC_WORD_FEELINGS_TALK (1301)
#define EC_WORD_FEELINGS_BATH (1302)
#define EC_WORD_FEELINGS_PLAY_HOUSE (1303)
#define EC_WORD_FEELINGS_TOYS (1304)
#define EC_WORD_FEELINGS_MUSIC (1305)
#define EC_WORD_FEELINGS_CARDS (1306)
#define EC_WORD_FEELINGS_SHOPPING (1307)
#define EC_WORD_FEELINGS_CONVERSATION (1308)
#define EC_WORD_FEELINGS_SCHOOL (1309)
#define EC_WORD_FEELINGS_CAMERA (1310)
#define EC_WORD_FEELINGS_VIEWING (1311)
#define EC_WORD_FEELINGS_SPECTATE (1312)
#define EC_WORD_FEELINGS_ANNIVERSARY (1313)
#define EC_WORD_FEELINGS_YESTERDAY (1314)
#define EC_WORD_FEELINGS_TODAY (1315)
#define EC_WORD_FEELINGS_HABIT (1316)
#define EC_WORD_FEELINGS_GROUP (1317)
#define EC_WORD_FEELINGS_GOURMET (1318)
#define EC_WORD_FEELINGS_GAME (1319)
#define EC_WORD_FEELINGS_WORD (1320)
#define EC_WORD_FEELINGS_COLLECTION (1321)
#define EC_WORD_FEELINGS_STORE (1322)
#define EC_WORD_FEELINGS_COMPLETE (1323)
#define EC_WORD_FEELINGS_SERVICE (1324)
#define EC_WORD_FEELINGS_MAGAZINE (1325)
#define EC_WORD_FEELINGS_WALK (1326)
#define EC_WORD_FEELINGS_WORK (1327)
#define EC_WORD_FEELINGS_SYSTEM (1328)
#define EC_WORD_FEELINGS_BICYCLE (1329)
#define EC_WORD_FEELINGS_TRAINING (1330)
#define EC_WORD_FEELINGS_CLASS (1331)
#define EC_WORD_FEELINGS_LESSONS (1332)
#define EC_WORD_FEELINGS_HOBBY (1333)
#define EC_WORD_FEELINGS_INFORMATION (1334)
#define EC_WORD_FEELINGS_SPORTS (1335)
#define EC_WORD_FEELINGS_DAILY_LIFE (1336)
#define EC_WORD_FEELINGS_TEACHER (1337)
#define EC_WORD_FEELINGS_SOFTWARE (1338)
#define EC_WORD_FEELINGS_SONGS (1339)
#define EC_WORD_FEELINGS_DIET (1340)
#define EC_WORD_FEELINGS_TOURNAMENT (1341)
#define EC_WORD_FEELINGS_TREASURE (1342)
#define EC_WORD_FEELINGS_TRAVEL (1343)
#define EC_WORD_FEELINGS_BIRTHDAY (1344)
#define EC_WORD_FEELINGS_DANCE (1345)
#define EC_WORD_FEELINGS_CHANNEL (1346)
#define EC_WORD_FEELINGS_FISHING (1347)
#define EC_WORD_FEELINGS_DATE (1348)
#define EC_WORD_FEELINGS_LETTER (1349)
#define EC_WORD_FEELINGS_EVENT (1350)
#define EC_WORD_FEELINGS_DESIGN (1351)
#define EC_WORD_FEELINGS_DIGITAL (1352)
#define EC_WORD_FEELINGS_TEST (1353)
#define EC_WORD_FEELINGS_DEPT_STORE (1354)
#define EC_WORD_FEELINGS_TELEVISION (1355)
#define EC_WORD_FEELINGS_TRAIN (1356)
#define EC_WORD_FEELINGS_PHONE (1357)
#define EC_WORD_FEELINGS_ITEM (1358)
#define EC_WORD_FEELINGS_NAME (1359)
#define EC_WORD_FEELINGS_NEWS (1360)
#define EC_WORD_FEELINGS_POPULARITY (1361)
#define EC_WORD_FEELINGS_STUFFED_TOY (1362)
#define EC_WORD_FEELINGS_PARTY (1363)
#define EC_WORD_FEELINGS_COMPUTER (1364)
#define EC_WORD_FEELINGS_FLOWERS (1365)
#define EC_WORD_FEELINGS_HERO (1366)
#define EC_WORD_FEELINGS_NAP (1367)
#define EC_WORD_FEELINGS_HEROINE (1368)
#define EC_WORD_FEELINGS_FASHION (1369)
#define EC_WORD_FEELINGS_STUDY (1370)
#define EC_WORD_FEELINGS_ADVENTURE (1371)
#define EC_WORD_FEELINGS_BOARD (1372)
#define EC_WORD_FEELINGS_BALL (1373)
#define EC_WORD_FEELINGS_BOOK (1374)
#define EC_WORD_FEELINGS_MACHINE (1375)
#define EC_WORD_FEELINGS_FESTIVAL (1376)
#define EC_WORD_FEELINGS_COMICS (1377)
#define EC_WORD_FEELINGS_MAIL (1378)
#define EC_WORD_FEELINGS_MESSAGE (1379)
#define EC_WORD_FEELINGS_STORY (1380)
#define EC_WORD_FEELINGS_PROMISE (1381)
#define EC_WORD_FEELINGS_HOLIDAY (1382)
#define EC_WORD_FEELINGS_DREAM (1383)
#define EC_WORD_FEELINGS_KINDERGARTEN (1384)
#define EC_WORD_FEELINGS_PLANS (1385)
#define EC_WORD_FEELINGS_LIFE (1386)
#define EC_WORD_FEELINGS_RADIO (1387)
#define EC_WORD_FEELINGS_CRAZE (1388)
#define EC_WORD_FEELINGS_VACATION (1389)
#define EC_WORD_FEELINGS_LOOKS (1390)
#define EC_WORD_FEELINGS_RENTAL (1391)
#define EC_WORD_FEELINGS_WORLD (1392)

#define EC_WORD_TOUGH_WORDS_BEAUTY (1393)
#define EC_WORD_TOUGH_WORDS_DELIGHT (1394)
#define EC_WORD_TOUGH_WORDS_STRANGENESS (1395)
#define EC_WORD_TOUGH_WORDS_CLEVERNESS (1396)
#define EC_WORD_TOUGH_WORDS_DISAPPOINTED (1397)
#define EC_WORD_TOUGH_WORDS_COOLNESS (1398)
#define EC_WORD_TOUGH_WORDS_SADNESS (1399)
#define EC_WORD_TOUGH_WORDS_CUTENESS (1400)
#define EC_WORD_TOUGH_WORDS_ANGER (1401)
#define EC_WORD_TOUGH_WORDS_HEALTHY (1402)
#define EC_WORD_TOUGH_WORDS_REGRET (1403)
#define EC_WORD_TOUGH_WORDS_HAPPINESS (1404)
#define EC_WORD_TOUGH_WORDS_DEPRESSED (1405)
#define EC_WORD_TOUGH_WORDS_INCREDIBLE (1406)
#define EC_WORD_TOUGH_WORDS_LIKES (1407)
#define EC_WORD_TOUGH_WORDS_DISLIKE (1408)
#define EC_WORD_TOUGH_WORDS_BORED (1409)
#define EC_WORD_TOUGH_WORDS_IMPORTANT (1410)
#define EC_WORD_TOUGH_WORDS_ALL_RIGHT (1411)
#define EC_WORD_TOUGH_WORDS_ADORE (1412)
#define EC_WORD_TOUGH_WORDS_TOUGHNESS (1413)
#define EC_WORD_TOUGH_WORDS_ENJOYMENT (1414)
#define EC_WORD_TOUGH_WORDS_USELESS (1415)
#define EC_WORD_TOUGH_WORDS_DROOLING (1416)
#define EC_WORD_TOUGH_WORDS_EXCITED (1417)
#define EC_WORD_TOUGH_WORDS_SKILLFUL (1418)
#define EC_WORD_TOUGH_WORDS_TEARS (1419)
#define EC_WORD_TOUGH_WORDS_HATE (1420)
#define EC_WORD_TOUGH_WORDS_ROFL (1421)
#define EC_WORD_TOUGH_WORDS_HAPPY (1422)
#define EC_WORD_TOUGH_WORDS_ENERGETIC (1423)
#define EC_WORD_TOUGH_WORDS_SURPRISE (1424)
#define EC_WORD_TOUGH_WORDS_NERVOUS (1425)
#define EC_WORD_TOUGH_WORDS_WANT (1426)
#define EC_WORD_TOUGH_WORDS_SATISFIED (1427)
#define EC_WORD_TOUGH_WORDS_RARE (1428)
#define EC_WORD_TOUGH_WORDS_MESSED_UP (1429)
#define EC_WORD_TOUGH_WORDS_NO_WAY (1430)
#define EC_WORD_TOUGH_WORDS_DANGER (1431)
#define EC_WORD_TOUGH_WORDS_LOVEY_DOVEY (1432)
#define EC_WORD_TOUGH_WORDS_ANTICIPATION (1433)
#define EC_WORD_TOUGH_WORDS_SMILE (1434)
#define EC_WORD_TOUGH_WORDS_SUBTLE (1435)
#define EC_WORD_TOUGH_WORDS_RECOMMEND (1436)
#define EC_WORD_TOUGH_WORDS_SIMPLE (1437)
#define EC_WORD_TOUGH_WORDS_NICE (1438)
#define EC_WORD_TOUGH_WORDS_DIFFICULT (1439)

#define EC_WORD_UNION_EARTH_TONES (1440)
#define EC_WORD_UNION_IMPLANT (1441)
#define EC_WORD_UNION_GOLDEN_RATIO (1442)
#define EC_WORD_UNION_OMNIBUS (1443)
#define EC_WORD_UNION_STARBOARD (1444)
#define EC_WORD_UNION_MONEY_RATE (1445)
#define EC_WORD_UNION_RESOLUTION (1446)
#define EC_WORD_UNION_CADENZA (1447)
#define EC_WORD_UNION_EDUCATION (1448)
#define EC_WORD_UNION_CUBISM (1449)
#define EC_WORD_UNION_CROSS_STITCH (1450)
#define EC_WORD_UNION_ARTERY (1451)
#define EC_WORD_UNION_BONE_DENSITY (1452)
#define EC_WORD_UNION_GOMMAGE (1453)
#define EC_WORD_UNION_STREAMING (1454)
#define EC_WORD_UNION_CONDUCTIVITY (1455)
#define EC_WORD_UNION_COPYRIGHT (1456)
#define EC_WORD_UNION_TWO_STEP (1457)
#define EC_WORD_UNION_CONTOUR (1458)
#define EC_WORD_UNION_NEUTRINO (1459)
#define EC_WORD_UNION_HOWLING (1460)
#define EC_WORD_UNION_SPREADSHEET (1461)
#define EC_WORD_UNION_GMT (1462)
#define EC_WORD_UNION_IRRITABILITY (1463)
#define EC_WORD_UNION_FRACTALS (1464)
#define EC_WORD_UNION_FLAMBE (1465)
#define EC_WORD_UNION_STOCK_PRICES (1466)
#define EC_WORD_UNION_PH_BALANCE (1467)
#define EC_WORD_UNION_VECTOR (1468)
#define EC_WORD_UNION_POLYPHENOL (1469)
#define EC_WORD_UNION_UBIQUITOUS (1470)
#define EC_WORD_UNION_REM_SLEEP (1471)

#define EC_WORD_QUESTION_MARKS_SINGLE (1472)
#define EC_WORD_QUESTION_MARKS_DOUBLE (1473)
#define EC_WORD_QUESTION_MARKS_MIX_BATTLE (1474)
#define EC_WORD_QUESTION_MARKS_MULTI_BATTLE (1475)
#define EC_WORD_QUESTION_MARKS_LEVEL_50 (1476)
#define EC_WORD_QUESTION_MARKS_LEVEL_100 (1477)
#define EC_WORD_QUESTION_MARKS_COLOSSEUM (1478)
#define EC_WORD_QUESTION_MARKS_POKEMON (1479)
#define EC_WORD_QUESTION_MARKS_DRAWING (1480)
#define EC_WORD_QUESTION_MARKS_RECORD (1481)
#define EC_WORD_QUESTION_MARKS_GOTCHA (1482)
#define EC_WORD_QUESTION_MARKS_CHAT (1483)
#define EC_WORD_QUESTION_MARKS_FRIEND_CODE (1484)
#define EC_WORD_QUESTION_MARKS_CONNECTION (1485)
#define EC_WORD_QUESTION_MARKS_VOICE_CHAT (1486)
#define EC_WORD_QUESTION_MARKS_WI_FI (1487)
#define EC_WORD_QUESTION_MARKS_UNDERGROUND (1488)
#define EC_WORD_QUESTION_MARKS_UNION (1489)
#define EC_WORD_QUESTION_MARKS_POFFIN (1490)
#define EC_WORD_QUESTION_MARKS_CONTEST (1491)
#define EC_WORD_QUESTION_MARKS_BATTLE_TOWER (1492)
#define EC_WORD_QUESTION_MARKS_GTS (1493)
#define EC_WORD_QUESTION_MARKS_SECRET_BASE (1494)

#define EC_WORD_NULL (0xFFFF)
#define EC_GROUP_MAX (11)
#define EC_WORD_MASK (0xFFF)

#endif //POKEHEARTGOLD_CONSTANTS_EASY_CHAT_H
