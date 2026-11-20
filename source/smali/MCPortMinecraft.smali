###### Class defpackage.MCPortMinecraft (MCPortMinecraft)
.class public final LMCPortMinecraft;
.super Lnet/minecraft/client/Minecraft;
.source "MCPortMinecraft.java"

# interfaces
.implements Lmcport/GameBridge;


# static fields
.field public static volatile instance:LMCPortMinecraft;

.field public static volatile lastCrash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmcshim/awt/Canvas;II)V
    .registers 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 9
    invoke-direct/range {v0 .. v6}, Lnet/minecraft/client/Minecraft;-><init>(Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZ)V

    return-void
.end method

.method public static launch(Ljava/lang/String;Ljava/lang/String;I)LMCPortMinecraft;
    .registers 11

    .line 26
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    .line 27
    new-instance v7, LMCPortMinecraft;

    new-instance v1, Lmcshim/awt/Canvas;

    invoke-direct {v1}, Lmcshim/awt/Canvas;-><init>()V

    invoke-virtual {v0}, Lmcport/Platform;->surfaceWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Lmcport/Platform;->surfaceHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v7, v1, v2, v0}, LMCPortMinecraft;-><init>(Lmcshim/awt/Canvas;II)V

    .line 28
    new-instance v0, Lgr;

    const-string v1, "-"

    invoke-direct {v0, p0, v1}, Lgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, LMCPortMinecraft;->k:Lgr;

    const/4 p0, 0x0

    .line 29
    iput-boolean p0, v7, LMCPortMinecraft;->n:Z

    if-eqz p1, :cond_36

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_36

    invoke-virtual {v7, p1, p2}, LMCPortMinecraft;->a(Ljava/lang/String;I)V

    .line 31
    :cond_36
    sput-object v7, LMCPortMinecraft;->instance:LMCPortMinecraft;

    .line 32
    new-instance p0, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v4, "Minecraft main thread"

    const-wide/32 v5, 0x4000000

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    const/16 p1, 0xa

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v7
.end method


# virtual methods
.method public a(Lmh;)V
    .registers 7

    .line 13
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "Minecraft has crashed!"

    .line 14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "----------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Minecraft has stopped running because it encountered a problem."

    .line 15
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "--- BEGIN ERROR REPORT ---"

    .line 16
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Minecraft: Minecraft Beta 1.7.3 (Android port)"

    .line 17
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OS: Android/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "os.arch"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "os.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Java: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "java.vm.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.vm.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 20
    iget-object v2, p1, Lmh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p1, Lmh;->b:Ljava/lang/Throwable;

    if-eqz v2, :cond_9b

    iget-object p1, p1, Lmh;->b:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_9b
    const-string p1, "--- END ERROR REPORT ---"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 21
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, LMCPortMinecraft;->lastCrash:Ljava/lang/String;

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v0, LMCPortMinecraft;->lastCrash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    sget-object p1, Lmcport/PortConfig;->crashSink:Lmcport/PortConfig$CrashSink;

    if-eqz p1, :cond_b9

    sget-object v0, LMCPortMinecraft;->lastCrash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lmcport/PortConfig$CrashSink;->onCrash(Ljava/lang/String;)V

    :cond_b9
    return-void
.end method

.method public hotbarRect()[I
    .registers 6

    .line 53
    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    if-eqz v0, :cond_2d

    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    if-nez v0, :cond_2d

    iget-object v0, p0, LMCPortMinecraft;->z:Lkv;

    if-nez v0, :cond_d

    goto :goto_2d

    .line 54
    :cond_d
    new-instance v0, Lqq;

    iget-object v1, p0, LMCPortMinecraft;->z:Lkv;

    iget v2, p0, LMCPortMinecraft;->d:I

    iget v3, p0, LMCPortMinecraft;->e:I

    invoke-direct {v0, v1, v2, v3}, Lqq;-><init>(Lkv;II)V

    .line 55
    iget v1, v0, Lqq;->c:I

    .line 56
    invoke-virtual {v0}, Lqq;->a()I

    move-result v0

    .line 58
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x5b

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v1, 0x14

    mul-int/lit8 v3, v1, 0x16

    const/4 v4, 0x0

    filled-new-array {v0, v4, v2, v3, v1}, [I

    move-result-object v0

    return-object v0

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public isContainerScreen()Z
    .registers 2

    .line 46
    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    instance-of v0, v0, Lid;

    return v0
.end method

.method public isInGameplay()Z
    .registers 2

    .line 45
    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    if-eqz v0, :cond_a

    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isMultiplayer()Z
    .registers 2

    .line 48
    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    if-eqz v0, :cond_c

    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isRiding()Z
    .registers 2

    .line 47
    iget-object v0, p0, LMCPortMinecraft;->h:Ldc;

    if-eqz v0, :cond_c

    iget-object v0, p0, LMCPortMinecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->aH:Lsn;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isScreenOpen()Z
    .registers 2

    .line 49
    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTitleScreen()Z
    .registers 2

    .line 50
    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    if-nez v0, :cond_c

    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    instance-of v0, v0, Lfu;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onBackground()V
    .registers 4

    .line 41
    :try_start_0
    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    if-eqz v0, :cond_b

    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    if-nez v0, :cond_b

    invoke-virtual {p0}, LMCPortMinecraft;->j()V

    .line 42
    :cond_b
    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    if-eqz v0, :cond_21

    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_21

    iget-object v0, p0, LMCPortMinecraft;->f:Lfd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfd;->a(ZLyb;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_21
    :goto_21
    return-void
.end method

.method public screenWantsText()Z
    .registers 3

    .line 51
    iget-object v0, p0, LMCPortMinecraft;->r:Lda;

    instance-of v1, v0, Lgc;

    if-nez v1, :cond_19

    instance-of v1, v0, Lyc;

    if-nez v1, :cond_19

    instance-of v1, v0, Lfj;

    if-nez v1, :cond_19

    instance-of v1, v0, Llq;

    if-nez v1, :cond_19

    instance-of v0, v0, Ljk;

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method
