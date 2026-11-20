###### Class com.mcport.b173.GameActivity (com.mcport.b173.GameActivity)
.class public Lcom/mcport/b173/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/mcport/b173/TouchOverlay$Host;


# instance fields
.field private volatile bridge:Lmcport/GameBridge;

.field private overlay:Lcom/mcport/b173/TouchOverlay;

.field private pad:Lcom/mcport/b173/ControllerInput;

.field private platform:Lcom/mcport/b173/AndroidPlatform;

.field private prefs:Lcom/mcport/b173/Prefs;

.field private started:Z

.field private surfH:I

.field private surfW:I

.field private surface:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic $r8$lambda$tyLHKGJaqHmVxM7B5ZtaiiRnjEc(Lcom/mcport/b173/GameActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mcport/b173/GameActivity;->finishAndRemoveTaskCompat()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/mcport/b173/GameActivity;->surfW:I

    iput v0, p0, Lcom/mcport/b173/GameActivity;->surfH:I

    return-void
.end method

.method private applyRenderScale(Landroid/view/SurfaceHolder;)Z
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->renderScale()F

    move-result v0

    iget-object v1, p0, Lcom/mcport/b173/GameActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mcport/b173/GameActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_51

    if-nez v2, :cond_18

    goto :goto_51

    :cond_18
    const v4, 0x3f7d70a4    # 0.99f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_23

    .line 106
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    return v3

    :cond_23
    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 107
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v4, 0x140

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v2, 0xf0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v1, :cond_4c

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v2, v0, :cond_4c

    return v3

    .line 109
    :cond_4c
    invoke-interface {p1, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    const/4 p1, 0x0

    return p1

    :cond_51
    :goto_51
    return v3
.end method

.method private finishAndRemoveTaskCompat()V
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->finish()V

    return-void
.end method

.method private immersive()V
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private showCrash(Ljava/lang/String;)V
    .registers 6

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Minecraft has crashed"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mcport/b173/GameActivity;)V

    const-string v2, "Close"

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    :try_start_40
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->dataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "crash-report.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_56} :catch_56

    :catch_56
    return-void
.end method

.method private startGame()V
    .registers 6

    .line 56
    iget-boolean v0, p0, Lcom/mcport/b173/GameActivity;->started:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcport/b173/GameActivity;->started:Z

    .line 57
    invoke-static {p0}, Lcom/mcport/b173/Prefs;->dataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 58
    sput-object v0, Lmcport/PortConfig;->dataDir:Ljava/io/File;

    .line 59
    iget-object v1, p0, Lcom/mcport/b173/GameActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v1}, Lcom/mcport/b173/Prefs;->username()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmcport/PortConfig;->username:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/mcport/b173/GameActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v1}, Lcom/mcport/b173/Prefs;->skin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x0

    goto :goto_2e

    :cond_24
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->skinsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    :goto_2e
    sput-object v1, Lmcport/PortConfig;->localSkin:Ljava/io/File;

    .line 61
    new-instance v1, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mcport/b173/GameActivity;)V

    sput-object v1, Lmcport/PortConfig;->exitHandler:Ljava/lang/Runnable;

    .line 62
    new-instance v1, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mcport/b173/GameActivity;)V

    sput-object v1, Lmcport/PortConfig;->crashSink:Lmcport/PortConfig$CrashSink;

    .line 63
    iget-object v1, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    invoke-static {v1}, Lmcport/Platform;->set(Lmcport/Platform;)V

    .line 64
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "port"

    const/16 v4, 0x63dd

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mcport/b173/GameActivity;Ljava/io/File;Ljava/lang/String;I)V

    const-string v0, "mcport-start"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public bridge()Lmcport/GameBridge;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->bridge:Lmcport/GameBridge;

    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->pad:Lcom/mcport/b173/ControllerInput;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/ControllerInput;->onMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/mcport/b173/GameActivity;->overlay:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {p1}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_f
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->pad:Lcom/mcport/b173/ControllerInput;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/ControllerInput;->onKey(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 126
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1c

    .line 127
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1b

    invoke-static {v1, v3}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    :cond_1b
    return v1

    :cond_1c
    const/16 v2, 0x18

    if-eq v0, v2, :cond_81

    const/16 v2, 0x19

    if-eq v0, v2, :cond_81

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_29

    goto :goto_81

    .line 129
    :cond_29
    invoke-static {v0}, Lcom/mcport/b173/KeyMap;->toLwjgl(I)I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    :goto_43
    if-ge v3, v0, :cond_4d

    aget-char v2, p1, v3

    invoke-static {v2}, Lcom/mcport/b173/TouchOverlay;->typeChar(C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_4d
    return v1

    :cond_4e
    if-nez v0, :cond_5b

    .line 131
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    if-nez v2, :cond_5b

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 132
    :cond_5b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_63

    move v2, v1

    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    const/16 v4, 0x1c

    if-ne v0, v4, :cond_72

    const/16 p1, 0xd

    :cond_72
    const/16 v4, 0xe

    if-ne v0, v4, :cond_78

    const/16 p1, 0x8

    :cond_78
    if-eqz v2, :cond_7d

    if-lez p1, :cond_7d

    int-to-char v3, p1

    .line 134
    :cond_7d
    invoke-static {v0, v2, v3}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    return v1

    .line 128
    :cond_81
    :goto_81
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$showCrash$4$com-mcport-b173-GameActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->finish()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method synthetic lambda$startGame$0$com-mcport-b173-GameActivity()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    invoke-virtual {v0}, Lcom/mcport/b173/AndroidPlatform;->wakeForExit()V

    new-instance v0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mcport/b173/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/mcport/b173/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$startGame$1$com-mcport-b173-GameActivity(Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/mcport/b173/GameActivity;->showCrash(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startGame$2$com-mcport-b173-GameActivity(Ljava/lang/String;)V
    .registers 3

    .line 62
    new-instance v0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mcport/b173/GameActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mcport/b173/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$startGame$3$com-mcport-b173-GameActivity(Ljava/io/File;Ljava/lang/String;I)V
    .registers 7

    .line 67
    :try_start_0
    invoke-static {p0, p1}, Lcom/mcport/b173/AssetInstaller;->ensureInstalled(Landroid/content/Context;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "mcport"

    const-string v2, "asset install"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_c
    invoke-static {p1}, Lcom/mcport/b173/FirstRun;->ensureOptions(Ljava/io/File;)V

    .line 69
    invoke-static {p2, p3}, Lmcport/PortConfig;->launch(Ljava/lang/String;I)Lmcport/GameBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/mcport/b173/GameActivity;->bridge:Lmcport/GameBridge;

    .line 70
    iget-object p1, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    iget-object p2, p0, Lcom/mcport/b173/GameActivity;->bridge:Lmcport/GameBridge;

    iput-object p2, p1, Lcom/mcport/b173/AndroidPlatform;->bridge:Lmcport/GameBridge;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Lcom/mcport/b173/Prefs;

    invoke-direct {p1, p0}, Lcom/mcport/b173/Prefs;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity;->prefs:Lcom/mcport/b173/Prefs;

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/mcport/b173/GameActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x480

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_30

    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 40
    :cond_30
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcport/b173/GameActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    new-instance v0, Lcom/mcport/b173/ControllerInput;

    invoke-direct {v0, p0}, Lcom/mcport/b173/ControllerInput;-><init>(Lcom/mcport/b173/GameActivity;)V

    iput-object v0, p0, Lcom/mcport/b173/GameActivity;->pad:Lcom/mcport/b173/ControllerInput;

    .line 43
    new-instance v0, Lcom/mcport/b173/TouchOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/mcport/b173/TouchOverlay;-><init>(Landroid/content/Context;Lcom/mcport/b173/TouchOverlay$Host;Z)V

    iput-object v0, p0, Lcom/mcport/b173/GameActivity;->overlay:Lcom/mcport/b173/TouchOverlay;

    .line 44
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->surface:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->overlay:Lcom/mcport/b173/TouchOverlay;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/mcport/b173/GameActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mcport/b173/GameActivity;->immersive()V

    .line 46
    new-instance p1, Lcom/mcport/b173/AndroidPlatform;

    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->pad:Lcom/mcport/b173/ControllerInput;

    invoke-direct {p1, p0, v0}, Lcom/mcport/b173/AndroidPlatform;-><init>(Lcom/mcport/b173/GameActivity;Lcom/mcport/b173/ControllerInput;)V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->overlay:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {v0}, Lcom/mcport/b173/TouchOverlay;->stop()V

    .line 117
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_12
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "The game is already running. Use Profile on the title screen to change username, skin or server."

    const/4 v0, 0x1

    .line 85
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->overlay:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {v0}, Lcom/mcport/b173/TouchOverlay;->releaseGameplay()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/mcport/b173/GameActivity;->immersive()V

    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->overlay:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {v0}, Lcom/mcport/b173/TouchOverlay;->reloadPrefs()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/mcport/b173/GameActivity;->immersive()V

    :cond_8
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/mcport/b173/AndroidPlatform;->setFocused(Z)V

    :cond_f
    return-void
.end method

.method public openProfile()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->bridge:Lmcport/GameBridge;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lmcport/GameBridge;->isTitleScreen()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1e

    .line 79
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcport/b173/LauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.mcport.b173.PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcport/b173/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/mcport/b173/GameActivity;->finish()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public padActive()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->pad:Lcom/mcport/b173/ControllerInput;

    invoke-virtual {v0}, Lcom/mcport/b173/ControllerInput;->recentlyUsed()Z

    move-result v0

    return v0
.end method

.method public prefs()Lcom/mcport/b173/Prefs;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/mcport/b173/GameActivity;->prefs:Lcom/mcport/b173/Prefs;

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 99
    invoke-direct {p0, p1}, Lcom/mcport/b173/GameActivity;->applyRenderScale(Landroid/view/SurfaceHolder;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 100
    :cond_7
    iput p3, p0, Lcom/mcport/b173/GameActivity;->surfW:I

    iput p4, p0, Lcom/mcport/b173/GameActivity;->surfH:I

    iget-object p2, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4}, Lcom/mcport/b173/AndroidPlatform;->surfaceAvailable(Landroid/view/Surface;II)V

    invoke-direct {p0}, Lcom/mcport/b173/GameActivity;->startGame()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lcom/mcport/b173/GameActivity;->applyRenderScale(Landroid/view/SurfaceHolder;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 102
    iget-object p1, p0, Lcom/mcport/b173/GameActivity;->platform:Lcom/mcport/b173/AndroidPlatform;

    invoke-virtual {p1}, Lcom/mcport/b173/AndroidPlatform;->surfaceDestroyed()V

    return-void
.end method

.method public surfaceH()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/mcport/b173/GameActivity;->surfH:I

    return v0
.end method

.method public surfaceW()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/mcport/b173/GameActivity;->surfW:I

    return v0
.end method

###### Class com.mcport.b173.GameActivity$$ExternalSyntheticLambda0 (com.mcport.b173.GameActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/GameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/GameActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/GameActivity;

    invoke-static {v0}, Lcom/mcport/b173/GameActivity;->$r8$lambda$tyLHKGJaqHmVxM7B5ZtaiiRnjEc(Lcom/mcport/b173/GameActivity;)V

    return-void
.end method

###### Class com.mcport.b173.GameActivity$$ExternalSyntheticLambda1 (com.mcport.b173.GameActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/GameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/GameActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0}, Lcom/mcport/b173/GameActivity;->lambda$startGame$0$com-mcport-b173-GameActivity()V

    return-void
.end method

###### Class com.mcport.b173.GameActivity$$ExternalSyntheticLambda2 (com.mcport.b173.GameActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lmcport/PortConfig$CrashSink;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/GameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/GameActivity;

    return-void
.end method


# virtual methods
.method public final onCrash(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/GameActivity;->lambda$startGame$2$com-mcport-b173-GameActivity(Ljava/lang/String;)V

    return-void
.end method

###### Class com.mcport.b173.GameActivity$$ExternalSyntheticLambda3 (com.mcport.b173.GameActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/GameActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/GameActivity;Ljava/io/File;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/GameActivity;

    iput-object p2, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/GameActivity;

    iget-object v1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda3;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcport/b173/GameActivity;->lambda$startGame$3$com-mcport-b173-GameActivity(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

###### Class com.mcport.b173.GameActivity$$ExternalSyntheticLambda4 (com.mcport.b173.GameActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/GameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda4;->f$0:Lcom/mcport/b173/GameActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda4;->f$0:Lcom/mcport/b173/GameActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mcport/b173/GameActivity;->lambda$showCrash$4$com-mcport-b173-GameActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.mcport.b173.GameActivity$$ExternalSyntheticLambda5 (com.mcport.b173.GameActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/GameActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/GameActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;->f$0:Lcom/mcport/b173/GameActivity;

    iput-object p2, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;->f$0:Lcom/mcport/b173/GameActivity;

    iget-object v1, p0, Lcom/mcport/b173/GameActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcport/b173/GameActivity;->lambda$startGame$1$com-mcport-b173-GameActivity(Ljava/lang/String;)V

    return-void
.end method
