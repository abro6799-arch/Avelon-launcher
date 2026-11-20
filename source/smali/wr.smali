###### Class defpackage.wr (wr)
.class public Lwr;
.super Lcp;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcp;-><init>(I)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lwr;->d(I)Lgm;

    return-void
.end method

.method public static a(SLfd;)Liu;
    .registers 5

    .line 25
    const-class v0, Liu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lfd;->a(Ljava/lang/Class;Ljava/lang/String;)Lhm;

    move-result-object p0

    check-cast p0, Liu;

    if-nez p0, :cond_33

    const-string p0, "map"

    .line 28
    invoke-virtual {p1, p0}, Lfd;->b(Ljava/lang/String;)I

    move-result p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance v0, Liu;

    invoke-direct {v0, p0}, Liu;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, p0, v0}, Lfd;->a(Ljava/lang/String;Lhm;)V

    move-object p0, v0

    :cond_33
    return-object p0
.end method


# virtual methods
.method public a(Liz;Lfd;)Liu;
    .registers 7

    .line 39
    invoke-virtual {p1}, Liz;->i()I

    .line 40
    const-class v0, Liu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Liz;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lfd;->a(Ljava/lang/Class;Ljava/lang/String;)Lhm;

    move-result-object v0

    check-cast v0, Liu;

    if-nez v0, :cond_61

    const-string v0, "map"

    .line 43
    invoke-virtual {p2, v0}, Lfd;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Liz;->b(I)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Liu;

    invoke-direct {v0, p1}, Liu;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Lfd;->x()Lei;

    move-result-object v1

    invoke-virtual {v1}, Lei;->c()I

    move-result v1

    iput v1, v0, Liu;->b:I

    .line 48
    invoke-virtual {p2}, Lfd;->x()Lei;

    move-result-object v1

    invoke-virtual {v1}, Lei;->e()I

    move-result v1

    iput v1, v0, Liu;->c:I

    const/4 v1, 0x3

    .line 49
    iput-byte v1, v0, Liu;->e:B

    .line 50
    iget-object v1, p2, Lfd;->t:Lxa;

    iget v1, v1, Lxa;->g:I

    int-to-byte v1, v1

    iput-byte v1, v0, Liu;->d:B

    .line 52
    invoke-virtual {v0}, Liu;->a()V

    .line 54
    invoke-virtual {p2, p1, v0}, Lfd;->a(Ljava/lang/String;Lhm;)V

    :cond_61
    return-object v0
.end method

.method public a(Lfd;Lsn;Liu;)V
    .registers 37

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 61
    iget-object v3, v0, Lfd;->t:Lxa;

    iget v3, v3, Lxa;->g:I

    iget-byte v4, v2, Liu;->d:B

    if-eq v3, v4, :cond_f

    return-void

    .line 69
    :cond_f
    iget-byte v3, v2, Liu;->e:B

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 71
    iget v5, v2, Liu;->b:I

    .line 72
    iget v6, v2, Liu;->c:I

    .line 74
    iget-wide v7, v1, Lsn;->aM:D

    int-to-double v9, v5

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    div-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x40

    .line 75
    iget-wide v8, v1, Lsn;->aO:D

    int-to-double v10, v6

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v1

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x40

    const/16 v8, 0x80

    .line 77
    div-int v9, v8, v3

    .line 78
    iget-object v10, v0, Lfd;->t:Lxa;

    iget-boolean v10, v10, Lxa;->e:Z

    if-eqz v10, :cond_3a

    .line 79
    div-int/lit8 v9, v9, 0x2

    .line 81
    :cond_3a
    iget v10, v2, Liu;->g:I

    add-int/2addr v10, v4

    iput v10, v2, Liu;->g:I

    sub-int v10, v7, v9

    add-int/2addr v10, v4

    :goto_42
    add-int v11, v7, v9

    if-ge v10, v11, :cond_292

    and-int/lit8 v11, v10, 0xf

    .line 84
    iget v12, v2, Liu;->g:I

    and-int/lit8 v12, v12, 0xf

    if-eq v11, v12, :cond_59

    move/from16 v18, v1

    move v12, v4

    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v29, v7

    goto/16 :goto_281

    :cond_59
    sub-int v11, v1, v9

    sub-int/2addr v11, v4

    const/16 v15, 0xff

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    :goto_61
    add-int v13, v1, v9

    if-ge v11, v13, :cond_272

    if-ltz v10, :cond_255

    const/4 v13, -0x1

    if-lt v11, v13, :cond_255

    if-ge v10, v8, :cond_255

    if-lt v11, v8, :cond_70

    goto/16 :goto_255

    :cond_70
    sub-int v13, v10, v7

    sub-int v18, v11, v1

    mul-int/2addr v13, v13

    mul-int v18, v18, v18

    add-int v13, v13, v18

    add-int/lit8 v18, v9, -0x2

    mul-int v8, v18, v18

    if-le v13, v8, :cond_81

    move v8, v4

    goto :goto_82

    :cond_81
    const/4 v8, 0x0

    .line 98
    :goto_82
    div-int v18, v5, v3

    add-int v18, v18, v10

    add-int/lit8 v18, v18, -0x40

    mul-int v14, v18, v3

    .line 99
    div-int v18, v6, v3

    add-int v18, v18, v11

    add-int/lit8 v18, v18, -0x40

    mul-int v4, v18, v3

    move/from16 v18, v1

    const/16 v1, 0x100

    move/from16 v21, v5

    new-array v5, v1, [I

    .line 108
    invoke-virtual {v0, v14, v4}, Lfd;->b(II)Llm;

    move-result-object v1

    and-int/lit8 v22, v14, 0xf

    and-int/lit8 v23, v4, 0xf

    move/from16 v24, v6

    .line 114
    iget-object v6, v0, Lfd;->t:Lxa;

    iget-boolean v6, v6, Lxa;->e:Z

    if-eqz v6, :cond_de

    const v1, 0x389bf

    mul-int/2addr v4, v1

    add-int/2addr v14, v4

    mul-int v1, v14, v14

    const v4, 0x1dd6751

    mul-int/2addr v1, v4

    mul-int/lit8 v14, v14, 0xb

    add-int/2addr v1, v14

    shr-int/lit8 v1, v1, 0x14

    const/4 v4, 0x1

    and-int/2addr v1, v4

    if-nez v1, :cond_c9

    .line 117
    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    aget v4, v5, v1

    add-int/lit8 v4, v4, 0xa

    aput v4, v5, v1

    goto :goto_d3

    .line 118
    :cond_c9
    sget-object v1, Luu;->u:Luu;

    iget v1, v1, Luu;->bn:I

    aget v4, v5, v1

    add-int/lit8 v4, v4, 0xa

    aput v4, v5, v1

    :goto_d3
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    move/from16 v29, v7

    move/from16 v30, v12

    move/from16 v31, v15

    const/4 v6, 0x0

    goto/16 :goto_1a2

    :cond_de
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v25, 0x0

    :goto_e2
    if-ge v4, v3, :cond_19a

    const/4 v14, 0x0

    :goto_e5
    if-ge v14, v3, :cond_18a

    add-int v0, v4, v22

    move/from16 v27, v6

    add-int v6, v14, v23

    .line 123
    invoke-virtual {v1, v0, v6}, Llm;->b(II)I

    move-result v28

    move/from16 v29, v7

    move/from16 v30, v12

    const/4 v7, 0x1

    add-int/lit8 v12, v28, 0x1

    if-le v12, v7, :cond_164

    :goto_fa
    add-int/lit8 v7, v12, -0x1

    .line 129
    invoke-virtual {v1, v0, v7, v6}, Llm;->a(III)I

    move-result v7

    if-nez v7, :cond_108

    move/from16 v28, v7

    move/from16 v31, v15

    :goto_106
    const/4 v7, 0x0

    goto :goto_122

    :cond_108
    if-lez v12, :cond_11d

    if-lez v7, :cond_11d

    .line 131
    sget-object v28, Luu;->m:[Luu;

    move/from16 v31, v15

    aget-object v15, v28, v7

    iget-object v15, v15, Luu;->bA:Lln;

    iget-object v15, v15, Lln;->C:Ldx;

    move/from16 v28, v7

    sget-object v7, Ldx;->b:Ldx;

    if-ne v15, v7, :cond_121

    goto :goto_106

    :cond_11d
    move/from16 v28, v7

    move/from16 v31, v15

    :cond_121
    const/4 v7, 0x1

    :goto_122
    if-nez v7, :cond_12e

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v15, v12, -0x1

    .line 137
    invoke-virtual {v1, v0, v15, v6}, Llm;->a(III)I

    move-result v15

    move/from16 v28, v15

    :cond_12e
    if-eqz v7, :cond_161

    if-eqz v28, :cond_15d

    .line 142
    sget-object v7, Luu;->m:[Luu;

    aget-object v7, v7, v28

    iget-object v7, v7, Luu;->bA:Lln;

    invoke-virtual {v7}, Lln;->d()Z

    move-result v7

    if-eqz v7, :cond_15d

    add-int/lit8 v7, v12, -0x1

    :goto_140
    add-int/lit8 v15, v7, -0x1

    .line 146
    invoke-virtual {v1, v0, v7, v6}, Llm;->a(III)I

    move-result v7

    const/16 v20, 0x1

    add-int/lit8 v27, v27, 0x1

    if-lez v15, :cond_15d

    if-eqz v7, :cond_15d

    .line 148
    sget-object v32, Luu;->m:[Luu;

    aget-object v7, v32, v7

    iget-object v7, v7, Luu;->bA:Lln;

    invoke-virtual {v7}, Lln;->d()Z

    move-result v7

    if-nez v7, :cond_15b

    goto :goto_15d

    :cond_15b
    move v7, v15

    goto :goto_140

    :cond_15d
    :goto_15d
    move-object v7, v1

    move/from16 v6, v27

    goto :goto_16b

    :cond_161
    move/from16 v15, v31

    goto :goto_fa

    :cond_164
    move/from16 v31, v15

    move-object v7, v1

    move/from16 v6, v27

    const/16 v28, 0x0

    :goto_16b
    int-to-double v0, v12

    mul-int v12, v3, v3

    move v15, v6

    move-object/from16 v32, v7

    int-to-double v6, v12

    div-double/2addr v0, v6

    add-double v25, v25, v0

    .line 157
    aget v0, v5, v28

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aput v0, v5, v28

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move v6, v15

    move/from16 v7, v29

    move/from16 v12, v30

    move/from16 v15, v31

    move-object/from16 v1, v32

    goto/16 :goto_e5

    :cond_18a
    move-object/from16 v32, v1

    move/from16 v27, v6

    move/from16 v29, v7

    move/from16 v30, v12

    move/from16 v31, v15

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_e2

    :cond_19a
    move/from16 v29, v7

    move/from16 v30, v12

    move/from16 v31, v15

    move-wide/from16 v22, v25

    :goto_1a2
    mul-int v0, v3, v3

    .line 161
    div-int/2addr v6, v0

    const/4 v1, 0x0

    .line 162
    div-int v14, v1, v0

    move v0, v1

    move v4, v0

    move v7, v4

    const/16 v12, 0x100

    :goto_1ad
    if-ge v0, v12, :cond_1b8

    .line 169
    aget v14, v5, v0

    if-le v14, v4, :cond_1b5

    move v7, v0

    move v4, v14

    :cond_1b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ad

    :cond_1b8
    sub-double v4, v22, v16

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v14

    add-int/lit8 v0, v3, 0x4

    int-to-double v14, v0

    div-double/2addr v4, v14

    add-int v0, v10, v11

    const/4 v12, 0x1

    and-int/2addr v0, v12

    int-to-double v14, v0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v19, v14, v16

    const-wide v25, 0x3fd999999999999aL    # 0.4

    mul-double v19, v19, v25

    add-double v4, v4, v19

    const-wide v19, 0x3fe3333333333333L    # 0.6

    cmpl-double v19, v4, v19

    const/16 v20, 0x2

    if-lez v19, :cond_1e1

    move/from16 v19, v20

    goto :goto_1e3

    :cond_1e1
    move/from16 v19, v12

    :goto_1e3
    const-wide v25, -0x401ccccccccccccdL    # -0.6

    cmpg-double v4, v4, v25

    if-gez v4, :cond_1ee

    move/from16 v19, v1

    :cond_1ee
    if-lez v7, :cond_224

    .line 182
    sget-object v4, Luu;->m:[Luu;

    aget-object v4, v4, v7

    iget-object v4, v4, Luu;->bA:Lln;

    iget-object v4, v4, Lln;->C:Ldx;

    .line 183
    sget-object v5, Ldx;->n:Ldx;

    if-ne v4, v5, :cond_221

    int-to-double v5, v6

    const-wide v25, 0x3fb999999999999aL    # 0.1

    mul-double v5, v5, v25

    const-wide v25, 0x3fc999999999999aL    # 0.2

    mul-double v14, v14, v25

    add-double/2addr v5, v14

    cmpg-double v7, v5, v16

    if-gez v7, :cond_211

    goto :goto_213

    :cond_211
    move/from16 v20, v12

    :goto_213
    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpl-double v5, v5, v14

    if-lez v5, :cond_21f

    move/from16 v19, v1

    goto :goto_221

    :cond_21f
    move/from16 v19, v20

    .line 189
    :cond_221
    :goto_221
    iget v4, v4, Ldx;->q:I

    goto :goto_225

    :cond_224
    move v4, v1

    :goto_225
    if-gez v11, :cond_22c

    :cond_227
    :goto_227
    move/from16 v14, v30

    move/from16 v15, v31

    goto :goto_252

    :cond_22c
    mul-int v5, v9, v9

    if-lt v13, v5, :cond_231

    goto :goto_227

    :cond_231
    if-eqz v8, :cond_236

    if-nez v0, :cond_236

    goto :goto_227

    .line 199
    :cond_236
    iget-object v0, v2, Liu;->f:[B

    mul-int/lit16 v5, v11, 0x80

    add-int/2addr v5, v10

    aget-byte v0, v0, v5

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v19

    int-to-byte v4, v4

    if-eq v0, v4, :cond_227

    move/from16 v15, v31

    if-le v15, v11, :cond_249

    move v15, v11

    :cond_249
    move/from16 v14, v30

    if-ge v14, v11, :cond_24e

    move v14, v11

    .line 204
    :cond_24e
    iget-object v0, v2, Liu;->f:[B

    aput-byte v4, v0, v5

    :goto_252
    move-wide/from16 v16, v22

    goto :goto_260

    :cond_255
    :goto_255
    move/from16 v18, v1

    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v29, v7

    move v14, v12

    const/4 v1, 0x0

    move v12, v4

    :goto_260
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    move v4, v12

    move v12, v14

    move/from16 v1, v18

    move/from16 v5, v21

    move/from16 v6, v24

    move/from16 v7, v29

    const/16 v8, 0x80

    goto/16 :goto_61

    :cond_272
    move/from16 v18, v1

    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v29, v7

    move v14, v12

    move v12, v4

    if-gt v15, v14, :cond_281

    .line 208
    invoke-virtual {v2, v10, v15, v14}, Liu;->a(III)V

    :cond_281
    :goto_281
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move v4, v12

    move/from16 v1, v18

    move/from16 v5, v21

    move/from16 v6, v24

    move/from16 v7, v29

    const/16 v8, 0x80

    goto/16 :goto_42

    :cond_292
    return-void
.end method

.method public a(Liz;Lfd;Lsn;IZ)V
    .registers 7

    .line 214
    iget-boolean p4, p2, Lfd;->B:Z

    if-eqz p4, :cond_5

    return-void

    .line 216
    :cond_5
    invoke-virtual {p0, p1, p2}, Lwr;->a(Liz;Lfd;)Liu;

    move-result-object p4

    .line 217
    instance-of v0, p3, Lgs;

    if-eqz v0, :cond_13

    .line 218
    move-object v0, p3

    check-cast v0, Lgs;

    .line 219
    invoke-virtual {p4, v0, p1}, Liu;->a(Lgs;Liz;)V

    :cond_13
    if-eqz p5, :cond_18

    .line 223
    invoke-virtual {p0, p2, p3, p4}, Lwr;->a(Lfd;Lsn;Liu;)V

    :cond_18
    return-void
.end method

.method public b(Liz;Lfd;Lgs;)V
    .registers 7

    const-string v0, "map"

    .line 230
    invoke-virtual {p2, v0}, Lfd;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Liz;->b(I)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "map_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance v0, Liu;

    invoke-direct {v0, p1}, Liu;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2, p1, v0}, Lfd;->a(Ljava/lang/String;Lhm;)V

    .line 235
    iget-wide v1, p3, Lgs;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result p1

    iput p1, v0, Liu;->b:I

    .line 236
    iget-wide v1, p3, Lgs;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result p1

    iput p1, v0, Liu;->c:I

    const/4 p1, 0x3

    .line 237
    iput-byte p1, v0, Liu;->e:B

    .line 238
    iget-object p1, p2, Lfd;->t:Lxa;

    iget p1, p1, Lxa;->g:I

    int-to-byte p1, p1

    iput-byte p1, v0, Liu;->d:B

    .line 240
    invoke-virtual {v0}, Liu;->a()V

    return-void
.end method
