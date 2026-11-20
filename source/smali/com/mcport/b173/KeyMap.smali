###### Class com.mcport.b173.KeyMap (com.mcport.b173.KeyMap)
.class final Lcom/mcport/b173/KeyMap;
.super Ljava/lang/Object;
.source "KeyMap.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forChar(C)I
    .registers 3

    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_10

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1d

    .line 35
    invoke-static {p0}, Lcom/mcport/b173/KeyMap;->toLwjgl(I)I

    move-result p0

    return p0

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_20

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_20

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1d

    .line 36
    invoke-static {p0}, Lcom/mcport/b173/KeyMap;->toLwjgl(I)I

    move-result p0

    return p0

    :cond_20
    const/16 v0, 0x39

    const/16 v1, 0x31

    if-lt p0, v1, :cond_2c

    if-gt p0, v0, :cond_2c

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x2

    return p0

    :cond_2c
    const/16 v1, 0x20

    if-eq p0, v1, :cond_57

    const/16 v0, 0x27

    if-eq p0, v0, :cond_54

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_53

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_50

    packed-switch p0, :pswitch_data_58

    const/4 p0, 0x0

    return p0

    :pswitch_41
    const/16 p0, 0xb

    return p0

    :pswitch_44
    const/16 p0, 0x35

    return p0

    :pswitch_47
    const/16 p0, 0x34

    return p0

    :pswitch_4a
    const/16 p0, 0xc

    return p0

    :pswitch_4d
    const/16 p0, 0x33

    return p0

    :cond_50
    const/16 p0, 0xd

    return p0

    :cond_53
    return v0

    :cond_54
    const/16 p0, 0x28

    return p0

    :cond_57
    return v0

    :pswitch_data_58
    .packed-switch 0x2c
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
    .end packed-switch
.end method

.method static toLwjgl(I)I
    .registers 6

    const/16 v0, 0x1a

    const/16 v1, 0x36

    const/16 v2, 0x1d

    if-lt p0, v2, :cond_13

    if-gt p0, v1, :cond_13

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_10e

    sub-int/2addr p0, v2

    .line 10
    aget p0, v0, p0

    return p0

    :cond_13
    const/16 v3, 0x8

    if-lt p0, v3, :cond_1f

    const/16 v4, 0x10

    if-gt p0, v4, :cond_1f

    sub-int/2addr p0, v3

    add-int/lit8 p0, p0, 0x2

    return p0

    :cond_1f
    const/16 v3, 0x83

    if-lt p0, v3, :cond_2b

    const/16 v4, 0x8c

    if-gt p0, v4, :cond_2b

    sub-int/2addr p0, v3

    add-int/lit8 p0, p0, 0x3b

    return p0

    :cond_2b
    const/4 v3, 0x7

    if-eq p0, v3, :cond_b8

    const/16 v3, 0xa0

    if-eq p0, v3, :cond_b5

    const/16 v3, 0x5c

    if-eq p0, v3, :cond_b2

    const/16 v3, 0x5d

    if-eq p0, v3, :cond_af

    const/16 v3, 0x8d

    if-eq p0, v3, :cond_ac

    const/16 v3, 0x8e

    if-eq p0, v3, :cond_a9

    packed-switch p0, :pswitch_data_bc

    packed-switch p0, :pswitch_data_c8

    packed-switch p0, :pswitch_data_dc

    packed-switch p0, :pswitch_data_f6

    packed-switch p0, :pswitch_data_104

    const/4 p0, 0x0

    return p0

    :pswitch_53
    const/16 p0, 0xd2

    return p0

    :pswitch_56
    const/16 p0, 0xcf

    return p0

    :pswitch_59
    const/16 p0, 0xc7

    return p0

    :pswitch_5c
    const/16 p0, 0x3a

    return p0

    :pswitch_5f
    const/16 p0, 0x9d

    return p0

    :pswitch_62
    return v2

    :pswitch_63
    const/16 p0, 0xd3

    return p0

    :pswitch_66
    const/4 p0, 0x1

    return p0

    :pswitch_68
    const/16 p0, 0x35

    return p0

    :pswitch_6b
    const/16 p0, 0x28

    return p0

    :pswitch_6e
    const/16 p0, 0x27

    return p0

    :pswitch_71
    const/16 p0, 0x2b

    return p0

    :pswitch_74
    const/16 p0, 0x1b

    return p0

    :pswitch_77
    return v0

    :pswitch_78
    const/16 p0, 0xd

    return p0

    :pswitch_7b
    const/16 p0, 0xc

    return p0

    :pswitch_7e
    const/16 p0, 0x29

    return p0

    :pswitch_81
    const/16 p0, 0xe

    return p0

    :pswitch_84
    const/16 p0, 0x1c

    return p0

    :pswitch_87
    const/16 p0, 0x39

    return p0

    :pswitch_8a
    const/16 p0, 0xf

    return p0

    :pswitch_8d
    return v1

    :pswitch_8e
    const/16 p0, 0x2a

    return p0

    :pswitch_91
    const/16 p0, 0xb8

    return p0

    :pswitch_94
    const/16 p0, 0x38

    return p0

    :pswitch_97
    const/16 p0, 0x34

    return p0

    :pswitch_9a
    const/16 p0, 0x33

    return p0

    :pswitch_9d
    const/16 p0, 0xcd

    return p0

    :pswitch_a0
    const/16 p0, 0xcb

    return p0

    :pswitch_a3
    const/16 p0, 0xd0

    return p0

    :pswitch_a6
    const/16 p0, 0xc8

    return p0

    :cond_a9
    const/16 p0, 0x58

    return p0

    :cond_ac
    const/16 p0, 0x57

    return p0

    :cond_af
    const/16 p0, 0xd1

    return p0

    :cond_b2
    const/16 p0, 0xc9

    return p0

    :cond_b5
    const/16 p0, 0x9c

    return p0

    :cond_b8
    const/16 p0, 0xb

    return p0

    nop

    :pswitch_data_bc
    .packed-switch 0x13
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x37
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x42
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x6f
        :pswitch_66
        :pswitch_63
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x7a
        :pswitch_59
        :pswitch_56
        :pswitch_53
    .end packed-switch

    :array_10e
    .array-data 4
        0x1e
        0x30
        0x2e
        0x20
        0x12
        0x21
        0x22
        0x23
        0x17
        0x24
        0x25
        0x26
        0x32
        0x31
        0x18
        0x19
        0x10
        0x13
        0x1f
        0x14
        0x16
        0x2f
        0x11
        0x2d
        0x15
        0x2c
    .end array-data
.end method
