###### Class defpackage.x (x)
.class public Lx;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lx;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 13
    iget v0, p0, Lx;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx;->a:I

    return-void
.end method

.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 16

    .line 26
    invoke-virtual {p0}, Lx;->i()V

    .line 28
    iget-object v1, p0, Lx;->g:Lsj;

    const-string v2, "Out of memory!"

    iget v0, p0, Lx;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v4, v0, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lx;->a(Lsj;Ljava/lang/String;III)V

    .line 29
    iget-object v7, p0, Lx;->g:Lsj;

    const-string v8, "Minecraft has run out of memory."

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v9, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v10, v0, 0x0

    const v11, 0xa0a0a0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 30
    iget-object v1, p0, Lx;->g:Lsj;

    const-string v2, "This could be caused by a bug in the game or by the"

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x12

    const v5, 0xa0a0a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 31
    iget-object v7, p0, Lx;->g:Lsj;

    const-string v8, "Java Virtual Machine not being allocated enough"

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v9, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v10, v0, 0x1b

    invoke-virtual/range {v6 .. v11}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 32
    iget-object v1, p0, Lx;->g:Lsj;

    const-string v2, "memory. If you are playing in a web browser, try"

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x24

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 33
    iget-object v7, p0, Lx;->g:Lsj;

    const-string v8, "downloading the game and playing it offline."

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v9, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v10, v0, 0x2d

    invoke-virtual/range {v6 .. v11}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 34
    iget-object v1, p0, Lx;->g:Lsj;

    const-string v2, "To prevent level corruption, the current game has quit."

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x3f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 35
    iget-object v7, p0, Lx;->g:Lsj;

    const-string v8, "Please restart the game."

    iget v0, p0, Lx;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v9, v0, -0x8c

    iget v0, p0, Lx;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v10, v0, 0x51

    invoke-virtual/range {v6 .. v11}, Lx;->b(Lsj;Ljava/lang/String;III)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
