###### Class org.lwjgl.input.Keyboard (org.lwjgl.input.Keyboard)
.class public final Lorg/lwjgl/input/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field public static final CHAR_NONE:I = 0x0

.field public static final KEYBOARD_SIZE:I = 0x100

.field public static final KEY_0:I = 0xb

.field public static final KEY_1:I = 0x2

.field public static final KEY_2:I = 0x3

.field public static final KEY_3:I = 0x4

.field public static final KEY_4:I = 0x5

.field public static final KEY_5:I = 0x6

.field public static final KEY_6:I = 0x7

.field public static final KEY_7:I = 0x8

.field public static final KEY_8:I = 0x9

.field public static final KEY_9:I = 0xa

.field public static final KEY_A:I = 0x1e

.field public static final KEY_APOSTROPHE:I = 0x28

.field public static final KEY_B:I = 0x30

.field public static final KEY_BACK:I = 0xe

.field public static final KEY_BACKSLASH:I = 0x2b

.field public static final KEY_C:I = 0x2e

.field public static final KEY_CAPITAL:I = 0x3a

.field public static final KEY_COMMA:I = 0x33

.field public static final KEY_D:I = 0x20

.field public static final KEY_DELETE:I = 0xd3

.field public static final KEY_DIVIDE:I = 0xb5

.field public static final KEY_DOWN:I = 0xd0

.field public static final KEY_E:I = 0x12

.field public static final KEY_END:I = 0xcf

.field public static final KEY_EQUALS:I = 0xd

.field public static final KEY_ESCAPE:I = 0x1

.field public static final KEY_F:I = 0x21

.field public static final KEY_F1:I = 0x3b

.field public static final KEY_F10:I = 0x44

.field public static final KEY_F11:I = 0x57

.field public static final KEY_F12:I = 0x58

.field public static final KEY_F2:I = 0x3c

.field public static final KEY_F3:I = 0x3d

.field public static final KEY_F4:I = 0x3e

.field public static final KEY_F5:I = 0x3f

.field public static final KEY_F6:I = 0x40

.field public static final KEY_F7:I = 0x41

.field public static final KEY_F8:I = 0x42

.field public static final KEY_F9:I = 0x43

.field public static final KEY_G:I = 0x22

.field public static final KEY_GRAVE:I = 0x29

.field public static final KEY_H:I = 0x23

.field public static final KEY_HOME:I = 0xc7

.field public static final KEY_I:I = 0x17

.field public static final KEY_INSERT:I = 0xd2

.field public static final KEY_J:I = 0x24

.field public static final KEY_K:I = 0x25

.field public static final KEY_L:I = 0x26

.field public static final KEY_LBRACKET:I = 0x1a

.field public static final KEY_LCONTROL:I = 0x1d

.field public static final KEY_LEFT:I = 0xcb

.field public static final KEY_LMENU:I = 0x38

.field public static final KEY_LSHIFT:I = 0x2a

.field public static final KEY_M:I = 0x32

.field public static final KEY_MINUS:I = 0xc

.field public static final KEY_MULTIPLY:I = 0x37

.field public static final KEY_N:I = 0x31

.field public static final KEY_NEXT:I = 0xd1

.field public static final KEY_NONE:I = 0x0

.field public static final KEY_NUMLOCK:I = 0x45

.field public static final KEY_NUMPADENTER:I = 0x9c

.field public static final KEY_O:I = 0x18

.field public static final KEY_P:I = 0x19

.field public static final KEY_PAUSE:I = 0xc5

.field public static final KEY_PERIOD:I = 0x34

.field public static final KEY_PRIOR:I = 0xc9

.field public static final KEY_Q:I = 0x10

.field public static final KEY_R:I = 0x13

.field public static final KEY_RBRACKET:I = 0x1b

.field public static final KEY_RCONTROL:I = 0x9d

.field public static final KEY_RETURN:I = 0x1c

.field public static final KEY_RIGHT:I = 0xcd

.field public static final KEY_RMENU:I = 0xb8

.field public static final KEY_RSHIFT:I = 0x36

.field public static final KEY_S:I = 0x1f

.field public static final KEY_SCROLL:I = 0x46

.field public static final KEY_SEMICOLON:I = 0x27

.field public static final KEY_SLASH:I = 0x35

.field public static final KEY_SPACE:I = 0x39

.field public static final KEY_T:I = 0x14

.field public static final KEY_TAB:I = 0xf

.field public static final KEY_U:I = 0x16

.field public static final KEY_UP:I = 0xc8

.field public static final KEY_V:I = 0x2f

.field public static final KEY_W:I = 0x11

.field public static final KEY_X:I = 0x2d

.field public static final KEY_Y:I = 0x15

.field public static final KEY_Z:I = 0x2c

.field private static final NAMES:[Ljava/lang/String;

.field private static created:Z

.field private static current:[I

.field private static cursorIdx:I

.field private static final down:[Z

.field private static events:[[I

.field private static nEvents:I

.field private static final pending:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[I>;"
        }
    .end annotation
.end field

.field private static repeat:Z


# direct methods
.method static constructor <clinit>()V
    .registers 103

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    .line 14
    sput-object v1, Lorg/lwjgl/input/Keyboard;->NAMES:[Ljava/lang/String;

    const-string v1, "ESCAPE"

    const-string v2, "1"

    .line 16
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "3"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "5"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v1, "6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v2, "7"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v1, "8"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v2, "9"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v1, "10"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v1, "11"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v1, "12"

    const-string v2, "MINUS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const-string v1, "13"

    const-string v2, "EQUALS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "14"

    const-string v2, "BACK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "15"

    const-string v2, "TAB"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v17

    const-string v1, "16"

    const-string v2, "Q"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v18

    const-string v1, "17"

    const-string v2, "W"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "18"

    const-string v2, "E"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v20

    const-string v1, "19"

    const-string v2, "R"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v21

    const-string v1, "20"

    const-string v2, "T"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v22

    const-string v1, "21"

    const-string v2, "Y"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v23

    const-string v1, "22"

    const-string v2, "U"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v24

    const-string v1, "23"

    const-string v2, "I"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v25

    const-string v1, "24"

    const-string v2, "O"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v26

    const-string v1, "25"

    const-string v2, "P"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v27

    const-string v1, "26"

    const-string v2, "LBRACKET"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v28

    const-string v1, "27"

    const-string v2, "RBRACKET"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v29

    const-string v1, "28"

    const-string v2, "RETURN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v30

    const-string v1, "29"

    const-string v2, "LCONTROL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v31

    const-string v1, "30"

    const-string v2, "A"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v32

    const-string v1, "31"

    const-string v2, "S"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v33

    const-string v1, "32"

    const-string v2, "D"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v34

    const-string v1, "33"

    const-string v2, "F"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v35

    const-string v1, "34"

    const-string v2, "G"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v36

    const-string v1, "35"

    const-string v2, "H"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v37

    const-string v1, "36"

    const-string v2, "J"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v38

    const-string v1, "37"

    const-string v2, "K"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v39

    const-string v1, "38"

    const-string v2, "L"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v40

    const-string v1, "39"

    const-string v2, "SEMICOLON"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v41

    const-string v1, "40"

    const-string v2, "APOSTROPHE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v42

    const-string v1, "41"

    const-string v2, "GRAVE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v43

    const-string v1, "42"

    const-string v2, "LSHIFT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v44

    const-string v1, "43"

    const-string v2, "BACKSLASH"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v45

    const-string v1, "44"

    const-string v2, "Z"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v46

    const-string v1, "45"

    const-string v2, "X"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v47

    const-string v1, "46"

    const-string v2, "C"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v48

    const-string v1, "47"

    const-string v2, "V"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v49

    const-string v1, "48"

    const-string v2, "B"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v50

    const-string v1, "49"

    const-string v2, "N"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v51

    const-string v1, "50"

    const-string v2, "M"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v52

    const-string v1, "51"

    const-string v2, "COMMA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v53

    const-string v1, "52"

    const-string v2, "PERIOD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v54

    const-string v1, "53"

    const-string v2, "SLASH"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v55

    const-string v1, "54"

    const-string v2, "RSHIFT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v56

    const-string v1, "55"

    const-string v2, "MULTIPLY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v57

    const-string v1, "56"

    const-string v2, "LMENU"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v58

    const-string v1, "57"

    const-string v2, "SPACE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v59

    const-string v1, "58"

    const-string v2, "CAPITAL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v60

    const-string v1, "59"

    const-string v2, "F1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v61

    const-string v1, "60"

    const-string v2, "F2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v62

    const-string v1, "61"

    const-string v2, "F3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v63

    const-string v1, "62"

    const-string v2, "F4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v64

    const-string v1, "63"

    const-string v2, "F5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v65

    const-string v1, "64"

    const-string v2, "F6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v66

    const-string v1, "65"

    const-string v2, "F7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v67

    const-string v1, "66"

    const-string v2, "F8"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v68

    const-string v1, "67"

    const-string v2, "F9"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v69

    const-string v1, "68"

    const-string v2, "F10"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v70

    const-string v1, "69"

    const-string v2, "NUMLOCK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v71

    const-string v1, "70"

    const-string v2, "SCROLL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v72

    const-string v1, "71"

    const-string v2, "NUMPAD7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v73

    const-string v1, "72"

    const-string v2, "NUMPAD8"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v74

    const-string v1, "73"

    const-string v2, "NUMPAD9"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v75

    const-string v1, "74"

    const-string v2, "SUBTRACT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v76

    const-string v1, "75"

    const-string v2, "NUMPAD4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v77

    const-string v1, "76"

    const-string v2, "NUMPAD5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v78

    const-string v1, "77"

    const-string v2, "NUMPAD6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v79

    const-string v1, "78"

    const-string v2, "ADD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v80

    const-string v1, "79"

    const-string v2, "NUMPAD1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v81

    const-string v1, "80"

    const-string v2, "NUMPAD2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v82

    const-string v1, "81"

    const-string v2, "NUMPAD3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v83

    const-string v1, "82"

    const-string v2, "NUMPAD0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v84

    const-string v1, "83"

    const-string v2, "DECIMAL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v85

    const-string v1, "87"

    const-string v2, "F11"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v86

    const-string v1, "88"

    const-string v2, "F12"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v87

    const-string v1, "156"

    const-string v2, "NUMPADENTER"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v88

    const-string v1, "157"

    const-string v2, "RCONTROL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v89

    const-string v1, "181"

    const-string v2, "DIVIDE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v90

    const-string v1, "184"

    const-string v2, "RMENU"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v91

    const-string v1, "197"

    const-string v2, "PAUSE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v92

    const-string v1, "199"

    const-string v2, "HOME"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v93

    const-string v1, "200"

    const-string v2, "UP"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v94

    const-string v1, "201"

    const-string v2, "PRIOR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v95

    const-string v1, "203"

    const-string v2, "LEFT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v96

    const-string v1, "205"

    const-string v2, "RIGHT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v97

    const-string v1, "207"

    const-string v2, "END"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v98

    const-string v1, "208"

    const-string v2, "DOWN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v99

    const-string v1, "209"

    const-string v2, "NEXT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v100

    const-string v1, "210"

    const-string v2, "INSERT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v101

    const-string v1, "211"

    const-string v2, "DELETE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v102

    filled-new-array/range {v3 .. v102}, [[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_31a
    const/16 v4, 0x64

    if-ge v3, v4, :cond_330

    .line 26
    aget-object v4, v1, v3

    sget-object v5, Lorg/lwjgl/input/Keyboard;->NAMES:[Ljava/lang/String;

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_31a

    .line 28
    :cond_330
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lorg/lwjgl/input/Keyboard;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-array v1, v0, [[I

    .line 29
    sput-object v1, Lorg/lwjgl/input/Keyboard;->events:[[I

    const/4 v1, -0x1

    sput v1, Lorg/lwjgl/input/Keyboard;->cursorIdx:I

    new-array v0, v0, [Z

    .line 30
    sput-object v0, Lorg/lwjgl/input/Keyboard;->down:[Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areRepeatEventsEnabled()Z
    .registers 1

    .line 32
    sget-boolean v0, Lorg/lwjgl/input/Keyboard;->repeat:Z

    return v0
.end method

.method public static create()V
    .registers 1

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lorg/lwjgl/input/Keyboard;->created:Z

    return-void
.end method

.method public static destroy()V
    .registers 1

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lorg/lwjgl/input/Keyboard;->created:Z

    return-void
.end method

.method public static enableRepeatEvents(Z)V
    .registers 1

    .line 32
    sput-boolean p0, Lorg/lwjgl/input/Keyboard;->repeat:Z

    return-void
.end method

.method public static getEventCharacter()C
    .registers 2

    .line 46
    sget-object v0, Lorg/lwjgl/input/Keyboard;->current:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-char v0, v0

    :goto_a
    return v0
.end method

.method public static getEventKey()I
    .registers 2

    .line 45
    sget-object v0, Lorg/lwjgl/input/Keyboard;->current:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    aget v1, v0, v1

    :goto_8
    return v1
.end method

.method public static getEventKeyState()Z
    .registers 2

    .line 47
    sget-object v0, Lorg/lwjgl/input/Keyboard;->current:[I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static getEventNanoseconds()J
    .registers 2

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getKeyCount()I
    .registers 1

    const/16 v0, 0x100

    return v0
.end method

.method public static getKeyIndex(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x100

    if-ge v1, v2, :cond_14

    .line 52
    sget-object v2, Lorg/lwjgl/input/Keyboard;->NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .registers 2

    if-ltz p0, :cond_b

    const/16 v0, 0x100

    if-ge p0, v0, :cond_b

    .line 51
    sget-object v0, Lorg/lwjgl/input/Keyboard;->NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static isCreated()Z
    .registers 1

    .line 31
    sget-boolean v0, Lorg/lwjgl/input/Keyboard;->created:Z

    return v0
.end method

.method public static isKeyDown(I)Z
    .registers 2

    if-lez p0, :cond_e

    const/16 v0, 0x100

    if-ge p0, v0, :cond_e

    .line 50
    sget-object v0, Lorg/lwjgl/input/Keyboard;->down:[Z

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isRepeatEvent()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static next()Z
    .registers 3

    .line 44
    sget v0, Lorg/lwjgl/input/Keyboard;->cursorIdx:I

    add-int/lit8 v1, v0, 0x1

    sget v2, Lorg/lwjgl/input/Keyboard;->nEvents:I

    if-lt v1, v2, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    sget-object v1, Lorg/lwjgl/input/Keyboard;->events:[[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lorg/lwjgl/input/Keyboard;->cursorIdx:I

    aget-object v0, v1, v0

    sput-object v0, Lorg/lwjgl/input/Keyboard;->current:[I

    return v2
.end method

.method public static poll()V
    .registers 6

    .line 38
    sget v0, Lorg/lwjgl/input/Keyboard;->nEvents:I

    sget v1, Lorg/lwjgl/input/Keyboard;->cursorIdx:I

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_13

    if-ltz v1, :cond_13

    sget-object v4, Lorg/lwjgl/input/Keyboard;->events:[[I

    add-int/2addr v1, v3

    invoke-static {v4, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/lwjgl/input/Keyboard;->nEvents:I

    const/4 v1, -0x1

    sput v1, Lorg/lwjgl/input/Keyboard;->cursorIdx:I

    const/16 v1, 0x1000

    if-le v0, v1, :cond_22

    .line 39
    sput v2, Lorg/lwjgl/input/Keyboard;->nEvents:I

    .line 40
    :cond_22
    :goto_22
    sget-object v0, Lorg/lwjgl/input/Keyboard;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_5b

    aget v1, v0, v2

    if-lez v1, :cond_3f

    const/16 v4, 0x100

    if-ge v1, v4, :cond_3f

    sget-object v4, Lorg/lwjgl/input/Keyboard;->down:[Z

    aget v5, v0, v3

    if-eqz v5, :cond_3c

    move v5, v3

    goto :goto_3d

    :cond_3c
    move v5, v2

    :goto_3d
    aput-boolean v5, v4, v1

    .line 41
    :cond_3f
    sget v1, Lorg/lwjgl/input/Keyboard;->nEvents:I

    sget-object v4, Lorg/lwjgl/input/Keyboard;->events:[[I

    array-length v5, v4

    if-ne v1, v5, :cond_50

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [[I

    invoke-static {v4, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v5, Lorg/lwjgl/input/Keyboard;->events:[[I

    .line 42
    :cond_50
    sget-object v1, Lorg/lwjgl/input/Keyboard;->events:[[I

    sget v4, Lorg/lwjgl/input/Keyboard;->nEvents:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lorg/lwjgl/input/Keyboard;->nEvents:I

    aput-object v0, v1, v4

    goto :goto_22

    :cond_5b
    return-void
.end method

.method public static postKey(IZC)V
    .registers 6

    .line 33
    sget-object v0, Lorg/lwjgl/input/Keyboard;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static postTap(IC)V
    .registers 3

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, v0, p1}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    return-void
.end method

.method public static releaseAll()V
    .registers 2

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_12

    .line 54
    sget-object v1, Lorg/lwjgl/input/Keyboard;->down:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method
