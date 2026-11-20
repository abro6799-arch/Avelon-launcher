###### Class com.mcport.b173.ControllerInput (com.mcport.b173.ControllerInput)
.class final Lcom/mcport/b173/ControllerInput;
.super Ljava/lang/Object;
.source "ControllerInput.java"


# instance fields
.field private final act:Lcom/mcport/b173/GameActivity;

.field private hatX:F

.field private hatY:F

.field volatile lastUse:J

.field private volatile lt:F

.field private ltDown:Z

.field private volatile lx:F

.field private volatile ly:F

.field private px:F

.field private py:F

.field private volatile rt:F

.field private rtDown:Z

.field private volatile rx:F

.field private volatile ry:F

.field private wasd:[Z


# direct methods
.method constructor <init>(Lcom/mcport/b173/GameActivity;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 21
    iput-object v0, p0, Lcom/mcport/b173/ControllerInput;->wasd:[Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 23
    iput v0, p0, Lcom/mcport/b173/ControllerInput;->px:F

    iput v0, p0, Lcom/mcport/b173/ControllerInput;->py:F

    .line 26
    iput-object p1, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    return-void
.end method

.method private static dz(F)F
    .registers 3

    .line 50
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 p0, 0x0

    :cond_c
    return p0
.end method

.method private ensurePointer()V
    .registers 3

    .line 79
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->px:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0}, Lcom/mcport/b173/GameActivity;->surfaceW()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mcport/b173/ControllerInput;->px:F

    iget-object v0, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0}, Lcom/mcport/b173/GameActivity;->surfaceH()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mcport/b173/ControllerInput;->py:F

    :cond_1d
    return-void
.end method

.method private hat(FF)V
    .registers 6

    .line 47
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->hatX:F

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x41000000    # -0.5f

    if-eqz v0, :cond_1d

    cmpg-float v0, p1, v2

    if-gez v0, :cond_14

    const/16 v0, 0x78

    :goto_10
    invoke-static {v0}, Lorg/lwjgl/input/Mouse;->postWheel(I)V

    goto :goto_1b

    :cond_14
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1b

    const/16 v0, -0x78

    goto :goto_10

    :cond_1b
    :goto_1b
    iput p1, p0, Lcom/mcport/b173/ControllerInput;->hatX:F

    .line 48
    :cond_1d
    iget p1, p0, Lcom/mcport/b173/ControllerInput;->hatY:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_39

    cmpg-float p1, p2, v2

    if-gez p1, :cond_2e

    const/16 p1, 0x3f

    const/4 v0, 0x0

    :goto_2a
    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_37

    :cond_2e
    cmpl-float p1, p2, v1

    if-lez p1, :cond_37

    const/16 p1, 0x14

    const/16 v0, 0x74

    goto :goto_2a

    :cond_37
    :goto_37
    iput p2, p0, Lcom/mcport/b173/ControllerInput;->hatY:F

    :cond_39
    return-void
.end method

.method static isPad(Landroid/view/InputDevice;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 29
    :cond_4
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    and-int/lit16 v1, p0, 0x401

    const/16 v2, 0x401

    if-eq v1, v2, :cond_14

    const v1, 0x1000010

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private mouseButton(IZ)V
    .registers 5

    .line 77
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v0

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    return-void
.end method

.method private pointerButton(IZ)V
    .registers 5

    .line 78
    invoke-direct {p0}, Lcom/mcport/b173/ControllerInput;->ensurePointer()V

    iget v0, p0, Lcom/mcport/b173/ControllerInput;->px:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mcport/b173/ControllerInput;->py:F

    float-to-int v1, v1

    invoke-static {p1, p2, v0, v1}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    return-void
.end method


# virtual methods
.method onFrame()V
    .registers 10

    .line 83
    iget-object v0, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0}, Lcom/mcport/b173/GameActivity;->bridge()Lmcport/GameBridge;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 84
    :cond_9
    invoke-interface {v0}, Lmcport/GameBridge;->isInGameplay()Z

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_48

    .line 86
    iget v5, p0, Lcom/mcport/b173/ControllerInput;->ly:F

    const v6, -0x414ccccd    # -0.35f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1f

    move v5, v3

    goto :goto_20

    :cond_1f
    move v5, v4

    :goto_20
    aput-boolean v5, v2, v4

    iget v5, p0, Lcom/mcport/b173/ControllerInput;->ly:F

    const v7, 0x3eb33333    # 0.35f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2d

    move v5, v3

    goto :goto_2e

    :cond_2d
    move v5, v4

    :goto_2e
    const/4 v8, 0x2

    aput-boolean v5, v2, v8

    iget v5, p0, Lcom/mcport/b173/ControllerInput;->lx:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_39

    move v5, v3

    goto :goto_3a

    :cond_39
    move v5, v4

    :goto_3a
    aput-boolean v5, v2, v3

    iget v5, p0, Lcom/mcport/b173/ControllerInput;->lx:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_44

    move v5, v3

    goto :goto_45

    :cond_44
    move v5, v4

    :goto_45
    const/4 v6, 0x3

    aput-boolean v5, v2, v6

    :cond_48
    const/16 v5, 0x1f

    const/16 v6, 0x20

    const/16 v7, 0x11

    const/16 v8, 0x1e

    .line 87
    filled-new-array {v7, v8, v5, v6}, [I

    move-result-object v5

    move v6, v4

    :goto_55
    if-ge v6, v1, :cond_6d

    .line 88
    aget-boolean v7, v2, v6

    iget-object v8, p0, Lcom/mcport/b173/ControllerInput;->wasd:[Z

    aget-boolean v8, v8, v6

    if-eq v7, v8, :cond_6a

    aget v8, v5, v6

    invoke-static {v8, v7, v4}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    iget-object v7, p0, Lcom/mcport/b173/ControllerInput;->wasd:[Z

    aget-boolean v8, v2, v6

    aput-boolean v8, v7, v6

    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 89
    :cond_6d
    iget v1, p0, Lcom/mcport/b173/ControllerInput;->rt:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_77

    move v1, v3

    goto :goto_78

    :cond_77
    move v1, v4

    :goto_78
    iget v5, p0, Lcom/mcport/b173/ControllerInput;->lt:F

    cmpl-float v2, v5, v2

    if-lez v2, :cond_80

    move v2, v3

    goto :goto_81

    :cond_80
    move v2, v4

    .line 90
    :goto_81
    iget-boolean v5, p0, Lcom/mcport/b173/ControllerInput;->rtDown:Z

    if-eq v1, v5, :cond_8a

    invoke-direct {p0, v4, v1}, Lcom/mcport/b173/ControllerInput;->mouseButton(IZ)V

    iput-boolean v1, p0, Lcom/mcport/b173/ControllerInput;->rtDown:Z

    .line 91
    :cond_8a
    iget-boolean v1, p0, Lcom/mcport/b173/ControllerInput;->ltDown:Z

    if-eq v2, v1, :cond_93

    invoke-direct {p0, v3, v2}, Lcom/mcport/b173/ControllerInput;->mouseButton(IZ)V

    iput-boolean v2, p0, Lcom/mcport/b173/ControllerInput;->ltDown:Z

    .line 92
    :cond_93
    iget-object v1, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v1}, Lcom/mcport/b173/GameActivity;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcport/b173/Prefs;->controllerLookSpeed()F

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_d9

    .line 94
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_ac

    iget v0, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_13b

    .line 95
    :cond_ac
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    iget v2, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    neg-float v3, v3

    iget v4, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 96
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v2

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    goto :goto_13b

    .line 98
    :cond_d9
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->lx:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_f1

    iget v0, p0, Lcom/mcport/b173/ControllerInput;->ly:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_f1

    iget v0, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_f1

    iget v0, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_13b

    .line 99
    :cond_f1
    invoke-direct {p0}, Lcom/mcport/b173/ControllerInput;->ensurePointer()V

    .line 100
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->lx:F

    iget v1, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mcport/b173/ControllerInput;->ly:F

    iget v5, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    add-float/2addr v1, v5

    iget-object v5, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v5}, Lcom/mcport/b173/GameActivity;->surfaceH()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42b40000    # 90.0f

    div-float/2addr v5, v6

    .line 101
    iget-object v6, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v6}, Lcom/mcport/b173/GameActivity;->surfaceW()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/mcport/b173/ControllerInput;->px:F

    mul-float/2addr v0, v5

    add-float/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/mcport/b173/ControllerInput;->px:F

    iget-object v0, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0}, Lcom/mcport/b173/GameActivity;->surfaceH()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/mcport/b173/ControllerInput;->py:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/mcport/b173/ControllerInput;->py:F

    .line 102
    iget v1, p0, Lcom/mcport/b173/ControllerInput;->px:F

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-static {v1, v0, v4, v4}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    :cond_13b
    :goto_13b
    return-void
.end method

.method onKey(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/mcport/b173/ControllerInput;->isPad(Landroid/view/InputDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 54
    :cond_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_27

    return v2

    .line 55
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mcport/b173/ControllerInput;->lastUse:J

    .line 56
    iget-object v3, p0, Lcom/mcport/b173/ControllerInput;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v3}, Lcom/mcport/b173/GameActivity;->bridge()Lmcport/GameBridge;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 57
    invoke-interface {v3}, Lmcport/GameBridge;->isInGameplay()Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_3e

    :cond_3c
    move v3, v1

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v3, v2

    .line 58
    :goto_3f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v4, 0x60

    if-eq p1, v4, :cond_bc

    const/16 v4, 0x61

    if-eq p1, v4, :cond_ae

    const/16 v4, 0x63

    if-eq p1, v4, :cond_a4

    const/16 v4, 0x64

    if-eq p1, v4, :cond_94

    packed-switch p1, :pswitch_data_c8

    packed-switch p1, :pswitch_data_d4

    return v1

    :pswitch_5a
    if-eqz v0, :cond_61

    const/16 p1, 0x3d

    .line 68
    invoke-static {p1, v1}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_61
    return v2

    :pswitch_62
    if-eqz v0, :cond_67

    .line 67
    invoke-static {v2, v1}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_67
    :pswitch_67
    return v2

    .line 65
    :pswitch_68
    invoke-direct {p0, v1, v0}, Lcom/mcport/b173/ControllerInput;->mouseButton(IZ)V

    return v2

    .line 66
    :pswitch_6c
    invoke-direct {p0, v2, v0}, Lcom/mcport/b173/ControllerInput;->mouseButton(IZ)V

    return v2

    :pswitch_70
    if-eqz v0, :cond_77

    const/16 p1, -0x78

    .line 70
    invoke-static {p1}, Lorg/lwjgl/input/Mouse;->postWheel(I)V

    :cond_77
    return v2

    :pswitch_78
    if-eqz v0, :cond_7f

    const/16 p1, 0x78

    .line 69
    invoke-static {p1}, Lorg/lwjgl/input/Mouse;->postWheel(I)V

    :cond_7f
    return v2

    :pswitch_80
    if-eqz v0, :cond_8b

    if-nez v3, :cond_8b

    const/16 p1, 0x14

    const/16 v0, 0x74

    .line 72
    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_8b
    return v2

    :pswitch_8c
    if-eqz v0, :cond_93

    const/16 p1, 0x3f

    .line 71
    invoke-static {p1, v1}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_93
    return v2

    :cond_94
    if-eqz v3, :cond_9a

    .line 64
    invoke-direct {p0, v2, v0}, Lcom/mcport/b173/ControllerInput;->pointerButton(IZ)V

    goto :goto_a3

    :cond_9a
    if-eqz v0, :cond_a3

    const/16 p1, 0x10

    const/16 v0, 0x71

    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_a3
    :goto_a3
    return v2

    :cond_a4
    if-eqz v0, :cond_ad

    const/16 p1, 0x12

    const/16 v0, 0x65

    .line 63
    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_ad
    return v2

    :cond_ae
    if-eqz v3, :cond_b6

    if-eqz v0, :cond_bb

    .line 62
    invoke-static {v2, v1}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_bb

    :cond_b6
    const/16 p1, 0x2a

    invoke-static {p1, v0, v1}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    :cond_bb
    :goto_bb
    return v2

    :cond_bc
    if-eqz v3, :cond_c2

    .line 60
    invoke-direct {p0, v1, v0}, Lcom/mcport/b173/ControllerInput;->pointerButton(IZ)V

    goto :goto_c7

    :cond_c2
    const/16 p1, 0x39

    invoke-static {p1, v0, v1}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    :goto_c7
    return v2

    :pswitch_data_c8
    .packed-switch 0x13
        :pswitch_8c
        :pswitch_80
        :pswitch_78
        :pswitch_70
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x66
        :pswitch_6c
        :pswitch_68
        :pswitch_6c
        :pswitch_68
        :pswitch_67
        :pswitch_67
        :pswitch_62
        :pswitch_5a
    .end packed-switch
.end method

.method onMotion(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 36
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Lcom/mcport/b173/ControllerInput;->dz(F)F

    move-result v0

    iput v0, p0, Lcom/mcport/b173/ControllerInput;->lx:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Lcom/mcport/b173/ControllerInput;->dz(F)F

    move-result v1

    iput v1, p0, Lcom/mcport/b173/ControllerInput;->ly:F

    const/16 v1, 0xb

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Lcom/mcport/b173/ControllerInput;->dz(F)F

    move-result v1

    iput v1, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Lcom/mcport/b173/ControllerInput;->dz(F)F

    move-result v1

    iput v1, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    const/16 v1, 0x11

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/16 v2, 0x17

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/mcport/b173/ControllerInput;->lt:F

    const/16 v1, 0x12

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/mcport/b173/ControllerInput;->rt:F

    const/16 v1, 0xf

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 41
    invoke-direct {p0, v1, p1}, Lcom/mcport/b173/ControllerInput;->hat(FF)V

    .line 42
    iget p1, p0, Lcom/mcport/b173/ControllerInput;->lx:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_94

    iget p1, p0, Lcom/mcport/b173/ControllerInput;->ly:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_94

    iget p1, p0, Lcom/mcport/b173/ControllerInput;->rx:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_94

    iget p1, p0, Lcom/mcport/b173/ControllerInput;->ry:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_94

    iget p1, p0, Lcom/mcport/b173/ControllerInput;->lt:F

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_94

    iget p1, p0, Lcom/mcport/b173/ControllerInput;->rt:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9a

    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mcport/b173/ControllerInput;->lastUse:J

    :cond_9a
    return v0
.end method

.method pointerX()F
    .registers 2

    .line 105
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->px:F

    return v0
.end method

.method pointerY()F
    .registers 2

    .line 105
    iget v0, p0, Lcom/mcport/b173/ControllerInput;->py:F

    return v0
.end method

.method recentlyUsed()Z
    .registers 5

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mcport/b173/ControllerInput;->lastUse:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
