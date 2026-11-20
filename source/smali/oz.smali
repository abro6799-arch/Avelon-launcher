###### Class defpackage.oz (oz)
.class public Loz;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Loz;->a:I

    .line 13
    iput v0, p0, Loz;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 65
    invoke-super {p0}, Lda;->a()V

    .line 66
    iget v0, p0, Loz;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loz;->i:I

    return-void
.end method

.method public a(IIF)V
    .registers 11

    .line 70
    invoke-virtual {p0}, Loz;->i()V

    .line 72
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v1, p0, Loz;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Loz;->a:I

    invoke-virtual {v0, v1}, Lfd;->a(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1b

    .line 73
    iget v0, p0, Loz;->i:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4f

    .line 74
    :cond_1b
    iget v0, p0, Loz;->i:I

    rem-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    add-float/2addr v0, p3

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 75
    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 78
    iget-object v1, p0, Loz;->g:Lsj;

    const-string v2, "Saving level.."

    const/16 v3, 0x8

    iget v4, p0, Loz;->d:I

    add-int/lit8 v4, v4, -0x10

    shl-int/lit8 v5, v0, 0x10

    shl-int/lit8 v6, v0, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Loz;->b(Lsj;Ljava/lang/String;III)V

    .line 81
    :cond_4f
    iget-object v1, p0, Loz;->g:Lsj;

    const-string v2, "Game menu"

    iget v0, p0, Loz;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x28

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Loz;->a(Lsj;Ljava/lang/String;III)V

    .line 83
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 6

    .line 38
    iget v0, p1, Lke;->f:I

    if-nez v0, :cond_12

    .line 39
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lco;

    iget-object v2, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-direct {v1, p0, v2}, Lco;-><init>(Lda;Lkv;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 41
    :cond_12
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    .line 42
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object v3, Ljl;->j:Lvr;

    invoke-virtual {v0, v3, v2}, Lxi;->a(Lvr;I)V

    .line 43
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->l()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 44
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->q()V

    .line 47
    :cond_30
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 48
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    new-instance v2, Lfu;

    invoke-direct {v2}, Lfu;-><init>()V

    invoke-virtual {v0, v2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 50
    :cond_3f
    iget v0, p1, Lke;->f:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4e

    .line 51
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 52
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->g()V

    .line 55
    :cond_4e
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_61

    .line 56
    iget-object v0, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lxm;

    iget-object v2, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-direct {v1, v2}, Lxm;-><init>(Lxi;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 58
    :cond_61
    iget p1, p1, Lke;->f:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_74

    .line 59
    iget-object p1, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Ldv;

    iget-object v1, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-direct {v0, p0, v1}, Ldv;-><init>(Lda;Lxi;)V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_74
    return-void
.end method

.method public b()V
    .registers 14

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Loz;->a:I

    .line 17
    iget-object v1, p0, Loz;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 19
    iget-object v1, p0, Loz;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Loz;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Loz;->d:I

    const/4 v5, 0x4

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x78

    add-int/lit8 v4, v4, -0x10

    const-string v6, "Save and quit to title"

    const/4 v7, 0x1

    invoke-direct {v2, v7, v3, v4, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, p0, Loz;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v1}, Lnet/minecraft/client/Minecraft;->l()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 21
    iget-object v1, p0, Loz;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lke;

    const-string v2, "Disconnect"

    iput-object v2, v1, Lke;->e:Ljava/lang/String;

    .line 25
    :cond_37
    iget-object v1, p0, Loz;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Loz;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Loz;->d:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, -0x10

    const-string v6, "Back to game"

    invoke-direct {v2, v5, v3, v4, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, p0, Loz;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Loz;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Loz;->d:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x60

    add-int/lit8 v4, v4, -0x10

    const-string v6, "Options..."

    invoke-direct {v2, v0, v3, v4, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Loz;->e:Ljava/util/List;

    new-instance v1, Lke;

    const/4 v7, 0x5

    iget v2, p0, Loz;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v8, v2, -0x64

    iget v2, p0, Loz;->d:I

    div-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x30

    add-int/lit8 v9, v2, -0x10

    const/16 v10, 0x62

    const/16 v11, 0x14

    const-string v2, "gui.achievements"

    invoke-static {v2}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Loz;->e:Ljava/util/List;

    new-instance v1, Lke;

    const/4 v7, 0x6

    iget v2, p0, Loz;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v8, v2, 0x2

    iget v2, p0, Loz;->d:I

    div-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x30

    add-int/lit8 v9, v2, -0x10

    const-string v2, "gui.stats"

    invoke-static {v2}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
