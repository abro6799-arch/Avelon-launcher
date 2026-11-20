###### Class defpackage.du (du)
.class public Ldu;
.super Lub;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Lnet/minecraft/client/Minecraft;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lub;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldu;->a:Ljava/util/List;

    .line 16
    iput-object p1, p0, Ldu;->b:Lnet/minecraft/client/Minecraft;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    .line 20
    :goto_1
    iget-object v1, p0, Ldu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 21
    iget-object v1, p0, Ldu;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    .line 23
    invoke-virtual {v1}, Lkw;->a()V

    .line 24
    invoke-virtual {v1, p0}, Lkw;->a(Ldu;)V

    .line 26
    iget-boolean v1, v1, Lkw;->h:Z

    if-eqz v1, :cond_23

    .line 27
    iget-object v1, p0, Ldu;->a:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method

.method public a(F)V
    .registers 18

    move-object/from16 v7, p0

    .line 38
    iget-object v0, v7, Ldu;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v1, v7, Ldu;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v2, "/gui/particles.png"

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lji;->b(I)V

    const/4 v0, 0x0

    move v8, v0

    .line 39
    :goto_15
    iget-object v0, v7, Ldu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_7d

    .line 40
    iget-object v0, v7, Ldu;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    .line 41
    iget-wide v1, v0, Lkw;->c:D

    iget-wide v3, v0, Lkw;->a:D

    iget-wide v5, v0, Lkw;->c:D

    sub-double/2addr v3, v5

    move/from16 v9, p1

    float-to-double v5, v9

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    sub-double/2addr v1, v3

    double-to-int v1, v1

    .line 42
    iget-wide v10, v0, Lkw;->d:D

    iget-wide v12, v0, Lkw;->b:D

    iget-wide v14, v0, Lkw;->d:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    sub-double/2addr v10, v3

    double-to-int v2, v10

    .line 44
    iget-wide v3, v0, Lkw;->r:D

    iget-wide v10, v0, Lkw;->n:D

    iget-wide v12, v0, Lkw;->r:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v5

    add-double/2addr v3, v10

    double-to-float v3, v3

    .line 45
    iget-wide v10, v0, Lkw;->o:D

    iget-wide v12, v0, Lkw;->k:D

    iget-wide v14, v0, Lkw;->o:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    double-to-float v4, v10

    .line 46
    iget-wide v10, v0, Lkw;->p:D

    iget-wide v12, v0, Lkw;->l:D

    iget-wide v14, v0, Lkw;->p:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 47
    iget-wide v11, v0, Lkw;->q:D

    iget-wide v13, v0, Lkw;->m:D

    move v15, v8

    iget-wide v7, v0, Lkw;->q:D

    sub-double/2addr v13, v7

    mul-double/2addr v13, v5

    add-double/2addr v11, v13

    double-to-float v0, v11

    .line 49
    invoke-static {v4, v10, v0, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v3, 0x28

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v6, 0x8

    move-object/from16 v0, p0

    .line 50
    invoke-virtual/range {v0 .. v6}, Ldu;->b(IIIIII)V

    add-int/lit8 v8, v15, 0x1

    move-object/from16 v7, p0

    goto :goto_15

    :cond_7d
    return-void
.end method
