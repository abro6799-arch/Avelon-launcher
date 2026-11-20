###### Class defpackage.jk (jk)
.class public Ljk;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Lda;

.field private i:Lro;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lda;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lda;-><init>()V

    .line 16
    iput-object p1, p0, Ljk;->a:Lda;

    .line 17
    iput-object p2, p0, Ljk;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 21
    iget-object v0, p0, Ljk;->i:Lro;

    invoke-virtual {v0}, Lro;->b()V

    return-void
.end method

.method protected a(CI)V
    .registers 5

    .line 60
    iget-object v0, p0, Ljk;->i:Lro;

    invoke-virtual {v0, p1, p2}, Lro;->a(CI)V

    .line 61
    iget-object p2, p0, Ljk;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lke;

    iget-object v1, p0, Ljk;->i:Lro;

    invoke-virtual {v1}, Lro;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    move v1, v0

    :goto_21
    iput-boolean v1, p2, Lke;->g:Z

    const/16 p2, 0xd

    if-ne p1, p2, :cond_32

    .line 64
    iget-object p1, p0, Ljk;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke;

    invoke-virtual {p0, p1}, Ljk;->a(Lke;)V

    :cond_32
    return-void
.end method

.method public a(IIF)V
    .registers 11

    .line 77
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v6

    .line 80
    invoke-virtual {p0}, Ljk;->i()V

    .line 82
    iget-object v1, p0, Ljk;->g:Lsj;

    const-string v0, "selectWorld.renameTitle"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Ljk;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Ljk;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v4, v0, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljk;->a(Lsj;Ljava/lang/String;III)V

    .line 83
    iget-object v1, p0, Ljk;->g:Lsj;

    const-string v0, "selectWorld.enterName"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Ljk;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x64

    const/16 v4, 0x2f

    const v5, 0xa0a0a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljk;->b(Lsj;Ljava/lang/String;III)V

    .line 85
    iget-object v0, p0, Ljk;->i:Lro;

    invoke-virtual {v0}, Lro;->c()V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(III)V
    .registers 5

    .line 70
    invoke-super {p0, p1, p2, p3}, Lda;->a(III)V

    .line 72
    iget-object v0, p0, Ljk;->i:Lro;

    invoke-virtual {v0, p1, p2, p3}, Lro;->a(III)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 4

    .line 47
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 48
    :cond_5
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 49
    iget-object p1, p0, Ljk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Ljk;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_32

    .line 50
    :cond_12
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_32

    .line 52
    iget-object p1, p0, Ljk;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1}, Lnet/minecraft/client/Minecraft;->c()Lnl;

    move-result-object p1

    .line 53
    iget-object v0, p0, Ljk;->j:Ljava/lang/String;

    iget-object v1, p0, Ljk;->i:Lro;

    invoke-virtual {v1}, Lro;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Ljk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Ljk;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public b()V
    .registers 11

    .line 26
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const/4 v1, 0x1

    .line 28
    invoke-static {v1}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    .line 29
    iget-object v2, p0, Ljk;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 30
    iget-object v2, p0, Ljk;->e:Ljava/util/List;

    new-instance v3, Lke;

    iget v4, p0, Ljk;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x64

    iget v5, p0, Ljk;->d:I

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x60

    add-int/lit8 v5, v5, 0xc

    const-string v6, "selectWorld.renameButton"

    invoke-virtual {v0, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v4, v5, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v2, p0, Ljk;->e:Ljava/util/List;

    new-instance v3, Lke;

    iget v4, p0, Ljk;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x64

    iget v5, p0, Ljk;->d:I

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x78

    add-int/lit8 v5, v5, 0xc

    const-string v6, "gui.cancel"

    invoke-virtual {v0, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v4, v5, v0}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Ljk;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->c()Lnl;

    move-result-object v0

    .line 34
    iget-object v2, p0, Ljk;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lnl;->b(Ljava/lang/String;)Lei;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lei;->j()Ljava/lang/String;

    move-result-object v9

    .line 37
    new-instance v0, Lro;

    iget-object v4, p0, Ljk;->g:Lsj;

    iget v2, p0, Ljk;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v2, -0x64

    const/16 v6, 0x3c

    const/16 v7, 0xc8

    const/16 v8, 0x14

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lro;-><init>(Lda;Lsj;IIIILjava/lang/String;)V

    iput-object v0, p0, Ljk;->i:Lro;

    .line 38
    iput-boolean v1, v0, Lro;->a:Z

    .line 39
    iget-object v0, p0, Ljk;->i:Lro;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lro;->a(I)V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    return-void
.end method
