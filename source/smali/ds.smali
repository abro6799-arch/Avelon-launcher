###### Class defpackage.ds (ds)
.class public Lds;
.super Lgv;
.source "SourceFile"


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field private a:Lfh;

.field private g:Lfh;

.field private h:Lfh;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "diamond"

    const-string v1, "gold"

    const-string v2, "cloth"

    const-string v3, "chain"

    const-string v4, "iron"

    .line 31
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lds;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 23
    new-instance v0, Lfh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfh;-><init>(F)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lgv;-><init>(Lko;F)V

    .line 25
    iget-object v0, p0, Lds;->e:Lko;

    check-cast v0, Lfh;

    iput-object v0, p0, Lds;->a:Lfh;

    .line 27
    new-instance v0, Lfh;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2}, Lfh;-><init>(F)V

    iput-object v0, p0, Lds;->g:Lfh;

    .line 28
    new-instance v0, Lfh;

    invoke-direct {v0, v1}, Lfh;-><init>(F)V

    iput-object v0, p0, Lds;->h:Lfh;

    return-void
.end method


# virtual methods
.method protected a(Lgs;DDD)V
    .registers 26

    move-object/from16 v10, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    .line 89
    invoke-static {}, Lnet/minecraft/client/Minecraft;->t()Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, v10, Lds;->b:Lth;

    iget-object v0, v0, Lth;->h:Lls;

    if-eq v1, v0, :cond_108

    .line 92
    iget-object v0, v10, Lds;->b:Lth;

    iget-object v0, v0, Lth;->h:Lls;

    invoke-virtual {v1, v0}, Lgs;->f(Lsn;)F

    move-result v0

    .line 94
    invoke-virtual/range {p1 .. p1}, Lgs;->t()Z

    move-result v2

    if-eqz v2, :cond_23

    const/high16 v2, 0x42000000    # 32.0f

    goto :goto_25

    :cond_23
    const/high16 v2, 0x42800000    # 64.0f

    :goto_25
    cmpg-float v0, v0, v2

    if-gez v0, :cond_108

    .line 98
    iget-object v2, v1, Lgs;->l:Ljava/lang/String;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lgs;->t()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 101
    invoke-virtual/range {p1 .. p1}, Lgs;->N()Z

    move-result v0

    if-eqz v0, :cond_49

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v5, v3

    const/16 v9, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-wide/from16 v7, p6

    .line 102
    invoke-virtual/range {v0 .. v9}, Lds;->a(Lls;Ljava/lang/String;DDDI)V

    goto/16 :goto_108

    :cond_49
    const/16 v9, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 104
    invoke-virtual/range {v0 .. v9}, Lds;->a(Lls;Ljava/lang/String;DDDI)V

    goto/16 :goto_108

    .line 107
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lds;->a()Lsj;

    move-result-object v0

    .line 108
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v3, p2

    double-to-float v1, v3

    const/4 v3, 0x0

    add-float/2addr v1, v3

    double-to-float v4, v5

    const v5, 0x40133333    # 2.3f

    add-float/2addr v4, v5

    move-wide/from16 v5, p6

    double-to-float v5, v5

    .line 109
    invoke-static {v1, v4, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    invoke-static {v3, v1, v3}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 112
    iget-object v4, v10, Lds;->b:Lth;

    iget v4, v4, Lth;->i:F

    neg-float v4, v4

    invoke-static {v4, v3, v1, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 113
    iget-object v4, v10, Lds;->b:Lth;

    iget v4, v4, Lth;->j:F

    invoke-static {v4, v1, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v4, -0x43258bf1

    const v5, 0x3cda740f

    .line 115
    invoke-static {v4, v4, v5}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/16 v4, 0xb50

    .line 116
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const v5, 0x4115ffff    # 9.374999f

    .line 118
    invoke-static {v3, v5, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/4 v5, 0x0

    .line 119
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v6, 0xbe2

    .line 120
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v7, 0x302

    const/16 v8, 0x303

    .line 121
    invoke-static {v7, v8}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 122
    sget-object v7, Lnw;->a:Lnw;

    const/16 v8, 0xde1

    .line 124
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 125
    invoke-virtual {v7}, Lnw;->b()V

    .line 126
    invoke-virtual {v0, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    const/high16 v11, 0x3e800000    # 0.25f

    .line 127
    invoke-virtual {v7, v3, v3, v3, v11}, Lnw;->a(FFFF)V

    neg-int v3, v9

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    int-to-double v12, v3

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const-wide/16 v16, 0x0

    move-object/from16 p1, v7

    move-wide/from16 p2, v12

    move-wide/from16 p4, v14

    move-wide/from16 p6, v16

    .line 128
    invoke-virtual/range {p1 .. p7}, Lnw;->a(DDD)V

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    move-wide/from16 p4, v14

    .line 129
    invoke-virtual/range {p1 .. p7}, Lnw;->a(DDD)V

    add-int/2addr v9, v11

    int-to-double v12, v9

    move-wide/from16 p2, v12

    .line 130
    invoke-virtual/range {p1 .. p7}, Lnw;->a(DDD)V

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide/from16 p4, v14

    .line 131
    invoke-virtual/range {p1 .. p7}, Lnw;->a(DDD)V

    .line 132
    invoke-virtual {v7}, Lnw;->a()V

    .line 133
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 134
    invoke-static {v11}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 135
    invoke-virtual {v0, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const v7, 0x20ffffff

    invoke-virtual {v0, v2, v3, v5, v7}, Lsj;->b(Ljava/lang/String;III)V

    .line 136
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 137
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 138
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 139
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    :cond_108
    :goto_108
    return-void
.end method

.method public a(Lgs;DDDFF)V
    .registers 22

    move-object v10, p0

    move-object v1, p1

    .line 73
    iget-object v0, v1, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    .line 74
    iget-object v2, v10, Lds;->g:Lfh;

    iget-object v3, v10, Lds;->h:Lfh;

    iget-object v4, v10, Lds;->a:Lfh;

    const/4 v11, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v11

    :goto_14
    iput-boolean v0, v4, Lfh;->k:Z

    iput-boolean v0, v3, Lfh;->k:Z

    iput-boolean v0, v2, Lfh;->k:Z

    .line 75
    iget-object v0, v10, Lds;->g:Lfh;

    iget-object v2, v10, Lds;->h:Lfh;

    iget-object v3, v10, Lds;->a:Lfh;

    invoke-virtual {p1}, Lgs;->t()Z

    move-result v4

    iput-boolean v4, v3, Lfh;->l:Z

    iput-boolean v4, v2, Lfh;->l:Z

    iput-boolean v4, v0, Lfh;->l:Z

    .line 77
    iget v0, v1, Lgs;->bf:F

    float-to-double v2, v0

    sub-double v2, p4, v2

    .line 78
    invoke-virtual {p1}, Lgs;->t()Z

    move-result v0

    if-eqz v0, :cond_3c

    instance-of v0, v1, Ldc;

    if-nez v0, :cond_3c

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    sub-double/2addr v2, v4

    :cond_3c
    move-wide v4, v2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 81
    invoke-super/range {v0 .. v9}, Lgv;->a(Lls;DDDFF)V

    .line 82
    iget-object v0, v10, Lds;->g:Lfh;

    iget-object v1, v10, Lds;->h:Lfh;

    iget-object v2, v10, Lds;->a:Lfh;

    iput-boolean v11, v2, Lfh;->l:Z

    iput-boolean v11, v1, Lfh;->l:Z

    iput-boolean v11, v0, Lfh;->l:Z

    .line 83
    iget-object v0, v10, Lds;->g:Lfh;

    iget-object v1, v10, Lds;->h:Lfh;

    iget-object v2, v10, Lds;->a:Lfh;

    iput-boolean v11, v2, Lfh;->k:Z

    iput-boolean v11, v1, Lfh;->k:Z

    iput-boolean v11, v0, Lfh;->k:Z

    return-void
.end method

.method protected a(Lgs;F)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 146
    iget-object v3, v1, Lgs;->c:Lix;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lix;->d(I)Liz;

    move-result-object v3

    const/high16 v4, -0x40e00000    # -0.625f

    const/high16 v5, 0x3f200000    # 0.625f

    const/16 v6, 0x100

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x3d800000    # 0.0625f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v3, :cond_53

    .line 147
    invoke-virtual {v3}, Liz;->a()Lgm;

    move-result-object v11

    iget v11, v11, Lgm;->bf:I

    if-ge v11, v6, :cond_53

    .line 148
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 149
    iget-object v11, v0, Lds;->a:Lfh;

    iget-object v11, v11, Lfh;->a:Lps;

    invoke-virtual {v11, v8}, Lps;->c(F)V

    .line 151
    sget-object v11, Luu;->m:[Luu;

    iget v12, v3, Liz;->c:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Luu;->b()I

    move-result v11

    invoke-static {v11}, Lcv;->a(I)Z

    move-result v11

    if-eqz v11, :cond_49

    const/high16 v11, -0x41800000    # -0.25f

    .line 153
    invoke-static {v10, v11, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 154
    invoke-static {v7, v10, v9, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 155
    invoke-static {v5, v4, v5}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 158
    :cond_49
    iget-object v11, v0, Lds;->b:Lth;

    iget-object v11, v11, Lth;->f:Lra;

    invoke-virtual {v11, v1, v3}, Lra;->a(Lls;Liz;)V

    .line 160
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 163
    :cond_53
    iget-object v3, v1, Lgs;->l:Ljava/lang/String;

    const-string v11, "deadmau5"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v11, -0x41400000    # -0.375f

    const/4 v12, 0x0

    const/high16 v13, 0x3ec00000    # 0.375f

    if-eqz v3, :cond_bc

    iget-object v3, v1, Lgs;->bA:Ljava/lang/String;

    invoke-virtual {v0, v3, v12}, Lds;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    const/4 v3, 0x0

    :goto_6b
    const/4 v14, 0x2

    if-ge v3, v14, :cond_bc

    .line 165
    iget v14, v1, Lgs;->aU:F

    iget v15, v1, Lgs;->aS:F

    iget v4, v1, Lgs;->aU:F

    sub-float/2addr v15, v4

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    iget v4, v1, Lgs;->I:F

    iget v15, v1, Lgs;->H:F

    iget v5, v1, Lgs;->I:F

    sub-float/2addr v15, v5

    mul-float/2addr v15, v2

    add-float/2addr v4, v15

    sub-float/2addr v14, v4

    .line 166
    iget v4, v1, Lgs;->aV:F

    iget v5, v1, Lgs;->aT:F

    iget v15, v1, Lgs;->aV:F

    sub-float/2addr v5, v15

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 167
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 168
    invoke-static {v14, v10, v9, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 169
    invoke-static {v4, v9, v10, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v13

    .line 170
    invoke-static {v5, v10, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 171
    invoke-static {v10, v11, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    neg-float v4, v4

    .line 172
    invoke-static {v4, v9, v10, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float v4, v14

    .line 173
    invoke-static {v4, v10, v9, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v4, 0x3faaaaab

    .line 176
    invoke-static {v4, v4, v4}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 177
    iget-object v4, v0, Lds;->a:Lfh;

    invoke-virtual {v4, v8}, Lfh;->a(F)V

    .line 178
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    add-int/lit8 v3, v3, 0x1

    const/high16 v4, -0x40e00000    # -0.625f

    const/high16 v5, 0x3f200000    # 0.625f

    goto :goto_6b

    .line 183
    :cond_bc
    iget-object v3, v1, Lgs;->n:Ljava/lang/String;

    invoke-virtual {v0, v3, v12}, Lds;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_197

    .line 184
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v3, 0x3e000000    # 0.125f

    .line 185
    invoke-static {v10, v10, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 187
    iget-wide v3, v1, Lgs;->o:D

    iget-wide v14, v1, Lgs;->r:D

    iget-wide v11, v1, Lgs;->o:D

    sub-double/2addr v14, v11

    float-to-double v11, v2

    mul-double/2addr v14, v11

    add-double/2addr v3, v14

    iget-wide v14, v1, Lgs;->aJ:D

    iget-wide v5, v1, Lgs;->aM:D

    iget-wide v8, v1, Lgs;->aJ:D

    sub-double/2addr v5, v8

    mul-double/2addr v5, v11

    add-double/2addr v14, v5

    sub-double/2addr v3, v14

    .line 188
    iget-wide v5, v1, Lgs;->p:D

    iget-wide v8, v1, Lgs;->s:D

    iget-wide v14, v1, Lgs;->p:D

    sub-double/2addr v8, v14

    mul-double/2addr v8, v11

    add-double/2addr v5, v8

    iget-wide v8, v1, Lgs;->aK:D

    iget-wide v14, v1, Lgs;->aN:D

    move-wide/from16 v16, v8

    iget-wide v7, v1, Lgs;->aK:D

    sub-double/2addr v14, v7

    mul-double/2addr v14, v11

    add-double v8, v16, v14

    sub-double/2addr v5, v8

    .line 189
    iget-wide v7, v1, Lgs;->q:D

    iget-wide v14, v1, Lgs;->t:D

    iget-wide v9, v1, Lgs;->q:D

    sub-double/2addr v14, v9

    mul-double/2addr v14, v11

    add-double/2addr v7, v14

    iget-wide v9, v1, Lgs;->aL:D

    iget-wide v14, v1, Lgs;->aO:D

    move-wide/from16 v17, v3

    iget-wide v3, v1, Lgs;->aL:D

    sub-double/2addr v14, v3

    mul-double/2addr v14, v11

    add-double/2addr v9, v14

    sub-double/2addr v7, v9

    .line 191
    iget v3, v1, Lgs;->I:F

    iget v4, v1, Lgs;->H:F

    iget v9, v1, Lgs;->I:F

    sub-float/2addr v4, v9

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v3, v4

    .line 193
    invoke-static {v3}, Lin;->a(F)F

    move-result v4

    float-to-double v9, v4

    .line 194
    invoke-static {v3}, Lin;->b(F)F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    double-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    const/high16 v6, -0x3f400000    # -6.0f

    cmpg-float v11, v5, v6

    if-gez v11, :cond_131

    move v5, v6

    :cond_131
    const/high16 v6, 0x42000000    # 32.0f

    cmpl-float v11, v5, v6

    if-lez v11, :cond_138

    move v5, v6

    :cond_138
    mul-double v11, v17, v9

    mul-double v14, v7, v3

    add-double/2addr v11, v14

    double-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    mul-double v3, v3, v17

    mul-double/2addr v7, v9

    sub-double/2addr v3, v7

    double-to-float v3, v3

    mul-float/2addr v3, v12

    const/4 v4, 0x0

    cmpg-float v7, v11, v4

    if-gez v7, :cond_14d

    const/4 v11, 0x0

    .line 203
    :cond_14d
    iget v4, v1, Lgs;->h:F

    iget v7, v1, Lgs;->i:F

    iget v8, v1, Lgs;->h:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    .line 205
    iget v7, v1, Lgs;->bi:F

    iget v8, v1, Lgs;->bj:F

    iget v9, v1, Lgs;->bi:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v7, v2

    invoke-static {v7}, Lin;->a(F)F

    move-result v7

    mul-float/2addr v7, v6

    mul-float/2addr v7, v4

    add-float/2addr v5, v7

    .line 206
    invoke-virtual/range {p1 .. p1}, Lgs;->t()Z

    move-result v4

    if-eqz v4, :cond_172

    const/high16 v4, 0x41c80000    # 25.0f

    add-float/2addr v5, v4

    :cond_172
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v11, v4

    add-float/2addr v11, v2

    add-float/2addr v11, v5

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 210
    invoke-static {v11, v2, v5, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    div-float v6, v3, v4

    .line 211
    invoke-static {v6, v5, v5, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float v3, v3

    div-float/2addr v3, v4

    .line 212
    invoke-static {v3, v5, v2, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 213
    invoke-static {v3, v5, v2, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 214
    iget-object v2, v0, Lds;->a:Lfh;

    const/high16 v3, 0x3d800000    # 0.0625f

    invoke-virtual {v2, v3}, Lfh;->b(F)V

    .line 215
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    goto :goto_198

    :cond_197
    move v3, v8

    .line 218
    :goto_198
    iget-object v2, v1, Lgs;->c:Lix;

    invoke-virtual {v2}, Lix;->b()Liz;

    move-result-object v2

    if-eqz v2, :cond_24c

    .line 221
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 222
    iget-object v4, v0, Lds;->a:Lfh;

    iget-object v4, v4, Lfh;->d:Lps;

    invoke-virtual {v4, v3}, Lps;->c(F)V

    const/high16 v4, -0x42800000    # -0.0625f

    const/high16 v5, 0x3ee00000    # 0.4375f

    .line 223
    invoke-static {v4, v5, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 225
    iget-object v3, v1, Lgs;->D:Llx;

    if-eqz v3, :cond_1bc

    .line 226
    new-instance v2, Liz;

    sget-object v3, Lgm;->B:Lgm;

    invoke-direct {v2, v3}, Liz;-><init>(Lgm;)V

    .line 229
    :cond_1bc
    iget v3, v2, Liz;->c:I

    const/high16 v4, 0x42340000    # 45.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x3e400000    # 0.1875f

    const/16 v7, 0x100

    if-ge v3, v7, :cond_1ec

    sget-object v3, Luu;->m:[Luu;

    iget v7, v2, Liz;->c:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Luu;->b()I

    move-result v3

    invoke-static {v3}, Lcv;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1ec

    const/high16 v3, -0x41600000    # -0.3125f

    const/4 v7, 0x0

    .line 231
    invoke-static {v7, v6, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 233
    invoke-static {v5, v3, v7, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 234
    invoke-static {v4, v7, v3, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v3, -0x41400000    # -0.375f

    .line 235
    invoke-static {v13, v3, v13}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    goto :goto_242

    .line 236
    :cond_1ec
    sget-object v3, Lgm;->c:[Lgm;

    iget v7, v2, Liz;->c:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lgm;->b()Z

    move-result v3

    if-eqz v3, :cond_228

    .line 238
    sget-object v3, Lgm;->c:[Lgm;

    iget v5, v2, Liz;->c:I

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lgm;->c()Z

    move-result v3

    if-eqz v3, :cond_212

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 239
    invoke-static {v3, v8, v8, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v3, -0x42000000    # -0.125f

    .line 240
    invoke-static {v8, v3, v8}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    goto :goto_215

    :cond_212
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 242
    :goto_215
    invoke-static {v8, v6, v8}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v3, -0x40e00000    # -0.625f

    const/high16 v5, 0x3f200000    # 0.625f

    .line 243
    invoke-static {v5, v3, v5}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v3, -0x3d380000    # -100.0f

    .line 244
    invoke-static {v3, v7, v8, v8}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 245
    invoke-static {v4, v8, v7, v8}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    goto :goto_242

    :cond_228
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, -0x41c00000    # -0.1875f

    .line 248
    invoke-static {v3, v6, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 249
    invoke-static {v13, v13, v13}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v3, 0x42700000    # 60.0f

    .line 250
    invoke-static {v3, v8, v8, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 251
    invoke-static {v3, v7, v8, v8}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 252
    invoke-static {v5, v8, v8, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 256
    :goto_242
    iget-object v3, v0, Lds;->b:Lth;

    iget-object v3, v3, Lth;->f:Lra;

    invoke-virtual {v3, v1, v2}, Lra;->a(Lls;Liz;)V

    .line 257
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    :cond_24c
    return-void
.end method

.method protected a(Lgs;FFF)V
    .registers 6

    .line 286
    invoke-virtual {p1}, Lgs;->W()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lgs;->N()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 287
    invoke-virtual {p1}, Lgs;->M()F

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p4, p3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 288
    invoke-virtual {p0, p1}, Lds;->a(Lls;)F

    move-result p1

    invoke-static {p1, p3, p3, p4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 289
    invoke-static {p1, p3, p4, p3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    goto :goto_26

    .line 291
    :cond_23
    invoke-super {p0, p1, p2, p3, p4}, Lgv;->a(Lls;FFF)V

    :goto_26
    return-void
.end method

.method protected bridge synthetic a(Lls;DDD)V
    .registers 8

    .line 17
    check-cast p1, Lgs;

    invoke-virtual/range {p0 .. p7}, Lds;->a(Lgs;DDD)V

    return-void
.end method

.method public bridge synthetic a(Lls;DDDFF)V
    .registers 10

    .line 17
    check-cast p1, Lgs;

    invoke-virtual/range {p0 .. p9}, Lds;->a(Lgs;DDDFF)V

    return-void
.end method

.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 17
    check-cast p1, Lgs;

    invoke-virtual {p0, p1, p2}, Lds;->b(Lgs;F)V

    return-void
.end method

.method protected bridge synthetic a(Lls;FFF)V
    .registers 5

    .line 17
    check-cast p1, Lgs;

    invoke-virtual {p0, p1, p2, p3, p4}, Lds;->a(Lgs;FFF)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 17
    check-cast p1, Lgs;

    invoke-virtual/range {p0 .. p9}, Lds;->a(Lgs;DDDFF)V

    return-void
.end method

.method protected a(Lgs;IF)Z
    .registers 9

    .line 36
    iget-object p1, p1, Lgs;->c:Lix;

    rsub-int/lit8 p3, p2, 0x3

    invoke-virtual {p1, p3}, Lix;->d(I)Liz;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_91

    .line 38
    invoke-virtual {p1}, Liz;->a()Lgm;

    move-result-object p1

    .line 39
    instance-of v0, p1, Lwa;

    if-eqz v0, :cond_91

    .line 40
    check-cast p1, Lwa;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/armor/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lds;->i:[Ljava/lang/String;

    iget p1, p1, Lwa;->bm:I

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-ne p2, p1, :cond_30

    move v2, p1

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lds;->a(Ljava/lang/String;)V

    if-ne p2, p1, :cond_45

    .line 43
    iget-object v0, p0, Lds;->h:Lfh;

    goto :goto_47

    :cond_45
    iget-object v0, p0, Lds;->g:Lfh;

    .line 45
    :goto_47
    iget-object v2, v0, Lfh;->a:Lps;

    if-nez p2, :cond_4d

    move v3, v1

    goto :goto_4e

    :cond_4d
    move v3, p3

    :goto_4e
    iput-boolean v3, v2, Lps;->h:Z

    .line 46
    iget-object v2, v0, Lfh;->b:Lps;

    if-nez p2, :cond_56

    move v3, v1

    goto :goto_57

    :cond_56
    move v3, p3

    :goto_57
    iput-boolean v3, v2, Lps;->h:Z

    .line 47
    iget-object v2, v0, Lfh;->c:Lps;

    if-eq p2, v1, :cond_62

    if-ne p2, p1, :cond_60

    goto :goto_62

    :cond_60
    move v3, p3

    goto :goto_63

    :cond_62
    :goto_62
    move v3, v1

    :goto_63
    iput-boolean v3, v2, Lps;->h:Z

    .line 48
    iget-object v2, v0, Lfh;->d:Lps;

    if-ne p2, v1, :cond_6b

    move v3, v1

    goto :goto_6c

    :cond_6b
    move v3, p3

    :goto_6c
    iput-boolean v3, v2, Lps;->h:Z

    .line 49
    iget-object v2, v0, Lfh;->e:Lps;

    if-ne p2, v1, :cond_74

    move v3, v1

    goto :goto_75

    :cond_74
    move v3, p3

    :goto_75
    iput-boolean v3, v2, Lps;->h:Z

    .line 50
    iget-object v2, v0, Lfh;->f:Lps;

    const/4 v3, 0x3

    if-eq p2, p1, :cond_81

    if-ne p2, v3, :cond_7f

    goto :goto_81

    :cond_7f
    move v4, p3

    goto :goto_82

    :cond_81
    :goto_81
    move v4, v1

    :goto_82
    iput-boolean v4, v2, Lps;->h:Z

    .line 51
    iget-object v2, v0, Lfh;->g:Lps;

    if-eq p2, p1, :cond_8a

    if-ne p2, v3, :cond_8b

    :cond_8a
    move p3, v1

    :cond_8b
    iput-boolean p3, v2, Lps;->h:Z

    .line 53
    invoke-virtual {p0, v0}, Lds;->a(Lko;)V

    return v1

    :cond_91
    return p3
.end method

.method protected bridge synthetic a(Lls;IF)Z
    .registers 4

    .line 17
    check-cast p1, Lgs;

    invoke-virtual {p0, p1, p2, p3}, Lds;->a(Lgs;IF)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 10

    .line 268
    iget-object v0, p0, Lds;->a:Lfh;

    const/4 v1, 0x0

    iput v1, v0, Lfh;->m:F

    .line 269
    iget-object v2, p0, Lds;->a:Lfh;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3d800000    # 0.0625f

    invoke-virtual/range {v2 .. v8}, Lfh;->b(FFFFFF)V

    .line 270
    iget-object v0, p0, Lds;->a:Lfh;

    iget-object v0, v0, Lfh;->d:Lps;

    const/high16 v1, 0x3d800000    # 0.0625f

    invoke-virtual {v0, v1}, Lps;->a(F)V

    return-void
.end method

.method protected b(Lgs;DDD)V
    .registers 16

    .line 275
    invoke-virtual {p1}, Lgs;->W()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lgs;->N()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 276
    iget v0, p1, Lgs;->w:F

    float-to-double v2, v0

    add-double/2addr v2, p2

    iget v0, p1, Lgs;->x:F

    float-to-double v4, v0

    add-double/2addr v4, p4

    iget v0, p1, Lgs;->y:F

    float-to-double v6, v0

    add-double/2addr v6, p6

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v7}, Lgv;->b(Lls;DDD)V

    goto :goto_21

    .line 279
    :cond_1e
    invoke-super/range {p0 .. p7}, Lgv;->b(Lls;DDD)V

    :goto_21
    return-void
.end method

.method protected b(Lgs;F)V
    .registers 3

    const/high16 p1, 0x3f700000    # 0.9375f

    .line 263
    invoke-static {p1, p1, p1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    return-void
.end method

.method protected bridge synthetic b(Lls;DDD)V
    .registers 8

    .line 17
    check-cast p1, Lgs;

    invoke-virtual/range {p0 .. p7}, Lds;->b(Lgs;DDD)V

    return-void
.end method

.method protected bridge synthetic b(Lls;F)V
    .registers 3

    .line 17
    check-cast p1, Lgs;

    invoke-virtual {p0, p1, p2}, Lds;->a(Lgs;F)V

    return-void
.end method
