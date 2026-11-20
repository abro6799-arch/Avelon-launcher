###### Class defpackage.gh (gh)
.class public Lgh;
.super Lgc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lgc;-><init>()V

    return-void
.end method

.method private k()V
    .registers 5

    .line 59
    iget-object v0, p0, Lgh;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    instance-of v0, v0, Ltk;

    if-eqz v0, :cond_1d

    .line 60
    iget-object v0, p0, Lgh;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    check-cast v0, Ltk;

    iget-object v0, v0, Ltk;->bN:Lnb;

    .line 61
    new-instance v1, Lts;

    iget-object v2, p0, Lgh;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lts;-><init>(Lsn;I)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method protected a(CI)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 34
    invoke-direct {p0}, Lgh;->k()V

    goto :goto_2c

    :cond_7
    const/16 v0, 0x1c

    if-ne p2, v0, :cond_29

    .line 36
    iget-object p1, p0, Lgh;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_24

    .line 38
    iget-object p1, p0, Lgh;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object p2, p0, Lgh;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ldc;->a(Ljava/lang/String;)V

    :cond_24
    const-string p1, ""

    .line 40
    iput-object p1, p0, Lgh;->a:Ljava/lang/String;

    goto :goto_2c

    .line 42
    :cond_29
    invoke-super {p0, p1, p2}, Lgc;->a(CI)V

    :goto_2c
    return-void
.end method

.method public a(IIF)V
    .registers 4

    .line 47
    invoke-super {p0, p1, p2, p3}, Lgc;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 4

    .line 51
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 52
    invoke-direct {p0}, Lgh;->k()V

    goto :goto_c

    .line 54
    :cond_9
    invoke-super {p0, p1}, Lgc;->a(Lke;)V

    :goto_c
    return-void
.end method

.method public b()V
    .registers 8

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    .line 23
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lgh;->e:Ljava/util/List;

    new-instance v3, Lke;

    iget v4, p0, Lgh;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x64

    iget v5, p0, Lgh;->d:I

    add-int/lit8 v5, v5, -0x28

    const-string v6, "multiplayer.stopSleeping"

    invoke-virtual {v1, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v5, v1}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    return-void
.end method
