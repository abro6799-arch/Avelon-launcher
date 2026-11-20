###### Class defpackage.iy (iy)
.class public Liy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I

.field private c:Lkv;

.field private d:Lsj;


# direct methods
.method public constructor <init>(Lsj;Lkv;Lji;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    new-array v1, v0, [I

    .line 18
    iput-object v1, p0, Liy;->a:[I

    .line 24
    iput-object p2, p0, Liy;->c:Lkv;

    .line 25
    iput-object p1, p0, Liy;->d:Lsj;

    .line 26
    new-instance p1, Lmcshim/awt/image/BufferedImage;

    const/16 p2, 0x80

    const/4 v1, 0x2

    invoke-direct {p1, p2, p2, v1}, Lmcshim/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p3, p1}, Lji;->a(Lmcshim/awt/image/BufferedImage;)I

    move-result p1

    iput p1, p0, Liy;->b:I

    const/4 p1, 0x0

    move p2, p1

    :goto_1d
    if-ge p2, v0, :cond_26

    .line 28
    iget-object p3, p0, Liy;->a:[I

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    :cond_26
    return-void
.end method


# virtual methods
.method public a(Lgs;Lji;Liu;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    const/16 v5, 0x4000

    const/high16 v6, -0x1000000

    if-ge v4, v5, :cond_71

    .line 34
    iget-object v5, v2, Liu;->f:[B

    aget-byte v5, v5, v4

    .line 35
    div-int/lit8 v7, v5, 0x4

    if-nez v7, :cond_26

    .line 36
    iget-object v5, v0, Liy;->a:[I

    div-int/lit16 v6, v4, 0x80

    add-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x10

    shl-int/lit8 v6, v6, 0x18

    aput v6, v5, v4

    goto :goto_6e

    .line 38
    :cond_26
    sget-object v8, Ldx;->a:[Ldx;

    aget-object v7, v8, v7

    iget v7, v7, Ldx;->p:I

    and-int/lit8 v5, v5, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xff

    if-ne v5, v8, :cond_35

    move v8, v9

    goto :goto_37

    :cond_35
    const/16 v8, 0xdc

    :goto_37
    if-nez v5, :cond_3b

    const/16 v8, 0xb4

    :cond_3b
    shr-int/lit8 v5, v7, 0x10

    and-int/2addr v5, v9

    mul-int/2addr v5, v8

    .line 45
    div-int/2addr v5, v9

    shr-int/lit8 v10, v7, 0x8

    and-int/2addr v10, v9

    mul-int/2addr v10, v8

    .line 46
    div-int/2addr v10, v9

    and-int/2addr v7, v9

    mul-int/2addr v7, v8

    .line 47
    div-int/2addr v7, v9

    .line 49
    iget-object v8, v0, Liy;->c:Lkv;

    iget-boolean v8, v8, Lkv;->g:Z

    if-eqz v8, :cond_63

    mul-int/lit8 v5, v5, 0x1e

    mul-int/lit8 v8, v10, 0x3b

    add-int/2addr v8, v5

    mul-int/lit8 v9, v7, 0xb

    add-int/2addr v8, v9

    .line 50
    div-int/lit8 v8, v8, 0x64

    mul-int/lit8 v10, v10, 0x46

    add-int/2addr v10, v5

    .line 51
    div-int/lit8 v10, v10, 0x64

    mul-int/lit8 v7, v7, 0x46

    add-int/2addr v5, v7

    .line 52
    div-int/lit8 v7, v5, 0x64

    move v5, v8

    .line 59
    :cond_63
    iget-object v8, v0, Liy;->a:[I

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v10, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v7

    aput v5, v8, v4

    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 63
    :cond_71
    iget-object v4, v0, Liy;->a:[I

    iget v5, v0, Liy;->b:I

    const/16 v7, 0x80

    invoke-virtual {v1, v4, v7, v7, v5}, Lji;->a([IIII)V

    .line 67
    sget-object v4, Lnw;->a:Lnw;

    const/16 v5, 0xde1

    .line 71
    iget v8, v0, Liy;->b:I

    invoke-static {v5, v8}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/16 v5, 0xbe2

    .line 72
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v19, 0xbc0

    .line 73
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 74
    invoke-virtual {v4}, Lnw;->b()V

    int-to-float v8, v3

    const/4 v15, 0x0

    add-float/2addr v8, v15

    float-to-double v13, v8

    int-to-float v7, v7

    sub-float/2addr v7, v15

    float-to-double v11, v7

    const-wide v16, -0x407b851ec0000000L    # -0.009999999776482582

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object v8, v4

    move-wide v9, v13

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    move-wide/from16 v13, v16

    move v7, v15

    move-wide/from16 v15, v20

    move-wide/from16 v17, v22

    .line 75
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide v13, -0x407b851ec0000000L    # -0.009999999776482582

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v9, v24

    .line 76
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide/16 v17, 0x0

    move-wide/from16 v11, v26

    .line 77
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide/16 v15, 0x0

    move-wide/from16 v9, v26

    .line 78
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    .line 79
    invoke-virtual {v4}, Lnw;->a()V

    .line 80
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 81
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const-string v5, "/misc/mapicons.png"

    .line 84
    invoke-virtual {v1, v5}, Lji;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lji;->b(I)V

    .line 86
    iget-object v1, v2, Liu;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v5, :cond_189

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lax;

    .line 87
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    int-to-float v9, v3

    .line 88
    iget-byte v10, v5, Lax;->b:B

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    const/high16 v12, 0x42800000    # 64.0f

    add-float/2addr v10, v12

    iget-byte v13, v5, Lax;->c:B

    int-to-float v13, v13

    div-float/2addr v13, v11

    add-float/2addr v9, v13

    add-float/2addr v9, v12

    const v11, -0x435c28f6    # -0.02f

    invoke-static {v10, v9, v11}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 89
    iget-byte v9, v5, Lax;->d:B

    mul-int/lit16 v9, v9, 0x168

    int-to-float v9, v9

    const/high16 v10, 0x41800000    # 16.0f

    div-float/2addr v9, v10

    invoke-static {v9, v7, v7, v8}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40800000    # 4.0f

    .line 90
    invoke-static {v9, v9, v8}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v8, -0x42000000    # -0.125f

    const/high16 v10, 0x3e000000    # 0.125f

    .line 91
    invoke-static {v8, v10, v7}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 93
    iget-byte v8, v5, Lax;->a:B

    rem-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 94
    iget-byte v10, v5, Lax;->a:B

    div-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v10, v9

    .line 95
    iget-byte v11, v5, Lax;->a:B

    rem-int/lit8 v11, v11, 0x4

    add-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    div-float v15, v11, v9

    .line 96
    iget-byte v5, v5, Lax;->a:B

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v5, v9

    .line 98
    invoke-virtual {v4}, Lnw;->b()V

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    float-to-double v8, v8

    float-to-double v6, v10

    move-wide/from16 v20, v8

    move-object v8, v4

    move-wide v9, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move v3, v15

    move-wide/from16 v15, v20

    move-wide/from16 v17, v6

    .line 99
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    float-to-double v13, v3

    move-wide/from16 v23, v13

    const-wide/16 v13, 0x0

    move-wide/from16 v15, v23

    .line 100
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v13, 0x0

    float-to-double v5, v5

    move-wide/from16 v17, v5

    .line 101
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    move-wide/from16 v15, v20

    .line 102
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    .line 103
    invoke-virtual {v4}, Lnw;->a()V

    .line 104
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    const/4 v3, 0x0

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    goto/16 :goto_e4

    .line 108
    :cond_189
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const v1, -0x42dc28f6    # -0.04f

    const/4 v3, 0x0

    .line 110
    invoke-static {v3, v3, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 111
    invoke-static {v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 112
    iget-object v1, v0, Liy;->d:Lsj;

    iget-object v2, v2, Liu;->a:Ljava/lang/String;

    const/high16 v3, -0x1000000

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lsj;->b(Ljava/lang/String;III)V

    .line 113
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method
