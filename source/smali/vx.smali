###### Class defpackage.vx (vx)
.class public Lvx;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Lnb;

.field private i:Z


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V
    .registers 7

    .line 17
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lvx;->i:Z

    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 20
    new-instance v0, Lwz;

    invoke-direct {v0, p0, p1, p2, p3}, Lwz;-><init>(Lvx;Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lwz;->start()V

    return-void
.end method

.method static synthetic a(Lvx;Lnb;)Lnb;
    .registers 2

    .line 13
    iput-object p1, p0, Lvx;->a:Lnb;

    return-object p1
.end method

.method static synthetic a(Lvx;)Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lvx;->i:Z

    return p0
.end method

.method static synthetic b(Lvx;)Lnb;
    .registers 1

    .line 13
    iget-object p0, p0, Lvx;->a:Lnb;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 43
    iget-object v0, p0, Lvx;->a:Lnb;

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {v0}, Lnb;->a()V

    :cond_7
    return-void
.end method

.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 10

    .line 68
    invoke-virtual {p0}, Lvx;->i()V

    .line 70
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lvx;->a:Lnb;

    if-nez v1, :cond_37

    .line 73
    iget-object v1, p0, Lvx;->g:Lsj;

    const-string v2, "connect.connecting"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lvx;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lvx;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x32

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvx;->a(Lsj;Ljava/lang/String;III)V

    .line 74
    iget-object v1, p0, Lvx;->g:Lsj;

    const-string v2, ""

    iget v0, p0, Lvx;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lvx;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0xa

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvx;->a(Lsj;Ljava/lang/String;III)V

    goto :goto_64

    .line 76
    :cond_37
    iget-object v1, p0, Lvx;->g:Lsj;

    const-string v2, "connect.authorizing"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lvx;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lvx;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x32

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvx;->a(Lsj;Ljava/lang/String;III)V

    .line 77
    iget-object v1, p0, Lvx;->g:Lsj;

    iget-object v0, p0, Lvx;->a:Lnb;

    iget-object v2, v0, Lnb;->a:Ljava/lang/String;

    iget v0, p0, Lvx;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lvx;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0xa

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvx;->a(Lsj;Ljava/lang/String;III)V

    .line 80
    :goto_64
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 3

    .line 60
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_18

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lvx;->i:Z

    .line 62
    iget-object p1, p0, Lvx;->a:Lnb;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lnb;->b()V

    .line 63
    :cond_e
    iget-object p1, p0, Lvx;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Lfu;

    invoke-direct {v0}, Lfu;-><init>()V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_18
    return-void
.end method

.method public b()V
    .registers 7

    .line 53
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lvx;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    iget-object v1, p0, Lvx;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lvx;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Lvx;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x78

    add-int/lit8 v4, v4, 0xc

    const-string v5, "gui.cancel"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4, v0}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
