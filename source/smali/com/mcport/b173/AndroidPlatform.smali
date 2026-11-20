###### Class com.mcport.b173.AndroidPlatform (com.mcport.b173.AndroidPlatform)
.class final Lcom/mcport/b173/AndroidPlatform;
.super Lmcport/Platform;
.source "AndroidPlatform.java"


# instance fields
.field private final act:Lcom/mcport/b173/GameActivity;

.field volatile bridge:Lmcport/GameBridge;

.field private eglAttached:Z

.field volatile exitRequested:Z

.field private volatile focused:Z

.field private volatile height:I

.field private inBackground:Z

.field private final lock:Ljava/lang/Object;

.field private final pad:Lcom/mcport/b173/ControllerInput;

.field private surface:Landroid/view/Surface;

.field private surfaceDirty:Z

.field private volatile width:I


# direct methods
.method constructor <init>(Lcom/mcport/b173/GameActivity;Lcom/mcport/b173/ControllerInput;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Lmcport/Platform;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/mcport/b173/AndroidPlatform;->width:I

    iput v0, p0, Lcom/mcport/b173/AndroidPlatform;->height:I

    .line 29
    iput-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->focused:Z

    .line 35
    iput-object p1, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    iput-object p2, p0, Lcom/mcport/b173/AndroidPlatform;->pad:Lcom/mcport/b173/ControllerInput;

    return-void
.end method

.method private enterBackground()V
    .registers 3

    .line 95
    iget-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->inBackground:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->inBackground:Z

    .line 96
    invoke-static {}, Lorg/lwjgl/input/Mouse;->releaseAll()V

    invoke-static {}, Lorg/lwjgl/input/Keyboard;->releaseAll()V

    .line 97
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->bridge:Lmcport/GameBridge;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lmcport/GameBridge;->onBackground()V

    .line 98
    :cond_15
    invoke-static {v0}, Lorg/lwjgl/openal/AL;->setPaused(Z)V

    if-eqz v1, :cond_23

    .line 99
    invoke-interface {v1}, Lmcport/GameBridge;->isMultiplayer()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lmcport/NativeDisplay;->attachPbuffer()Z

    :cond_23
    return-void
.end method

.method private leaveBackground()V
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->inBackground:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->inBackground:Z

    invoke-static {v0}, Lorg/lwjgl/openal/AL;->setPaused(Z)V

    return-void
.end method


# virtual methods
.method public drawString([IIILjava/lang/String;III)V
    .registers 17

    .line 126
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, p1

    move v7, p2

    move v8, p3

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move/from16 v4, p7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move v4, p5

    int-to-float v4, v4

    move v5, p6

    int-to-float v5, v5

    move-object v6, p4

    .line 128
    invoke-virtual {v1, p4, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public getClipboard()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    new-instance v3, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;-><init>(Lcom/mcport/b173/AndroidPlatform;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/mcport/b173/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    monitor-enter v1

    const-wide/16 v2, 0x1f4

    :try_start_15
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_20

    :catch_1b
    :goto_1b
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_19

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :goto_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_19

    throw v0
.end method

.method height()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/mcport/b173/AndroidPlatform;->height:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->focused:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->inBackground:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic lambda$getClipboard$0$com-mcport-b173-AndroidPlatform([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/mcport/b173/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 109
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_2b

    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 v1, 0x0

    goto :goto_29

    :cond_25
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_29
    aput-object v1, p1, v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    .line 111
    :catchall_2b
    :cond_2b
    monitor-enter p2

    :try_start_2c
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    aget-object v1, p1, v0

    if-nez v1, :cond_35

    const-string v1, ""

    :cond_35
    aput-object v1, p1, v0

    monitor-exit p2

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public onFrame()V
    .registers 7

    .line 65
    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->pad:Lcom/mcport/b173/ControllerInput;

    invoke-virtual {v0}, Lcom/mcport/b173/ControllerInput;->onFrame()V

    .line 67
    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/mcport/b173/AndroidPlatform;->surfaceDirty:Z

    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mcport/b173/AndroidPlatform;->surfaceDirty:Z

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_85

    const/4 v0, 0x1

    if-eqz v1, :cond_48

    if-nez v2, :cond_2a

    .line 70
    invoke-static {}, Lmcport/NativeDisplay;->releaseSurface()V

    .line 71
    invoke-direct {p0}, Lcom/mcport/b173/AndroidPlatform;->enterBackground()V

    .line 72
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1e
    iput-boolean v3, p0, Lcom/mcport/b173/AndroidPlatform;->eglAttached:Z

    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_48

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v0

    .line 74
    :cond_2a
    iget v1, p0, Lcom/mcport/b173/AndroidPlatform;->width:I

    iget v4, p0, Lcom/mcport/b173/AndroidPlatform;->height:I

    invoke-static {v2, v1, v4}, Lmcport/NativeDisplay;->attachSurface(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "mcport"

    const-string v2, "attachSurface failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3b
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3e
    iput-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->eglAttached:Z

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_45

    .line 76
    invoke-direct {p0}, Lcom/mcport/b173/AndroidPlatform;->leaveBackground()V

    goto :goto_48

    :catchall_45
    move-exception v0

    .line 75
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0

    .line 79
    :cond_48
    :goto_48
    iget-boolean v1, p0, Lcom/mcport/b173/AndroidPlatform;->inBackground:Z

    if-eqz v1, :cond_84

    .line 80
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->bridge:Lmcport/GameBridge;

    if-eqz v1, :cond_5c

    .line 81
    invoke-interface {v1}, Lmcport/GameBridge;->isMultiplayer()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-wide/16 v0, 0x28

    .line 83
    :try_start_58
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_5b

    :catch_5b
    return-void

    .line 87
    :cond_5c
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :catch_5f
    :goto_5f
    :try_start_5f
    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;

    if-nez v2, :cond_6d

    iget-boolean v2, p0, Lcom/mcport/b173/AndroidPlatform;->exitRequested:Z
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_81

    if-nez v2, :cond_6d

    :try_start_67
    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6c} :catch_5f
    .catchall {:try_start_67 .. :try_end_6c} :catchall_81

    goto :goto_5f

    .line 89
    :cond_6d
    :try_start_6d
    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_7c

    iget v4, p0, Lcom/mcport/b173/AndroidPlatform;->width:I

    iget v5, p0, Lcom/mcport/b173/AndroidPlatform;->height:I

    invoke-static {v2, v4, v5}, Lmcport/NativeDisplay;->attachSurface(Ljava/lang/Object;II)Z

    iput-boolean v0, p0, Lcom/mcport/b173/AndroidPlatform;->eglAttached:Z

    iput-boolean v3, p0, Lcom/mcport/b173/AndroidPlatform;->surfaceDirty:Z

    .line 90
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_81

    .line 91
    invoke-direct {p0}, Lcom/mcport/b173/AndroidPlatform;->leaveBackground()V

    goto :goto_84

    :catchall_81
    move-exception v0

    .line 90
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0

    :cond_84
    :goto_84
    return-void

    :catchall_85
    move-exception v1

    .line 67
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public openURL(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_27

    const-string v0, "file:"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "texturepacks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 120
    iget-object p1, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    const-class v2, Lcom/mcport/b173/ResourcePackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcport/b173/GameActivity;->startActivity(Landroid/content/Intent;)V

    :cond_27
    return-void
.end method

.method setFocused(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/mcport/b173/AndroidPlatform;->focused:Z

    return-void
.end method

.method surfaceAvailable(Landroid/view/Surface;II)V
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/mcport/b173/AndroidPlatform;->width:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/mcport/b173/AndroidPlatform;->height:I

    iget-object p2, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;

    if-eq p1, p2, :cond_18

    iput-object p1, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;

    iput-boolean v1, p0, Lcom/mcport/b173/AndroidPlatform;->surfaceDirty:Z

    :cond_18
    iget-object p1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method surfaceDestroyed()V
    .registers 8

    .line 43
    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 44
    :try_start_4
    iput-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcport/b173/AndroidPlatform;->surfaceDirty:Z

    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xfa0

    add-long/2addr v1, v3

    .line 46
    :goto_15
    iget-boolean v3, p0, Lcom/mcport/b173/AndroidPlatform;->eglAttached:Z

    if-eqz v3, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2e

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_26

    goto :goto_2c

    :cond_26
    :try_start_26
    iget-object v5, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2e

    goto :goto_15

    .line 47
    :catch_2c
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public surfaceHeight()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/mcport/b173/AndroidPlatform;->height:I

    return v0
.end method

.method public surfaceWidth()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/mcport/b173/AndroidPlatform;->width:I

    return v0
.end method

.method public swapInterval()I
    .registers 3

    .line 61
    new-instance v0, Lcom/mcport/b173/Prefs;

    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->act:Lcom/mcport/b173/GameActivity;

    invoke-direct {v0, v1}, Lcom/mcport/b173/Prefs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->vsync()Z

    move-result v0

    return v0
.end method

.method public waitForSurface()Ljava/lang/Object;
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :catch_3
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->surface:Landroid/view/Surface;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-nez v1, :cond_d

    :try_start_7
    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_3
    .catchall {:try_start_7 .. :try_end_c} :catchall_15

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    .line 56
    :try_start_e
    iput-boolean v2, p0, Lcom/mcport/b173/AndroidPlatform;->surfaceDirty:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcport/b173/AndroidPlatform;->eglAttached:Z

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method wakeForExit()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/mcport/b173/AndroidPlatform;->exitRequested:Z

    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method width()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/mcport/b173/AndroidPlatform;->width:I

    return v0
.end method

###### Class com.mcport.b173.AndroidPlatform$$ExternalSyntheticLambda0 (com.mcport.b173.AndroidPlatform$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/AndroidPlatform;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/AndroidPlatform;[Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/AndroidPlatform;

    iput-object p2, p0, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/AndroidPlatform;

    iget-object v1, p0, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mcport/b173/AndroidPlatform$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mcport/b173/AndroidPlatform;->lambda$getClipboard$0$com-mcport-b173-AndroidPlatform([Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
