###### Class defpackage.w (w)
.class public Lw;
.super Ldr;
.source "SourceFile"


# static fields
.field private static e:Lw;


# instance fields
.field private f:Ljava/nio/FloatBuffer;

.field private g:Ljava/nio/FloatBuffer;

.field private h:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lw;

    invoke-direct {v0}, Lw;-><init>()V

    sput-object v0, Lw;->e:Lw;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ldr;-><init>()V

    const/16 v0, 0x10

    .line 61
    invoke-static {v0}, Lge;->e(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lw;->f:Ljava/nio/FloatBuffer;

    .line 62
    invoke-static {v0}, Lge;->e(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lw;->g:Ljava/nio/FloatBuffer;

    .line 63
    invoke-static {v0}, Lge;->e(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lw;->h:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static a()Ldr;
    .registers 1

    .line 36
    sget-object v0, Lw;->e:Lw;

    invoke-direct {v0}, Lw;->b()V

    .line 37
    sget-object v0, Lw;->e:Lw;

    return-object v0
.end method

.method private a([[FI)V
    .registers 8

    .line 51
    aget-object v0, p1, p2

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v0, v0, v4

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    invoke-static {v2}, Lin;->c(F)F

    move-result v0

    .line 55
    aget-object p1, p1, p2

    aget p2, p1, v1

    div-float/2addr p2, v0

    aput p2, p1, v1

    .line 56
    aget p2, p1, v3

    div-float/2addr p2, v0

    aput p2, p1, v3

    .line 57
    aget p2, p1, v4

    div-float/2addr p2, v0

    aput p2, p1, v4

    const/4 p2, 0x3

    .line 58
    aget v1, p1, p2

    div-float/2addr v1, v0

    aput v1, p1, p2

    return-void
.end method

.method private b()V
    .registers 22

    move-object/from16 v0, p0

    .line 67
    iget-object v1, v0, Lw;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    iget-object v1, v0, Lw;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    iget-object v1, v0, Lw;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/16 v1, 0xba7

    .line 74
    iget-object v2, v0, Lw;->f:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glGetFloat(ILjava/nio/FloatBuffer;)V

    const/16 v1, 0xba6

    .line 78
    iget-object v2, v0, Lw;->g:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glGetFloat(ILjava/nio/FloatBuffer;)V

    .line 80
    iget-object v1, v0, Lw;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    iget-object v1, v0, Lw;->f:Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lw;->b:[F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 82
    iget-object v1, v0, Lw;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 83
    iget-object v1, v0, Lw;->g:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lw;->c:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 88
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v3

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, v0, Lw;->b:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    iget-object v8, v0, Lw;->b:[F

    const/16 v9, 0x8

    aget v8, v8, v9

    mul-float/2addr v4, v8

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    const/4 v8, 0x3

    aget v4, v4, v8

    iget-object v10, v0, Lw;->b:[F

    const/16 v11, 0xc

    aget v10, v10, v11

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v3

    .line 89
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v3

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v5

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v5

    iget-object v10, v0, Lw;->b:[F

    const/4 v12, 0x5

    aget v10, v10, v12

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v6

    iget-object v10, v0, Lw;->b:[F

    const/16 v13, 0x9

    aget v10, v10, v13

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v8

    iget-object v10, v0, Lw;->b:[F

    const/16 v14, 0xd

    aget v10, v10, v14

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v5

    .line 90
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v3

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v6

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v5

    iget-object v10, v0, Lw;->b:[F

    const/4 v15, 0x6

    aget v10, v10, v15

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v6

    iget-object v10, v0, Lw;->b:[F

    const/16 v16, 0xa

    aget v10, v10, v16

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v8

    iget-object v10, v0, Lw;->b:[F

    const/16 v17, 0xe

    aget v10, v10, v17

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v6

    .line 91
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v3

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v8

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v5

    iget-object v10, v0, Lw;->b:[F

    const/16 v18, 0x7

    aget v10, v10, v18

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v6

    iget-object v10, v0, Lw;->b:[F

    const/16 v19, 0xb

    aget v10, v10, v19

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v8

    iget-object v10, v0, Lw;->b:[F

    const/16 v20, 0xf

    aget v10, v10, v20

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v8

    .line 93
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v7

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v3

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v12

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v7

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v15

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v9

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v18

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v11

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v7

    .line 94
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v7

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v5

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v12

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v12

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v15

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v13

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v18

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v14

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v12

    .line 95
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v7

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v6

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v12

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v15

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v15

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v16

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v18

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v17

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v15

    .line 96
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v7

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v8

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v12

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v18

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v15

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v19

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v18

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v20

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v18

    .line 98
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v9

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v3

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v13

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v7

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v16

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v9

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v19

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v11

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v9

    .line 99
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v9

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v5

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v13

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v12

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v16

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v13

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v19

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v14

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v13

    .line 100
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v9

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v6

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v13

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v15

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v16

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v16

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v19

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v17

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v16

    .line 101
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v9

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v8

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v13

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v18

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v16

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v19

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v19

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v20

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v19

    .line 103
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v11

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v3

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v14

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v7

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v17

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v9

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v20

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v11

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v11

    .line 104
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v11

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v5

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v14

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v12

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v17

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v13

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v20

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v14

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v14

    .line 105
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v11

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v6

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v14

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v15

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v17

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v16

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v20

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v17

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v17

    .line 106
    iget-object v1, v0, Lw;->d:[F

    iget-object v2, v0, Lw;->c:[F

    aget v2, v2, v11

    iget-object v4, v0, Lw;->b:[F

    aget v4, v4, v8

    mul-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v14

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v18

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v17

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v19

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    iget-object v4, v0, Lw;->c:[F

    aget v4, v4, v20

    iget-object v10, v0, Lw;->b:[F

    aget v10, v10, v20

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aput v2, v1, v20

    .line 112
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v3

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v8

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v3

    sub-float/2addr v2, v4

    aput v2, v1, v3

    .line 113
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v3

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v18

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v7

    sub-float/2addr v2, v4

    aput v2, v1, v5

    .line 114
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v3

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v19

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v9

    sub-float/2addr v2, v4

    aput v2, v1, v6

    .line 115
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v3

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v20

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v11

    sub-float/2addr v2, v4

    aput v2, v1, v8

    .line 121
    iget-object v1, v0, Lw;->a:[[F

    invoke-direct {v0, v1, v3}, Lw;->a([[FI)V

    .line 124
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v5

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v8

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    aput v2, v1, v3

    .line 125
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v5

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v18

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v7

    add-float/2addr v2, v4

    aput v2, v1, v5

    .line 126
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v5

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v19

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v9

    add-float/2addr v2, v4

    aput v2, v1, v6

    .line 127
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v5

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v20

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v11

    add-float/2addr v2, v4

    aput v2, v1, v8

    .line 130
    iget-object v1, v0, Lw;->a:[[F

    invoke-direct {v0, v1, v5}, Lw;->a([[FI)V

    .line 133
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v6

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v8

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v5

    add-float/2addr v2, v4

    aput v2, v1, v3

    .line 134
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v6

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v18

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v12

    add-float/2addr v2, v4

    aput v2, v1, v5

    .line 135
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v6

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v19

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v13

    add-float/2addr v2, v4

    aput v2, v1, v6

    .line 136
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v6

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v20

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v14

    add-float/2addr v2, v4

    aput v2, v1, v8

    .line 139
    iget-object v1, v0, Lw;->a:[[F

    invoke-direct {v0, v1, v6}, Lw;->a([[FI)V

    .line 142
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v8

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v8

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v5

    sub-float/2addr v2, v4

    aput v2, v1, v3

    .line 143
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v8

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v18

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v12

    sub-float/2addr v2, v4

    aput v2, v1, v5

    .line 144
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v8

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v19

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v13

    sub-float/2addr v2, v4

    aput v2, v1, v6

    .line 145
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v8

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v20

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v14

    sub-float/2addr v2, v4

    aput v2, v1, v8

    .line 148
    iget-object v1, v0, Lw;->a:[[F

    invoke-direct {v0, v1, v8}, Lw;->a([[FI)V

    .line 151
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v7

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v8

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v6

    sub-float/2addr v2, v4

    aput v2, v1, v3

    .line 152
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v7

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v18

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v15

    sub-float/2addr v2, v4

    aput v2, v1, v5

    .line 153
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v7

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v19

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v16

    sub-float/2addr v2, v4

    aput v2, v1, v6

    .line 154
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v7

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v20

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v17

    sub-float/2addr v2, v4

    aput v2, v1, v8

    .line 157
    iget-object v1, v0, Lw;->a:[[F

    invoke-direct {v0, v1, v7}, Lw;->a([[FI)V

    .line 160
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v12

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v8

    iget-object v4, v0, Lw;->d:[F

    aget v4, v4, v6

    add-float/2addr v2, v4

    aput v2, v1, v3

    .line 161
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v12

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v18

    iget-object v3, v0, Lw;->d:[F

    aget v3, v3, v15

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 162
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v12

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v19

    iget-object v3, v0, Lw;->d:[F

    aget v3, v3, v16

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 163
    iget-object v1, v0, Lw;->a:[[F

    aget-object v1, v1, v12

    iget-object v2, v0, Lw;->d:[F

    aget v2, v2, v20

    iget-object v3, v0, Lw;->d:[F

    aget v3, v3, v17

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 166
    iget-object v1, v0, Lw;->a:[[F

    invoke-direct {v0, v1, v12}, Lw;->a([[FI)V

    return-void
.end method
