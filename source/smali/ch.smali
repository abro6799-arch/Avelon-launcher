###### Class defpackage.ch (ch)
.class public Lch;
.super Lda;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lda;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    iget v3, p0, Lch;->c:I

    iget v4, p0, Lch;->d:I

    const/high16 v5, 0x60500000

    const v6, -0x5f7fcfd0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lch;->a(IIIIII)V

    .line 38
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 39
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 40
    iget-object v1, p0, Lch;->g:Lsj;

    const-string v2, "Game over!"

    iget v0, p0, Lch;->c:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x1e

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch;->a(Lsj;Ljava/lang/String;III)V

    .line 41
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 42
    iget-object v1, p0, Lch;->g:Lsj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Score: &e"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v2}, Ldc;->C()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lch;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x64

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch;->a(Lsj;Ljava/lang/String;III)V

    .line 44
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 5

    .line 21
    iget v0, p1, Lke;->f:I

    .line 24
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    .line 25
    iget-object v0, p0, Lch;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->p_()V

    .line 26
    iget-object v0, p0, Lch;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, v2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 29
    :cond_14
    iget p1, p1, Lke;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_28

    .line 30
    iget-object p1, p0, Lch;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, v2}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 31
    iget-object p1, p0, Lch;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Lfu;

    invoke-direct {v0}, Lfu;-><init>()V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_28
    return-void
.end method

.method public b()V
    .registers 8

    .line 8
    iget-object v0, p0, Lch;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lch;->e:Ljava/util/List;

    new-instance v1, Lke;

    iget v2, p0, Lch;->c:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x64

    iget v4, p0, Lch;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x48

    const-string v5, "Respawn"

    const/4 v6, 0x1

    invoke-direct {v1, v6, v2, v4, v5}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lch;->e:Ljava/util/List;

    new-instance v1, Lke;

    iget v2, p0, Lch;->c:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x64

    iget v4, p0, Lch;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x60

    const-string v5, "Title menu"

    invoke-direct {v1, v3, v2, v4, v5}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lch;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    if-nez v0, :cond_46

    .line 13
    iget-object v0, p0, Lch;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lke;->g:Z

    :cond_46
    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
