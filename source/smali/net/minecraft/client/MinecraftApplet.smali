###### Class net.minecraft.client.MinecraftApplet (net.minecraft.client.MinecraftApplet)
.class public Lnet/minecraft/client/MinecraftApplet;
.super Lmcshim/applet/Applet;
.source "SourceFile"


# instance fields
.field private a:Lmcshim/awt/Canvas;

.field private b:Lnet/minecraft/client/Minecraft;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lmcshim/applet/Applet;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 75
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    return-void

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    const-string v2, "Minecraft main thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .registers 4

    .line 93
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    if-nez v0, :cond_5

    return-void

    .line 94
    :cond_5
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->f()V

    .line 96
    :try_start_a
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_1c

    .line 99
    :catch_12
    :try_start_12
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->d()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->a:Lmcshim/awt/Canvas;

    .line 109
    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    .line 110
    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->c:Ljava/lang/Thread;

    .line 112
    :try_start_7
    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->removeAll()V

    .line 113
    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->validate()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 89
    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->b()V

    return-void
.end method

.method public init()V
    .registers 10

    .line 15
    new-instance v0, Lr;

    invoke-direct {v0, p0}, Lr;-><init>(Lnet/minecraft/client/MinecraftApplet;)V

    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->a:Lmcshim/awt/Canvas;

    const-string v0, "fullscreen"

    .line 30
    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 31
    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    move v8, v0

    .line 34
    new-instance v0, Lq;

    iget-object v4, p0, Lnet/minecraft/client/MinecraftApplet;->a:Lmcshim/awt/Canvas;

    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->getHeight()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, Lq;-><init>(Lnet/minecraft/client/MinecraftApplet;Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZ)V

    iput-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    .line 44
    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->getDocumentBase()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/minecraft/client/Minecraft;->l:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->getDocumentBase()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    if-lez v0, :cond_67

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v1, Lnet/minecraft/client/Minecraft;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->getDocumentBase()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/minecraft/client/Minecraft;->l:Ljava/lang/String;

    :cond_67
    const-string v0, "username"

    .line 49
    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c2

    const-string v1, "sessionid"

    invoke-virtual {p0, v1}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 50
    iget-object v2, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    new-instance v3, Lgr;

    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lnet/minecraft/client/Minecraft;->k:Lgr;

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v2, v2, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v2, v2, Lgr;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "mppass"

    .line 52
    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cf

    .line 53
    iget-object v1, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->k:Lgr;

    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgr;->d:Ljava/lang/String;

    goto :goto_cf

    .line 56
    :cond_c2
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lgr;

    const-string v2, "Player"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    :cond_cf
    :goto_cf
    const-string v0, "server"

    .line 62
    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f0

    const-string v1, "port"

    invoke-virtual {p0, v1}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f0

    .line 63
    iget-object v2, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;I)V

    .line 67
    :cond_f0
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/minecraft/client/Minecraft;->n:Z

    .line 68
    new-instance v0, Lmcshim/awt/BorderLayout;

    invoke-direct {v0}, Lmcshim/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lnet/minecraft/client/MinecraftApplet;->setLayout(Lmcshim/awt/LayoutManager;)V

    .line 69
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->a:Lmcshim/awt/Canvas;

    const-string v2, "Center"

    invoke-virtual {p0, v0, v2}, Lnet/minecraft/client/MinecraftApplet;->add(Lmcshim/awt/Component;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->a:Lmcshim/awt/Canvas;

    invoke-virtual {v0, v1}, Lmcshim/awt/Canvas;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0}, Lnet/minecraft/client/MinecraftApplet;->validate()V

    return-void
.end method

.method public start()V
    .registers 3

    .line 81
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/minecraft/client/Minecraft;->o:Z

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 3

    .line 85
    iget-object v0, p0, Lnet/minecraft/client/MinecraftApplet;->b:Lnet/minecraft/client/Minecraft;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/minecraft/client/Minecraft;->o:Z

    :cond_7
    return-void
.end method
