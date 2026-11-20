###### Class defpackage.ps (ps)
.class public Lps;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Z

.field public h:Z

.field public i:Z

.field private j:[Lib;

.field private k:[Ltz;

.field private l:I

.field private m:I

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lps;->n:Z

    .line 24
    iput v0, p0, Lps;->o:I

    .line 26
    iput-boolean v0, p0, Lps;->g:Z

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lps;->h:Z

    .line 28
    iput-boolean v0, p0, Lps;->i:Z

    .line 31
    iput p1, p0, Lps;->l:I

    .line 32
    iput p2, p0, Lps;->m:I

    return-void
.end method

.method private d(F)V
    .registers 7

    const/4 v0, 0x1

    .line 232
    invoke-static {v0}, Lge;->a(I)I

    move-result v1

    iput v1, p0, Lps;->o:I

    const/16 v2, 0x1300

    .line 236
    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    .line 237
    sget-object v1, Lnw;->a:Lnw;

    const/4 v2, 0x0

    .line 238
    :goto_f
    iget-object v3, p0, Lps;->k:[Ltz;

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 239
    aget-object v3, v3, v2

    invoke-virtual {v3, v1, p1}, Ltz;->a(Lnw;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 241
    :cond_1c
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    .line 243
    iput-boolean v0, p0, Lps;->n:Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 6

    .line 179
    iget-boolean v0, p0, Lps;->i:Z

    if-eqz v0, :cond_5

    return-void

    .line 180
    :cond_5
    iget-boolean v0, p0, Lps;->h:Z

    if-nez v0, :cond_a

    return-void

    .line 181
    :cond_a
    iget-boolean v0, p0, Lps;->n:Z

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lps;->d(F)V

    .line 183
    :cond_11
    iget v0, p0, Lps;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5d

    iget v0, p0, Lps;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5d

    iget v0, p0, Lps;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    goto :goto_5d

    .line 191
    :cond_25
    iget v0, p0, Lps;->a:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_3e

    iget v2, p0, Lps;->b:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3e

    iget v2, p0, Lps;->c:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_38

    goto :goto_3e

    .line 196
    :cond_38
    iget p1, p0, Lps;->o:I

    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    goto :goto_97

    :cond_3e
    :goto_3e
    mul-float/2addr v0, p1

    .line 192
    iget v1, p0, Lps;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lps;->c:F

    mul-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 193
    iget v0, p0, Lps;->o:I

    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    .line 194
    iget v0, p0, Lps;->a:F

    neg-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lps;->b:F

    neg-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lps;->c:F

    neg-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    goto :goto_97

    .line 184
    :cond_5d
    :goto_5d
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 185
    iget v0, p0, Lps;->a:F

    mul-float/2addr v0, p1

    iget v2, p0, Lps;->b:F

    mul-float/2addr v2, p1

    iget v3, p0, Lps;->c:F

    mul-float/2addr v3, p1

    invoke-static {v0, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 186
    iget p1, p0, Lps;->f:F

    cmpl-float v0, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x42652ee0

    if-eqz v0, :cond_7b

    mul-float/2addr p1, v3

    invoke-static {p1, v1, v1, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 187
    :cond_7b
    iget p1, p0, Lps;->e:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_85

    mul-float/2addr p1, v3

    invoke-static {p1, v1, v2, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 188
    :cond_85
    iget p1, p0, Lps;->d:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_8f

    mul-float/2addr p1, v3

    invoke-static {p1, v2, v1, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 189
    :cond_8f
    iget p1, p0, Lps;->o:I

    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    .line 190
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    :goto_97
    return-void
.end method

.method public a(FFF)V
    .registers 4

    .line 171
    iput p1, p0, Lps;->a:F

    .line 172
    iput p2, p0, Lps;->b:F

    .line 173
    iput p3, p0, Lps;->c:F

    return-void
.end method

.method public a(FFFIII)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 41
    invoke-virtual/range {v0 .. v7}, Lps;->a(FFFIIIF)V

    return-void
.end method

.method public a(FFFIIIF)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    const/16 v4, 0x8

    new-array v4, v4, [Lib;

    .line 45
    iput-object v4, v0, Lps;->j:[Lib;

    const/4 v4, 0x6

    new-array v5, v4, [Ltz;

    .line 46
    iput-object v5, v0, Lps;->k:[Ltz;

    int-to-float v5, v1

    add-float v5, p1, v5

    int-to-float v6, v2

    add-float v6, p2, v6

    int-to-float v7, v3

    add-float v7, p3, v7

    sub-float v8, p1, p7

    sub-float v15, p2, p7

    sub-float v16, p3, p7

    add-float v5, v5, p7

    add-float v6, v6, p7

    add-float v7, v7, p7

    .line 59
    iget-boolean v9, v0, Lps;->g:Z

    if-eqz v9, :cond_31

    move/from16 v23, v8

    move v8, v5

    move/from16 v5, v23

    .line 65
    :cond_31
    new-instance v14, Lib;

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v9, v14

    move v10, v8

    move v11, v15

    move/from16 v12, v16

    move-object v4, v14

    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 66
    new-instance v14, Lib;

    const/high16 v17, 0x41000000    # 8.0f

    move-object v9, v14

    move v10, v5

    move-object v2, v14

    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 67
    new-instance v14, Lib;

    const/high16 v13, 0x41000000    # 8.0f

    move-object v9, v14

    move v11, v6

    move-object v1, v14

    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 68
    new-instance v14, Lib;

    const/16 v17, 0x0

    move-object v9, v14

    move v10, v8

    move-object v3, v14

    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 70
    new-instance v14, Lib;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v9, v14

    move v11, v15

    move v12, v7

    move-object/from16 v19, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 71
    new-instance v14, Lib;

    const/high16 v16, 0x41000000    # 8.0f

    move-object v9, v14

    move v10, v5

    move-object v15, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 72
    new-instance v14, Lib;

    const/high16 v13, 0x41000000    # 8.0f

    move-object v9, v14

    move v11, v6

    move-object v5, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 73
    new-instance v14, Lib;

    const/16 v16, 0x0

    move-object v9, v14

    move v10, v8

    move-object v6, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lib;-><init>(FFFFF)V

    .line 75
    iget-object v7, v0, Lps;->j:[Lib;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v9, 0x1

    .line 76
    aput-object v2, v7, v9

    const/4 v10, 0x2

    .line 77
    aput-object v1, v7, v10

    const/4 v11, 0x3

    .line 78
    aput-object v3, v7, v11

    const/4 v12, 0x4

    move-object/from16 v13, v19

    .line 79
    aput-object v13, v7, v12

    const/4 v14, 0x5

    .line 80
    aput-object v15, v7, v14

    const/16 v16, 0x6

    .line 81
    aput-object v5, v7, v16

    const/16 v16, 0x7

    .line 82
    aput-object v6, v7, v16

    .line 84
    iget-object v7, v0, Lps;->k:[Ltz;

    new-instance v22, Ltz;

    filled-new-array {v15, v2, v1, v5}, [Lib;

    move-result-object v17

    iget v14, v0, Lps;->l:I

    add-int v16, v14, p6

    add-int v18, v16, p4

    iget v12, v0, Lps;->m:I

    add-int v19, v12, p6

    add-int v14, v14, p6

    add-int v14, v14, p4

    add-int v20, v14, p6

    add-int v12, v12, p6

    add-int v21, v12, p5

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v21}, Ltz;-><init>([Lib;IIII)V

    aput-object v22, v7, v8

    .line 87
    iget-object v7, v0, Lps;->k:[Ltz;

    new-instance v12, Ltz;

    filled-new-array {v4, v13, v6, v3}, [Lib;

    move-result-object v17

    iget v14, v0, Lps;->l:I

    add-int/lit8 v18, v14, 0x0

    iget v8, v0, Lps;->m:I

    add-int v19, v8, p6

    add-int v20, v14, p6

    add-int v8, v8, p6

    add-int v21, v8, p5

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v21}, Ltz;-><init>([Lib;IIII)V

    aput-object v12, v7, v9

    .line 92
    iget-object v7, v0, Lps;->k:[Ltz;

    new-instance v8, Ltz;

    filled-new-array {v15, v13, v4, v2}, [Lib;

    move-result-object v17

    iget v9, v0, Lps;->l:I

    add-int v18, v9, p6

    iget v12, v0, Lps;->m:I

    add-int/lit8 v19, v12, 0x0

    add-int v9, v9, p6

    add-int v20, v9, p4

    add-int v21, v12, p6

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Ltz;-><init>([Lib;IIII)V

    aput-object v8, v7, v10

    .line 95
    iget-object v7, v0, Lps;->k:[Ltz;

    new-instance v8, Ltz;

    filled-new-array {v1, v3, v6, v5}, [Lib;

    move-result-object v17

    iget v9, v0, Lps;->l:I

    add-int v10, v9, p6

    add-int v18, v10, p4

    iget v10, v0, Lps;->m:I

    add-int/lit8 v19, v10, 0x0

    add-int v9, v9, p6

    add-int v9, v9, p4

    add-int v20, v9, p4

    add-int v21, v10, p6

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Ltz;-><init>([Lib;IIII)V

    aput-object v8, v7, v11

    .line 99
    iget-object v7, v0, Lps;->k:[Ltz;

    new-instance v8, Ltz;

    filled-new-array {v2, v4, v3, v1}, [Lib;

    move-result-object v17

    iget v1, v0, Lps;->l:I

    add-int v18, v1, p6

    iget v2, v0, Lps;->m:I

    add-int v19, v2, p6

    add-int v1, v1, p6

    add-int v20, v1, p4

    add-int v2, v2, p6

    add-int v21, v2, p5

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Ltz;-><init>([Lib;IIII)V

    const/4 v1, 0x4

    aput-object v8, v7, v1

    .line 102
    iget-object v1, v0, Lps;->k:[Ltz;

    new-instance v2, Ltz;

    filled-new-array {v13, v15, v5, v6}, [Lib;

    move-result-object v8

    iget v3, v0, Lps;->l:I

    add-int v4, v3, p6

    add-int v4, v4, p4

    add-int v9, v4, p6

    iget v4, v0, Lps;->m:I

    add-int v10, v4, p6

    add-int v3, v3, p6

    add-int v3, v3, p4

    add-int v3, v3, p6

    add-int v11, v3, p4

    add-int v4, v4, p6

    add-int v12, v4, p5

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Ltz;-><init>([Lib;IIII)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 106
    iget-boolean v1, v0, Lps;->g:Z

    if-eqz v1, :cond_18d

    const/4 v8, 0x0

    .line 107
    :goto_180
    iget-object v1, v0, Lps;->k:[Ltz;

    array-length v2, v1

    if-ge v8, v2, :cond_18d

    .line 108
    aget-object v1, v1, v8

    invoke-virtual {v1}, Ltz;->a()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_180

    :cond_18d
    return-void
.end method

.method public b(F)V
    .registers 6

    .line 201
    iget-boolean v0, p0, Lps;->i:Z

    if-eqz v0, :cond_5

    return-void

    .line 202
    :cond_5
    iget-boolean v0, p0, Lps;->h:Z

    if-nez v0, :cond_a

    return-void

    .line 203
    :cond_a
    iget-boolean v0, p0, Lps;->n:Z

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lps;->d(F)V

    .line 205
    :cond_11
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 206
    iget v0, p0, Lps;->a:F

    mul-float/2addr v0, p1

    iget v1, p0, Lps;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lps;->c:F

    mul-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 207
    iget p1, p0, Lps;->e:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x42652ee0

    if-eqz v1, :cond_30

    mul-float/2addr p1, v3

    invoke-static {p1, v0, v2, v0}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 208
    :cond_30
    iget p1, p0, Lps;->d:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_3a

    mul-float/2addr p1, v3

    invoke-static {p1, v2, v0, v0}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 209
    :cond_3a
    iget p1, p0, Lps;->f:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_44

    mul-float/2addr p1, v3

    invoke-static {p1, v0, v0, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 210
    :cond_44
    iget p1, p0, Lps;->o:I

    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    .line 211
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public c(F)V
    .registers 6

    .line 216
    iget-boolean v0, p0, Lps;->i:Z

    if-eqz v0, :cond_5

    return-void

    .line 217
    :cond_5
    iget-boolean v0, p0, Lps;->h:Z

    if-nez v0, :cond_a

    return-void

    .line 218
    :cond_a
    iget-boolean v0, p0, Lps;->n:Z

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lps;->d(F)V

    .line 220
    :cond_11
    iget v0, p0, Lps;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_42

    iget v0, p0, Lps;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_42

    iget v0, p0, Lps;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    goto :goto_42

    .line 225
    :cond_25
    iget v0, p0, Lps;->a:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_37

    iget v2, p0, Lps;->b:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_37

    iget v2, p0, Lps;->c:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_71

    :cond_37
    mul-float/2addr v0, p1

    .line 226
    iget v1, p0, Lps;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lps;->c:F

    mul-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    goto :goto_71

    .line 221
    :cond_42
    :goto_42
    iget v0, p0, Lps;->a:F

    mul-float/2addr v0, p1

    iget v2, p0, Lps;->b:F

    mul-float/2addr v2, p1

    iget v3, p0, Lps;->c:F

    mul-float/2addr v3, p1

    invoke-static {v0, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 222
    iget p1, p0, Lps;->f:F

    cmpl-float v0, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x42652ee0

    if-eqz v0, :cond_5d

    mul-float/2addr p1, v3

    invoke-static {p1, v1, v1, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 223
    :cond_5d
    iget p1, p0, Lps;->e:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_67

    mul-float/2addr p1, v3

    invoke-static {p1, v1, v2, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 224
    :cond_67
    iget p1, p0, Lps;->d:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_71

    mul-float/2addr p1, v3

    invoke-static {p1, v2, v1, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    :cond_71
    :goto_71
    return-void
.end method
