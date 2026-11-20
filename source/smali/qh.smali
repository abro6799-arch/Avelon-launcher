###### Class defpackage.qh (qh)
.class public Lqh;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lqh;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 12
    iget v0, p0, Lqh;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqh;->a:I

    return-void
.end method

.method public a(IIF)V
    .registers 16

    .line 29
    invoke-virtual {p0}, Lqh;->i()V

    .line 31
    iget-object v1, p0, Lqh;->g:Lsj;

    const-string v2, "Level save conflict"

    iget v0, p0, Lqh;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lqh;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v4, v0, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lqh;->a(Lsj;Ljava/lang/String;III)V

    .line 32
    iget-object v7, p0, Lqh;->g:Lsj;

    const-string v8, "Minecraft detected a conflict in the level save data."

    iget v0, p0, Lqh;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v9, v0, -0x8c

    iget v0, p0, Lqh;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v10, v0, 0x0

    const v11, 0xa0a0a0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lqh;->b(Lsj;Ljava/lang/String;III)V

    .line 33
    iget-object v1, p0, Lqh;->g:Lsj;

    const-string v2, "This could be caused by two copies of the game"

    iget v0, p0, Lqh;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Lqh;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x12

    const v5, 0xa0a0a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lqh;->b(Lsj;Ljava/lang/String;III)V

    .line 34
    iget-object v7, p0, Lqh;->g:Lsj;

    const-string v8, "accessing the same level."

    iget v0, p0, Lqh;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v9, v0, -0x8c

    iget v0, p0, Lqh;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v10, v0, 0x1b

    invoke-virtual/range {v6 .. v11}, Lqh;->b(Lsj;Ljava/lang/String;III)V

    .line 35
    iget-object v1, p0, Lqh;->g:Lsj;

    const-string v2, "To prevent level corruption, the current game has quit."

    iget v0, p0, Lqh;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Lqh;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x2d

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lqh;->b(Lsj;Ljava/lang/String;III)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 3

    .line 21
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 22
    :cond_5
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_13

    .line 23
    iget-object p1, p0, Lqh;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Lfu;

    invoke-direct {v0}, Lfu;-><init>()V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_13
    return-void
.end method

.method public b()V
    .registers 7

    .line 16
    iget-object v0, p0, Lqh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lqh;->e:Ljava/util/List;

    new-instance v1, Lke;

    iget v2, p0, Lqh;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x64

    iget v3, p0, Lqh;->d:I

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x78

    add-int/lit8 v3, v3, 0xc

    const-string v4, "Back to title screen"

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
