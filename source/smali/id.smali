###### Class defpackage.id (id)
.class public abstract Lid;
.super Lda;
.source "SourceFile"


# static fields
.field private static l:Lbb;


# instance fields
.field protected a:I

.field protected i:I

.field public j:Ldw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lbb;

    invoke-direct {v0}, Lbb;-><init>()V

    sput-object v0, Lid;->l:Lbb;

    return-void
.end method

.method public constructor <init>(Ldw;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lda;-><init>()V

    const/16 v0, 0xb0

    .line 19
    iput v0, p0, Lid;->a:I

    const/16 v0, 0xa6

    .line 20
    iput v0, p0, Lid;->i:I

    .line 24
    iput-object p1, p0, Lid;->j:Ldw;

    return-void
.end method

.method private a(II)Lgp;
    .registers 6

    const/4 v0, 0x0

    .line 136
    :goto_1
    iget-object v1, p0, Lid;->j:Ldw;

    iget-object v1, v1, Ldw;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 137
    iget-object v1, p0, Lid;->j:Ldw;

    iget-object v1, v1, Ldw;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgp;

    .line 138
    invoke-direct {p0, v1, p1, p2}, Lid;->a(Lgp;II)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lgp;)V
    .registers 11

    .line 116
    iget v6, p1, Lgp;->b:I

    .line 117
    iget v7, p1, Lgp;->c:I

    .line 118
    invoke-virtual {p1}, Lgp;->a()Liz;

    move-result-object v8

    if-nez v8, :cond_3d

    .line 121
    invoke-virtual {p1}, Lgp;->e()I

    move-result p1

    if-ltz p1, :cond_3d

    const/16 v8, 0xb50

    .line 123
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 124
    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v2, "/gui/items.png"

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lji;->b(I)V

    .line 125
    rem-int/lit8 v0, p1, 0x10

    mul-int/lit8 v3, v0, 0x10

    div-int/lit8 p1, p1, 0x10

    mul-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    const/16 p1, 0x10

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lid;->b(IIIIII)V

    .line 126
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void

    .line 131
    :cond_3d
    sget-object v0, Lid;->l:Lbb;

    iget-object v1, p0, Lid;->g:Lsj;

    iget-object p1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    move-object v3, v8

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lbb;->a(Lsj;Lji;Liz;II)V

    .line 132
    sget-object v0, Lid;->l:Lbb;

    iget-object v1, p0, Lid;->g:Lsj;

    iget-object p1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual/range {v0 .. v5}, Lbb;->b(Lsj;Lji;Liz;II)V

    return-void
.end method

.method private a(Lgp;II)Z
    .registers 7

    .line 144
    iget v0, p0, Lid;->c:I

    iget v1, p0, Lid;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 145
    iget v1, p0, Lid;->d:I

    iget v2, p0, Lid;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v0

    sub-int/2addr p3, v1

    .line 149
    iget v0, p1, Lgp;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_2a

    iget v0, p1, Lgp;->b:I

    add-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_2a

    iget p2, p1, Lgp;->c:I

    sub-int/2addr p2, v1

    if-lt p3, p2, :cond_2a

    iget p1, p1, Lgp;->c:I

    add-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    if-ge p3, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 200
    invoke-super {p0}, Lda;->a()V

    .line 201
    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->W()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-boolean v0, v0, Ldc;->be:Z

    if-eqz v0, :cond_1c

    :cond_15
    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->r()V

    :cond_1c
    return-void
.end method

.method protected a(CI)V
    .registers 3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_d

    .line 181
    iget-object p1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p1, p1, Lkv;->r:Lqb;

    iget p1, p1, Lqb;->b:I

    if-ne p2, p1, :cond_14

    .line 182
    :cond_d
    iget-object p1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1}, Ldc;->r()V

    :cond_14
    return-void
.end method

.method protected abstract a(F)V
.end method

.method public a(IIF)V
    .registers 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lid;->i()V

    .line 34
    iget v0, v7, Lid;->c:I

    iget v1, v7, Lid;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    .line 35
    iget v0, v7, Lid;->d:I

    iget v1, v7, Lid;->i:I

    sub-int/2addr v0, v1

    div-int/lit8 v11, v0, 0x2

    move/from16 v12, p3

    .line 37
    invoke-virtual {v7, v12}, Lid;->a(F)V

    .line 39
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    .line 40
    invoke-static {v0, v1, v13, v13}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 41
    invoke-static {}, Lu;->b()V

    .line 42
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 44
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    int-to-float v0, v10

    int-to-float v2, v11

    .line 45
    invoke-static {v0, v2, v13}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 47
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const v14, 0x803a    # 4.5999E-41f

    .line 48
    invoke-static {v14}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v15, v1

    .line 52
    :goto_41
    iget-object v1, v7, Lid;->j:Ldw;

    iget-object v1, v1, Ldw;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v16, 0xb71

    const/16 v17, 0xb50

    if-ge v15, v1, :cond_8b

    .line 53
    iget-object v1, v7, Lid;->j:Ldw;

    iget-object v1, v1, Ldw;->e:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lgp;

    .line 55
    invoke-direct {v7, v6}, Lid;->a(Lgp;)V

    .line 57
    invoke-direct {v7, v6, v8, v9}, Lid;->a(Lgp;II)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 60
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 61
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 63
    iget v1, v6, Lgp;->b:I

    .line 64
    iget v2, v6, Lgp;->c:I

    add-int/lit8 v3, v1, 0x10

    add-int/lit8 v4, v2, 0x10

    const v5, -0x7f000001

    const v18, -0x7f000001

    move-object/from16 v0, p0

    move-object/from16 v19, v6

    move/from16 v6, v18

    .line 65
    invoke-virtual/range {v0 .. v6}, Lid;->a(IIIIII)V

    .line 66
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 67
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    move-object/from16 v0, v19

    :cond_88
    add-int/lit8 v15, v15, 0x1

    goto :goto_41

    .line 71
    :cond_8b
    iget-object v1, v7, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->c:Lix;

    .line 72
    invoke-virtual {v1}, Lix;->i()Liz;

    move-result-object v2

    if-eqz v2, :cond_ce

    const/high16 v2, 0x42000000    # 32.0f

    .line 73
    invoke-static {v13, v13, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 76
    sget-object v18, Lid;->l:Lbb;

    iget-object v2, v7, Lid;->g:Lsj;

    iget-object v3, v7, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v1}, Lix;->i()Liz;

    move-result-object v21

    sub-int v4, v8, v10

    add-int/lit8 v26, v4, -0x8

    sub-int v4, v9, v11

    add-int/lit8 v27, v4, -0x8

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v22, v26

    move/from16 v23, v27

    invoke-virtual/range {v18 .. v23}, Lbb;->a(Lsj;Lji;Liz;II)V

    .line 77
    sget-object v22, Lid;->l:Lbb;

    iget-object v2, v7, Lid;->g:Lsj;

    iget-object v3, v7, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v1}, Lix;->i()Liz;

    move-result-object v25

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {v22 .. v27}, Lbb;->b(Lsj;Lji;Liz;II)V

    .line 80
    :cond_ce
    invoke-static {v14}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 81
    invoke-static {}, Lu;->a()V

    .line 83
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 84
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lid;->k()V

    .line 88
    invoke-virtual {v1}, Lix;->i()Liz;

    move-result-object v1

    if-nez v1, :cond_13b

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Lgp;->b()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v2

    invoke-virtual {v0}, Lgp;->a()Liz;

    move-result-object v0

    invoke-virtual {v0}, Liz;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 92
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13b

    sub-int v0, v8, v10

    add-int/lit8 v10, v0, 0xc

    sub-int v0, v9, v11

    add-int/lit8 v11, v0, -0xc

    .line 95
    iget-object v0, v7, Lid;->g:Lsj;

    invoke-virtual {v0, v13}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v10, -0x3

    add-int/lit8 v2, v11, -0x3

    add-int/2addr v0, v10

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v0, v11, 0x8

    add-int/lit8 v4, v0, 0x3

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    .line 96
    invoke-virtual/range {v0 .. v6}, Lid;->a(IIIIII)V

    .line 98
    iget-object v0, v7, Lid;->g:Lsj;

    const/4 v1, -0x1

    invoke-virtual {v0, v13, v10, v11, v1}, Lsj;->a(Ljava/lang/String;III)V

    .line 103
    :cond_13b
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 105
    invoke-super/range {p0 .. p3}, Lda;->a(IIF)V

    .line 106
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 107
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method protected a(III)V
    .registers 16

    .line 153
    invoke-super {p0, p1, p2, p3}, Lda;->a(III)V

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    if-ne p3, v0, :cond_60

    .line 155
    :cond_8
    invoke-direct {p0, p1, p2}, Lid;->a(II)Lgp;

    move-result-object v1

    .line 157
    iget v2, p0, Lid;->c:I

    iget v3, p0, Lid;->a:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 158
    iget v3, p0, Lid;->d:I

    iget v4, p0, Lid;->i:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p1, v2, :cond_2a

    if-lt p2, v3, :cond_2a

    .line 159
    iget v6, p0, Lid;->a:I

    add-int/2addr v2, v6

    if-ge p1, v2, :cond_2a

    add-int/2addr v3, v4

    if-lt p2, v3, :cond_28

    goto :goto_2a

    :cond_28
    move p1, v5

    goto :goto_2b

    :cond_2a
    :goto_2a
    move p1, v0

    :goto_2b
    const/4 p2, -0x1

    if-eqz v1, :cond_31

    .line 162
    iget v1, v1, Lgp;->a:I

    goto :goto_32

    :cond_31
    move v1, p2

    :goto_32
    const/16 v2, -0x3e7

    if-eqz p1, :cond_38

    move v8, v2

    goto :goto_39

    :cond_38
    move v8, v1

    :goto_39
    if-eq v8, p2, :cond_60

    if-eq v8, v2, :cond_4f

    const/16 p1, 0x2a

    .line 169
    invoke-static {p1}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result p1

    if-nez p1, :cond_4d

    const/16 p1, 0x36

    invoke-static {p1}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    :cond_4d
    move v10, v0

    goto :goto_50

    :cond_4f
    move v10, v5

    .line 170
    :goto_50
    iget-object p1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v6, p1, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object p1, p0, Lid;->j:Ldw;

    iget v7, p1, Ldw;->f:I

    iget-object p1, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v11, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lob;->a(IIIZLgs;)Liz;

    :cond_60
    return-void
.end method

.method public b()V
    .registers 3

    .line 28
    invoke-super {p0}, Lda;->b()V

    .line 29
    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, p0, Lid;->j:Ldw;

    iput-object v1, v0, Ldc;->e:Ldw;

    return-void
.end method

.method protected b(III)V
    .registers 4

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .registers 4

    .line 187
    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-nez v0, :cond_7

    return-void

    .line 189
    :cond_7
    iget-object v0, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v1, p0, Lid;->j:Ldw;

    iget v1, v1, Ldw;->f:I

    iget-object v2, p0, Lid;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v1, v2}, Lob;->a(ILgs;)V

    return-void
.end method

.method protected k()V
    .registers 1

    return-void
.end method
