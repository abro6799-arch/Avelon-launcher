###### Class defpackage.nw (nw)
.class public Lnw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnw;

.field private static b:Z = true

.field private static c:Z


# instance fields
.field private A:I

.field private B:I

.field private d:Ljava/nio/ByteBuffer;

.field private e:Ljava/nio/IntBuffer;

.field private f:Ljava/nio/FloatBuffer;

.field private g:[I

.field private h:I

.field private i:D

.field private j:D

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:D

.field private t:D

.field private u:D

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Ljava/nio/IntBuffer;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lnw;

    const/high16 v1, 0x200000

    invoke-direct {v0, v1}, Lnw;-><init>(I)V

    sput-object v0, Lnw;->a:Lnw;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lnw;->h:I

    .line 31
    iput-boolean v0, p0, Lnw;->l:Z

    .line 32
    iput-boolean v0, p0, Lnw;->m:Z

    .line 33
    iput-boolean v0, p0, Lnw;->n:Z

    .line 34
    iput v0, p0, Lnw;->o:I

    .line 35
    iput v0, p0, Lnw;->p:I

    .line 36
    iput-boolean v0, p0, Lnw;->q:Z

    .line 43
    iput-boolean v0, p0, Lnw;->w:Z

    .line 46
    iput-boolean v0, p0, Lnw;->x:Z

    .line 48
    iput v0, p0, Lnw;->z:I

    const/16 v1, 0xa

    .line 49
    iput v1, p0, Lnw;->A:I

    .line 53
    iput p1, p0, Lnw;->B:I

    mul-int/lit8 v1, p1, 0x4

    .line 55
    invoke-static {v1}, Lge;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lnw;->e:Ljava/nio/IntBuffer;

    .line 57
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lnw;->f:Ljava/nio/FloatBuffer;

    .line 58
    new-array p1, p1, [I

    iput-object p1, p0, Lnw;->g:[I

    .line 60
    sget-boolean p1, Lnw;->c:Z

    if-eqz p1, :cond_45

    invoke-static {}, Lorg/lwjgl/opengl/GLContext;->getCapabilities()Lorg/lwjgl/opengl/ContextCapabilities;

    move-result-object p1

    iget-boolean p1, p1, Lorg/lwjgl/opengl/ContextCapabilities;->GL_ARB_vertex_buffer_object:Z

    if-eqz p1, :cond_45

    const/4 v0, 0x1

    :cond_45
    iput-boolean v0, p0, Lnw;->x:Z

    if-eqz v0, :cond_54

    .line 62
    iget p1, p0, Lnw;->A:I

    invoke-static {p1}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lnw;->y:Ljava/nio/IntBuffer;

    .line 63
    invoke-static {p1}, Lorg/lwjgl/opengl/ARBVertexBufferObject;->glGenBuffersARB(Ljava/nio/IntBuffer;)V

    :cond_54
    return-void
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lnw;->h:I

    .line 150
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    iput v0, p0, Lnw;->o:I

    .line 152
    iput v0, p0, Lnw;->p:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 12

    .line 72
    iget-boolean v0, p0, Lnw;->w:Z

    if-eqz v0, :cond_fa

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lnw;->w:Z

    .line 74
    iget v1, p0, Lnw;->h:I

    if-lez v1, :cond_f6

    .line 75
    iget-object v1, p0, Lnw;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 76
    iget-object v1, p0, Lnw;->e:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lnw;->g:[I

    iget v3, p0, Lnw;->o:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 78
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    iget v2, p0, Lnw;->o:I

    const/4 v3, 0x4

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    iget-boolean v1, p0, Lnw;->x:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    .line 82
    iget v1, p0, Lnw;->z:I

    add-int/2addr v1, v2

    iget v4, p0, Lnw;->A:I

    rem-int/2addr v1, v4

    iput v1, p0, Lnw;->z:I

    .line 83
    iget-object v4, p0, Lnw;->y:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const v4, 0x8892

    invoke-static {v4, v1}, Lorg/lwjgl/opengl/ARBVertexBufferObject;->glBindBufferARB(II)V

    .line 85
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    const v5, 0x88e0

    invoke-static {v4, v1, v5}, Lorg/lwjgl/opengl/ARBVertexBufferObject;->glBufferDataARB(ILjava/nio/ByteBuffer;I)V

    .line 98
    :cond_48
    iget-boolean v1, p0, Lnw;->m:Z

    const v4, 0x8078

    const/16 v5, 0x1406

    const/4 v6, 0x3

    const/16 v7, 0x20

    if-eqz v1, :cond_6c

    .line 99
    iget-boolean v1, p0, Lnw;->x:Z

    const/4 v8, 0x2

    if-eqz v1, :cond_5f

    const-wide/16 v9, 0xc

    .line 100
    invoke-static {v8, v5, v7, v9, v10}, Lorg/lwjgl/opengl/GL11;->glTexCoordPointer(IIIJ)V

    goto :goto_69

    .line 102
    :cond_5f
    iget-object v1, p0, Lnw;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v1, p0, Lnw;->f:Ljava/nio/FloatBuffer;

    invoke-static {v8, v7, v1}, Lorg/lwjgl/opengl/GL11;->glTexCoordPointer(IILjava/nio/FloatBuffer;)V

    .line 105
    :goto_69
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glEnableClientState(I)V

    .line 107
    :cond_6c
    iget-boolean v1, p0, Lnw;->l:Z

    const v8, 0x8076

    if-eqz v1, :cond_8e

    .line 108
    iget-boolean v1, p0, Lnw;->x:Z

    if-eqz v1, :cond_7f

    const/16 v1, 0x1401

    const-wide/16 v9, 0x14

    .line 109
    invoke-static {v3, v1, v7, v9, v10}, Lorg/lwjgl/opengl/GL11;->glColorPointer(IIIJ)V

    goto :goto_8b

    .line 111
    :cond_7f
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    const/16 v9, 0x14

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2, v7, v1}, Lorg/lwjgl/opengl/GL11;->glColorPointer(IZILjava/nio/ByteBuffer;)V

    .line 114
    :goto_8b
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnableClientState(I)V

    .line 116
    :cond_8e
    iget-boolean v1, p0, Lnw;->n:Z

    const v2, 0x8075

    if-eqz v1, :cond_b0

    .line 117
    iget-boolean v1, p0, Lnw;->x:Z

    if-eqz v1, :cond_a1

    const/16 v1, 0x1400

    const-wide/16 v9, 0x18

    .line 118
    invoke-static {v1, v7, v9, v10}, Lorg/lwjgl/opengl/GL11;->glNormalPointer(IIJ)V

    goto :goto_ad

    .line 120
    :cond_a1
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    const/16 v9, 0x18

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v1, p0, Lnw;->d:Ljava/nio/ByteBuffer;

    invoke-static {v7, v1}, Lorg/lwjgl/opengl/GL11;->glNormalPointer(ILjava/nio/ByteBuffer;)V

    .line 123
    :goto_ad
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnableClientState(I)V

    .line 125
    :cond_b0
    iget-boolean v1, p0, Lnw;->x:Z

    if-eqz v1, :cond_ba

    const-wide/16 v9, 0x0

    .line 126
    invoke-static {v6, v5, v7, v9, v10}, Lorg/lwjgl/opengl/GL11;->glVertexPointer(IIIJ)V

    goto :goto_c4

    .line 128
    :cond_ba
    iget-object v1, p0, Lnw;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object v1, p0, Lnw;->f:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v1}, Lorg/lwjgl/opengl/GL11;->glVertexPointer(IILjava/nio/FloatBuffer;)V

    :goto_c4
    const v1, 0x8074

    .line 131
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnableClientState(I)V

    .line 132
    iget v5, p0, Lnw;->r:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_d9

    sget-boolean v6, Lnw;->b:Z

    if-eqz v6, :cond_d9

    .line 133
    iget v5, p0, Lnw;->h:I

    invoke-static {v3, v0, v5}, Lorg/lwjgl/opengl/GL11;->glDrawArrays(III)V

    goto :goto_de

    .line 135
    :cond_d9
    iget v3, p0, Lnw;->h:I

    invoke-static {v5, v0, v3}, Lorg/lwjgl/opengl/GL11;->glDrawArrays(III)V

    .line 138
    :goto_de
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisableClientState(I)V

    .line 139
    iget-boolean v0, p0, Lnw;->m:Z

    if-eqz v0, :cond_e8

    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDisableClientState(I)V

    .line 140
    :cond_e8
    iget-boolean v0, p0, Lnw;->l:Z

    if-eqz v0, :cond_ef

    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDisableClientState(I)V

    .line 141
    :cond_ef
    iget-boolean v0, p0, Lnw;->n:Z

    if-eqz v0, :cond_f6

    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisableClientState(I)V

    .line 144
    :cond_f6
    invoke-direct {p0}, Lnw;->d()V

    return-void

    .line 72
    :cond_fa
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not tesselating!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(DD)V
    .registers 6

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lnw;->m:Z

    .line 177
    iput-wide p1, p0, Lnw;->i:D

    .line 178
    iput-wide p3, p0, Lnw;->j:D

    return-void
.end method

.method public a(DDD)V
    .registers 16

    .line 224
    iget v0, p0, Lnw;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnw;->p:I

    .line 227
    iget v2, p0, Lnw;->r:I

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_73

    sget-boolean v2, Lnw;->b:Z

    if-eqz v2, :cond_73

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_73

    move v0, v5

    :goto_16
    if-ge v0, v4, :cond_73

    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 230
    iget-boolean v3, p0, Lnw;->m:Z

    if-eqz v3, :cond_37

    .line 231
    iget-object v3, p0, Lnw;->g:[I

    iget v6, p0, Lnw;->o:I

    add-int/lit8 v7, v6, 0x3

    sub-int v8, v6, v2

    add-int/lit8 v8, v8, 0x3

    aget v8, v3, v8

    aput v8, v3, v7

    add-int/lit8 v7, v6, 0x4

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x4

    .line 232
    aget v6, v3, v6

    aput v6, v3, v7

    .line 234
    :cond_37
    iget-boolean v3, p0, Lnw;->l:Z

    if-eqz v3, :cond_48

    .line 235
    iget-object v3, p0, Lnw;->g:[I

    iget v6, p0, Lnw;->o:I

    add-int/lit8 v7, v6, 0x5

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x5

    aget v6, v3, v6

    aput v6, v3, v7

    .line 238
    :cond_48
    iget-object v3, p0, Lnw;->g:[I

    iget v6, p0, Lnw;->o:I

    add-int/lit8 v7, v6, 0x0

    sub-int v8, v6, v2

    add-int/2addr v8, v5

    aget v8, v3, v8

    aput v8, v3, v7

    add-int/lit8 v7, v6, 0x1

    sub-int v8, v6, v2

    add-int/2addr v8, v1

    .line 239
    aget v8, v3, v8

    aput v8, v3, v7

    add-int/lit8 v7, v6, 0x2

    sub-int v2, v6, v2

    add-int/2addr v2, v4

    .line 240
    aget v2, v3, v2

    aput v2, v3, v7

    .line 242
    iget v2, p0, Lnw;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lnw;->h:I

    add-int/lit8 v6, v6, 0x8

    .line 243
    iput v6, p0, Lnw;->o:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 247
    :cond_73
    iget-boolean v0, p0, Lnw;->m:Z

    if-eqz v0, :cond_95

    .line 248
    iget-object v0, p0, Lnw;->g:[I

    iget v2, p0, Lnw;->o:I

    add-int/lit8 v2, v2, 0x3

    iget-wide v6, p0, Lnw;->i:D

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v2

    .line 249
    iget-object v0, p0, Lnw;->g:[I

    iget v2, p0, Lnw;->o:I

    add-int/lit8 v2, v2, 0x4

    iget-wide v6, p0, Lnw;->j:D

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v2

    .line 251
    :cond_95
    iget-boolean v0, p0, Lnw;->l:Z

    if-eqz v0, :cond_a3

    .line 252
    iget-object v0, p0, Lnw;->g:[I

    iget v2, p0, Lnw;->o:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lnw;->k:I

    aput v3, v0, v2

    .line 254
    :cond_a3
    iget-boolean v0, p0, Lnw;->n:Z

    if-eqz v0, :cond_b1

    .line 255
    iget-object v0, p0, Lnw;->g:[I

    iget v2, p0, Lnw;->o:I

    add-int/lit8 v2, v2, 0x6

    iget v3, p0, Lnw;->v:I

    aput v3, v0, v2

    .line 259
    :cond_b1
    iget-object v0, p0, Lnw;->g:[I

    iget v2, p0, Lnw;->o:I

    add-int/2addr v2, v5

    iget-wide v5, p0, Lnw;->s:D

    add-double/2addr p1, v5

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v2

    .line 260
    iget-object p1, p0, Lnw;->g:[I

    iget p2, p0, Lnw;->o:I

    add-int/2addr p2, v1

    iget-wide v2, p0, Lnw;->t:D

    add-double/2addr p3, v2

    double-to-float p3, p3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 261
    iget-object p1, p0, Lnw;->g:[I

    iget p2, p0, Lnw;->o:I

    add-int/2addr p2, v4

    iget-wide p3, p0, Lnw;->u:D

    add-double/2addr p5, p3

    double-to-float p3, p5

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    .line 263
    iget p1, p0, Lnw;->o:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lnw;->o:I

    .line 265
    iget p2, p0, Lnw;->h:I

    add-int/2addr p2, v1

    iput p2, p0, Lnw;->h:I

    .line 266
    rem-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_f8

    iget p2, p0, Lnw;->B:I

    add-int/lit8 p2, p2, -0x20

    if-lt p1, p2, :cond_f8

    .line 267
    invoke-virtual {p0}, Lnw;->a()V

    .line 268
    iput-boolean v1, p0, Lnw;->w:Z

    :cond_f8
    return-void
.end method

.method public a(DDDDD)V
    .registers 11

    .line 219
    invoke-virtual {p0, p7, p8, p9, p10}, Lnw;->a(DD)V

    .line 220
    invoke-virtual/range {p0 .. p6}, Lnw;->a(DDD)V

    return-void
.end method

.method public a(FFF)V
    .registers 5

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lnw;->a(III)V

    return-void
.end method

.method public a(FFFF)V
    .registers 6

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 187
    invoke-virtual {p0, p1, p2, p3, p4}, Lnw;->a(IIII)V

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 162
    iget-boolean v0, p0, Lnw;->w:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lnw;->w:Z

    .line 167
    invoke-direct {p0}, Lnw;->d()V

    .line 168
    iput p1, p0, Lnw;->r:I

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lnw;->n:Z

    .line 170
    iput-boolean p1, p0, Lnw;->l:Z

    .line 171
    iput-boolean p1, p0, Lnw;->m:Z

    .line 172
    iput-boolean p1, p0, Lnw;->q:Z

    return-void

    .line 163
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already tesselating!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .registers 5

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 283
    invoke-virtual {p0, v0, v1, p1, p2}, Lnw;->a(IIII)V

    return-void
.end method

.method public a(III)V
    .registers 5

    const/16 v0, 0xff

    .line 191
    invoke-virtual {p0, p1, p2, p3, v0}, Lnw;->a(IIII)V

    return-void
.end method

.method public a(IIII)V
    .registers 7

    .line 195
    iget-boolean v0, p0, Lnw;->q:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0xff

    if-le p1, v0, :cond_a

    move p1, v0

    :cond_a
    if-le p2, v0, :cond_d

    move p2, v0

    :cond_d
    if-le p3, v0, :cond_10

    move p3, v0

    :cond_10
    if-le p4, v0, :cond_13

    move p4, v0

    :cond_13
    const/4 v0, 0x0

    if-gez p1, :cond_17

    move p1, v0

    :cond_17
    if-gez p2, :cond_1a

    move p2, v0

    :cond_1a
    if-gez p3, :cond_1d

    move p3, v0

    :cond_1d
    if-gez p4, :cond_20

    move p4, v0

    :cond_20
    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lnw;->l:Z

    .line 207
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_37

    shl-int/lit8 p4, p4, 0x18

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    .line 208
    iput p1, p0, Lnw;->k:I

    goto :goto_42

    :cond_37
    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    .line 210
    iput p1, p0, Lnw;->k:I

    :goto_42
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x7

    .line 157
    invoke-virtual {p0, v0}, Lnw;->a(I)V

    return-void
.end method

.method public b(DDD)V
    .registers 7

    .line 301
    iput-wide p1, p0, Lnw;->s:D

    .line 302
    iput-wide p3, p0, Lnw;->t:D

    .line 303
    iput-wide p5, p0, Lnw;->u:D

    return-void
.end method

.method public b(FFF)V
    .registers 6

    .line 291
    iget-boolean v0, p0, Lnw;->w:Z

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "But.."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lnw;->n:Z

    const/high16 v0, 0x43000000    # 128.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-byte p1, p1

    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-byte p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-byte p3, p3

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x10

    or-int/2addr p1, p2

    .line 297
    iput p1, p0, Lnw;->v:I

    return-void
.end method

.method public b(I)V
    .registers 4

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 276
    invoke-virtual {p0, v0, v1, p1}, Lnw;->a(III)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lnw;->q:Z

    return-void
.end method

.method public c(FFF)V
    .registers 8

    .line 307
    iget-wide v0, p0, Lnw;->s:D

    float-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lnw;->s:D

    .line 308
    iget-wide v0, p0, Lnw;->t:D

    float-to-double p1, p2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lnw;->t:D

    .line 309
    iget-wide p1, p0, Lnw;->u:D

    float-to-double v0, p3

    add-double/2addr p1, v0

    iput-wide p1, p0, Lnw;->u:D

    return-void
.end method
