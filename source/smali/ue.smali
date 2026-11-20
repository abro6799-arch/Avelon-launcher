###### Class defpackage.ue (ue)
.class public Lue;
.super Lid;
.source "SourceFile"


# instance fields
.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Lgs;)V
    .registers 4

    .line 15
    iget-object v0, p1, Lgs;->d:Ldw;

    invoke-direct {p0, v0}, Lid;-><init>(Ldw;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lue;->f:Z

    .line 17
    sget-object v1, Lep;->f:Lny;

    invoke-virtual {p1, v1, v0}, Lgs;->a(Lvr;I)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .registers 20

    move-object/from16 v7, p0

    .line 38
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/gui/inventory.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 39
    invoke-static {v8, v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 40
    iget-object v1, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v1, v0}, Lji;->b(I)V

    .line 41
    iget v0, v7, Lue;->c:I

    iget v1, v7, Lue;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 42
    iget v0, v7, Lue;->d:I

    iget v1, v7, Lue;->i:I

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 43
    iget v5, v7, Lue;->a:I

    iget v6, v7, Lue;->i:I

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Lue;->b(IIIIII)V

    const v0, 0x803a    # 4.5999E-41f

    .line 45
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0xb57

    .line 46
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 48
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    add-int/lit8 v9, v9, 0x33

    int-to-float v1, v9

    add-int/lit8 v10, v10, 0x4b

    int-to-float v2, v10

    const/high16 v3, 0x42480000    # 50.0f

    .line 49
    invoke-static {v1, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, -0x3e100000    # -30.0f

    .line 51
    invoke-static {v3, v2, v2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    .line 52
    invoke-static {v2, v3, v3, v8}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 54
    iget-object v4, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v4, v4, Ldc;->H:F

    .line 55
    iget-object v5, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v5, v5, Ldc;->aS:F

    .line 56
    iget-object v6, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v6, v6, Ldc;->aT:F

    .line 58
    iget v9, v7, Lue;->l:F

    sub-float/2addr v1, v9

    add-int/lit8 v10, v10, -0x32

    int-to-float v9, v10

    .line 59
    iget v10, v7, Lue;->m:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x43070000    # 135.0f

    .line 61
    invoke-static {v10, v3, v8, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 62
    invoke-static {}, Lu;->b()V

    const/high16 v10, -0x3cf90000    # -135.0f

    .line 63
    invoke-static {v10, v3, v8, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v10, 0x42200000    # 40.0f

    div-float/2addr v9, v10

    float-to-double v11, v9

    .line 65
    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    double-to-float v9, v13

    neg-float v9, v9

    const/high16 v13, 0x41a00000    # 20.0f

    mul-float/2addr v9, v13

    invoke-static {v9, v8, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 67
    iget-object v9, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->h:Ldc;

    div-float/2addr v1, v10

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v13

    iput v0, v9, Ldc;->H:F

    .line 68
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    double-to-float v1, v14

    mul-float/2addr v1, v10

    iput v1, v0, Ldc;->aS:F

    .line 69
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v1, v9

    neg-float v1, v1

    mul-float/2addr v1, v13

    iput v1, v0, Ldc;->aT:F

    .line 70
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v8, v0, Ldc;->bE:F

    .line 71
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->bf:F

    invoke-static {v3, v0, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 72
    sget-object v0, Lth;->a:Lth;

    iput v2, v0, Lth;->i:F

    .line 73
    sget-object v8, Lth;->a:Lth;

    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v9, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v17}, Lth;->a(Lsn;DDDFF)V

    .line 74
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v3, v0, Ldc;->bE:F

    .line 75
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v4, v0, Ldc;->H:F

    .line 76
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v5, v0, Ldc;->aS:F

    .line 77
    iget-object v0, v7, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v6, v0, Ldc;->aT:F

    .line 78
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 79
    invoke-static {}, Lu;->a()V

    const v0, 0x803a    # 4.5999E-41f

    .line 80
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method public a(IIF)V
    .registers 4

    .line 32
    invoke-super {p0, p1, p2, p3}, Lid;->a(IIF)V

    int-to-float p1, p1

    .line 33
    iput p1, p0, Lue;->l:F

    int-to-float p1, p2

    .line 34
    iput p1, p0, Lue;->m:F

    return-void
.end method

.method protected a(Lke;)V
    .registers 5

    .line 84
    iget v0, p1, Lke;->f:I

    if-nez v0, :cond_12

    .line 85
    iget-object v0, p0, Lue;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lxm;

    iget-object v2, p0, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-direct {v1, v2}, Lxm;-><init>(Lxi;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 87
    :cond_12
    iget p1, p1, Lke;->f:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 88
    iget-object p1, p0, Lue;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Ldv;

    iget-object v1, p0, Lue;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-direct {v0, p0, v1}, Ldv;-><init>(Lda;Lxi;)V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_25
    return-void
.end method

.method public b()V
    .registers 2

    .line 21
    iget-object v0, p0, Lue;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected k()V
    .registers 6

    .line 26
    iget-object v0, p0, Lue;->g:Lsj;

    const/16 v1, 0x10

    const v2, 0x404040

    const-string v3, "Crafting"

    const/16 v4, 0x56

    invoke-virtual {v0, v3, v4, v1, v2}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method
