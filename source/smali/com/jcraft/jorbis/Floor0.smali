###### Class com.jcraft.jorbis.Floor0 (com.jcraft.jorbis.Floor0)
.class Lcom/jcraft/jorbis/Floor0;
.super Lcom/jcraft/jorbis/FuncFloor;
.source "SourceFile"


# instance fields
.field lsp:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncFloor;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    return-void
.end method

.method static fromdB(F)F
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x3fbd791c4b90214bL    # 0.11512925

    mul-double/2addr v0, v2

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method static lpc_to_curve([F[FFLcom/jcraft/jorbis/Floor0$LookFloor0;Ljava/lang/String;I)V
    .registers 8

    .line 296
    iget p4, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    mul-int/lit8 p4, p4, 0x2

    iget p5, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    mul-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x2

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    new-array p4, p4, [F

    const/4 p5, 0x0

    cmpl-float v0, p2, p5

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 299
    :goto_16
    iget p1, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v1, p1, :cond_1f

    .line 300
    aput p5, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1f
    return-void

    .line 303
    :cond_20
    iget-object p5, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->lpclook:Lcom/jcraft/jorbis/Lpc;

    invoke-virtual {p5, p4, p1, p2}, Lcom/jcraft/jorbis/Lpc;->lpc_to_curve([F[FF)V

    .line 305
    :goto_25
    iget p1, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v1, p1, :cond_34

    .line 306
    iget-object p1, p3, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    aget p1, p1, v1

    aget p1, p4, p1

    aput p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_34
    return-void
.end method

.method static lsp_to_lpc([F[FI)V
    .registers 20

    .line 246
    div-int/lit8 v0, p2, 0x2

    .line 247
    new-array v1, v0, [F

    .line 248
    new-array v2, v0, [F

    add-int/lit8 v3, v0, 0x1

    .line 250
    new-array v4, v3, [F

    .line 251
    new-array v3, v3, [F

    .line 253
    new-array v5, v0, [F

    .line 254
    new-array v6, v0, [F

    const/4 v7, 0x0

    move v8, v7

    :goto_12
    const/4 v9, 0x1

    if-ge v8, v0, :cond_33

    mul-int/lit8 v10, v8, 0x2

    .line 259
    aget v11, p0, v10

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide/high16 v13, -0x4000000000000000L    # -2.0

    mul-double/2addr v11, v13

    double-to-float v11, v11

    aput v11, v1, v8

    add-int/2addr v10, v9

    .line 260
    aget v9, p0, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v13

    double-to-float v9, v9

    aput v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_33
    move v8, v7

    :goto_34
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v8, v0, :cond_44

    .line 265
    aput v10, v4, v8

    .line 266
    aput v11, v3, v8

    .line 267
    aput v10, v5, v8

    .line 268
    aput v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 270
    :cond_44
    aput v11, v3, v8

    .line 271
    aput v11, v4, v8

    move v8, v9

    :goto_49
    add-int/lit8 v11, p2, 0x1

    if-ge v8, v11, :cond_88

    move v11, v7

    move v12, v10

    move v13, v12

    :goto_50
    if-ge v11, v0, :cond_71

    .line 277
    aget v14, v1, v11

    aget v15, v3, v11

    mul-float/2addr v14, v15

    aget v16, v4, v11

    add-float v14, v14, v16

    .line 278
    aput v15, v4, v11

    .line 279
    aput v12, v3, v11

    add-float/2addr v12, v14

    .line 282
    aget v14, v2, v11

    aget v15, v6, v11

    mul-float/2addr v14, v15

    aget v16, v5, v11

    add-float v14, v14, v16

    .line 283
    aput v15, v5, v11

    .line 284
    aput v13, v6, v11

    add-float/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    :cond_71
    add-int/lit8 v14, v8, -0x1

    .line 287
    aget v15, v3, v11

    add-float/2addr v15, v12

    add-float/2addr v15, v13

    aget v16, v4, v11

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    aput v15, p1, v14

    .line 288
    aput v12, v3, v11

    .line 289
    aput v13, v4, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_88
    return-void
.end method

.method static toBARK(F)F
    .registers 9

    float-to-double v0, p0

    const-wide v2, 0x3f483f91e646f156L    # 7.4E-4

    mul-double/2addr v2, v0

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x402a333333333333L    # 13.1

    mul-double/2addr v2, v4

    mul-float/2addr p0, p0

    float-to-double v4, p0

    const-wide v6, 0x3e53dd3dc46ce81cL    # 1.85E-8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4001eb851eb851ecL    # 2.24

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method


# virtual methods
.method forward(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[FLjava/lang/Object;)I
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method free_info(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method free_state(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F)I
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 131
    move-object/from16 v2, p2

    check-cast v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    .line 132
    iget-object v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 133
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v5, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    invoke-virtual {v4, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_c1

    .line 135
    iget v6, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    const/4 v10, 0x1

    shl-int v6, v10, v6

    sub-int/2addr v6, v10

    int-to-float v4, v4

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 136
    iget v6, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v6, v6

    mul-float v8, v4, v6

    .line 137
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v6, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    invoke-static {v6}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_c1

    .line 139
    iget v7, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v4, v7, :cond_c1

    .line 141
    monitor-enter p0

    .line 142
    :try_start_37
    iget-object v7, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    const/4 v9, 0x0

    if-eqz v7, :cond_4e

    array-length v7, v7

    iget v11, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v7, v11, :cond_42

    goto :goto_4e

    :cond_42
    move v7, v5

    .line 146
    :goto_43
    iget v11, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v7, v11, :cond_54

    .line 147
    iget-object v11, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    aput v9, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 143
    :cond_4e
    :goto_4e
    iget v7, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    new-array v7, v7, [F

    iput-object v7, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    .line 150
    :cond_54
    iget-object v7, v0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v7, v7, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget-object v11, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v4, v11, v4

    aget-object v4, v7, v4

    move v7, v5

    .line 153
    :goto_5f
    iget v11, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v7, v11, :cond_68

    .line 154
    aput v9, p3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    :cond_68
    move v7, v5

    .line 156
    :goto_69
    iget v11, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v7, v11, :cond_8c

    .line 157
    iget-object v12, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    iget-object v14, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    const/4 v15, 0x1

    const/16 v16, -0x1

    move-object v11, v4

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/jcraft/jorbis/CodeBook;->decodevs([FILcom/jcraft/jogg/Buffer;II)I

    move-result v11

    if-ne v11, v6, :cond_88

    move v0, v5

    .line 158
    :goto_7d
    iget v3, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge v0, v3, :cond_86

    .line 159
    aput v9, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 160
    :cond_86
    monitor-exit p0

    return v5

    .line 156
    :cond_88
    iget v11, v4, Lcom/jcraft/jorbis/CodeBook;->dim:I

    add-int/2addr v7, v11

    goto :goto_69

    :cond_8c
    move v0, v5

    .line 163
    :goto_8d
    iget v6, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v0, v6, :cond_a9

    move v6, v5

    .line 164
    :goto_92
    iget v7, v4, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v6, v7, :cond_a2

    .line 165
    iget-object v7, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    aget v11, v7, v0

    add-float/2addr v11, v9

    aput v11, v7, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 166
    :cond_a2
    iget-object v6, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    add-int/lit8 v7, v0, -0x1

    aget v9, v6, v7

    goto :goto_8d

    .line 169
    :cond_a9
    iget-object v0, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    iget v4, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    iget v5, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    iget-object v6, v1, Lcom/jcraft/jorbis/Floor0;->lsp:[F

    iget v7, v2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    iget v2, v3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v9, v2

    move-object/from16 v2, p3

    move-object v3, v0

    invoke-static/range {v2 .. v9}, Lcom/jcraft/jorbis/Lsp;->lsp_to_curve([F[III[FIFF)V

    .line 172
    monitor-exit p0

    return v10

    :catchall_be
    move-exception v0

    .line 173
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_37 .. :try_end_c0} :catchall_be

    throw v0

    :cond_c1
    return v5
.end method

.method inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 180
    check-cast p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    .line 181
    iget-object v0, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 183
    instance-of v1, p3, [F

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 184
    check-cast p3, [F

    check-cast p3, [F

    goto :goto_f

    :cond_e
    move-object p3, v2

    .line 187
    :goto_f
    iget-object v1, p1, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    invoke-virtual {v1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    if-lez v1, :cond_8e

    .line 189
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 190
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 191
    iget-object v3, p1, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v5, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8e

    .line 193
    iget v6, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v3, v6, :cond_8e

    .line 194
    iget-object v6, p1, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v6, v6, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget-object v0, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v0, v0, v3

    aget-object v0, v6, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_57

    .line 197
    array-length v7, p3

    iget v8, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    add-int/2addr v8, v4

    if-ge v7, v8, :cond_4e

    goto :goto_57

    :cond_4e
    move v4, v6

    .line 201
    :goto_4f
    array-length v7, p3

    if-ge v4, v7, :cond_5c

    .line 202
    aput v3, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 198
    :cond_57
    :goto_57
    iget p3, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    add-int/2addr p3, v4

    new-array p3, p3, [F

    :cond_5c
    move v4, v6

    .line 205
    :goto_5d
    iget v7, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge v4, v7, :cond_70

    .line 206
    iget-object v7, p1, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v8, v0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    invoke-virtual {v0, p3, v4, v7, v8}, Lcom/jcraft/jorbis/CodeBook;->decodev_set([FILcom/jcraft/jogg/Buffer;I)I

    move-result v7

    if-ne v7, v5, :cond_6c

    return-object v2

    .line 205
    :cond_6c
    iget v7, v0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    add-int/2addr v4, v7

    goto :goto_5d

    :cond_70
    move p1, v6

    .line 211
    :goto_71
    iget v2, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    if-ge p1, v2, :cond_89

    move v2, v6

    .line 212
    :goto_76
    iget v4, v0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v2, v4, :cond_84

    .line 213
    aget v4, p3, p1

    add-float/2addr v4, v3

    aput v4, p3, p1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_76

    :cond_84
    add-int/lit8 v2, p1, -0x1

    .line 214
    aget v3, p3, v2

    goto :goto_71

    .line 216
    :cond_89
    iget p1, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    aput v1, p3, p1

    return-object p3

    :cond_8e
    return-object v2
.end method

.method inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I
    .registers 13

    .line 224
    check-cast p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    .line 225
    iget-object p1, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    if-eqz p3, :cond_20

    .line 228
    check-cast p3, [F

    move-object v4, p3

    check-cast v4, [F

    .line 229
    iget p3, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    aget v6, v4, p3

    .line 231
    iget-object v1, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    iget v2, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    iget v3, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    iget v5, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    iget p1, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    int-to-float v7, p1

    move-object v0, p4

    invoke-static/range {v0 .. v7}, Lcom/jcraft/jorbis/Lsp;->lsp_to_curve([F[III[FIFF)V

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    move p3, p1

    .line 235
    :goto_22
    iget v0, p2, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge p3, v0, :cond_2c

    const/4 v0, 0x0

    .line 236
    aput v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    :cond_2c
    return p1
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 71
    iget-object p1, p1, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 72
    check-cast p3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 73
    new-instance v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Floor0$LookFloor0;-><init>(Lcom/jcraft/jorbis/Floor0;)V

    .line 74
    iget v1, p3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    .line 75
    iget-object p1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget p2, p2, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    aget p1, p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    .line 76
    iget p1, p3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    iput p1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    .line 77
    iput-object p3, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 78
    iget-object p1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->lpclook:Lcom/jcraft/jorbis/Lpc;

    iget p2, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    iget v1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->m:I

    invoke-virtual {p1, p2, v1}, Lcom/jcraft/jorbis/Lpc;->init(II)V

    .line 81
    iget p1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    int-to-float p1, p1

    iget p2, p3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    int-to-double v1, p2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    double-to-float p2, v1

    invoke-static {p2}, Lcom/jcraft/jorbis/Floor0;->toBARK(F)F

    move-result p2

    div-float/2addr p1, p2

    .line 89
    iget p2, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    new-array p2, p2, [I

    iput-object p2, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    const/4 p2, 0x0

    .line 90
    :goto_3c
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    if-ge p2, v1, :cond_61

    .line 91
    iget v1, p3, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    int-to-double v1, v1

    div-double/2addr v1, v3

    iget v5, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->n:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    int-to-double v5, p2

    mul-double/2addr v1, v5

    double-to-float v1, v1

    invoke-static {v1}, Lcom/jcraft/jorbis/Floor0;->toBARK(F)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Lin;->d(F)I

    move-result v1

    .line 92
    iget v2, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    if-lt v1, v2, :cond_5a

    .line 93
    iget v1, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->ln:I

    .line 94
    :cond_5a
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->linearmap:[I

    aput v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    :cond_61
    return-object v0
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 6

    .line 36
    check-cast p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 37
    iget v0, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 38
    iget v0, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    const/16 v2, 0x10

    invoke-virtual {p2, v0, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 39
    iget v0, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    invoke-virtual {p2, v0, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 40
    iget v0, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    const/4 v2, 0x6

    invoke-virtual {p2, v0, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 41
    iget v0, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 42
    iget v0, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    const/4 v0, 0x0

    .line 43
    :goto_29
    iget v2, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v0, v2, :cond_37

    .line 44
    iget-object v2, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_37
    return-void
.end method

.method state(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 104
    new-instance v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;-><init>(Lcom/jcraft/jorbis/Floor0;)V

    .line 105
    check-cast p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    .line 108
    iget v1, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->codewords:[I

    .line 109
    iget p1, p1, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    new-array p1, p1, [F

    iput-object p1, v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->curve:[F

    const-wide/16 v1, -0x1

    .line 110
    iput-wide v1, v0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->frameno:J

    return-object v0
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 9

    .line 48
    new-instance v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Floor0$InfoFloor0;-><init>(Lcom/jcraft/jorbis/Floor0;)V

    const/16 v1, 0x8

    .line 49
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    const/16 v2, 0x10

    .line 50
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    .line 51
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    const/4 v2, 0x6

    .line 52
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampbits:I

    .line 53
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->ampdB:I

    const/4 v2, 0x4

    .line 54
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    .line 56
    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->order:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_64

    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->rate:I

    if-lt v2, v3, :cond_64

    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->barkmap:I

    if-lt v2, v3, :cond_64

    iget v2, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v2, v3, :cond_43

    goto :goto_64

    :cond_43
    const/4 v2, 0x0

    .line 60
    :goto_44
    iget v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->numbooks:I

    if-ge v2, v3, :cond_63

    .line 61
    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    aput v5, v3, v2

    .line 62
    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v3, v3, v2

    if-ltz v3, :cond_62

    iget-object v3, v0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    aget v3, v3, v2

    iget v5, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v3, v5, :cond_5f

    goto :goto_62

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_62
    :goto_62
    return-object v4

    :cond_63
    return-object v0

    :cond_64
    :goto_64
    return-object v4
.end method

###### Class com.jcraft.jorbis.Floor0.EchstateFloor0 (com.jcraft.jorbis.Floor0$EchstateFloor0)
.class Lcom/jcraft/jorbis/Floor0$EchstateFloor0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field codes:J

.field codewords:[I

.field curve:[F

.field frameno:J

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor0;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$EchstateFloor0;->this$0:Lcom/jcraft/jorbis/Floor0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.jcraft.jorbis.Floor0.InfoFloor0 (com.jcraft.jorbis.Floor0$InfoFloor0)
.class Lcom/jcraft/jorbis/Floor0$InfoFloor0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ampbits:I

.field ampdB:I

.field barkmap:I

.field books:[I

.field numbooks:I

.field order:I

.field rate:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor0;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->this$0:Lcom/jcraft/jorbis/Floor0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [I

    .line 318
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$InfoFloor0;->books:[I

    return-void
.end method

###### Class com.jcraft.jorbis.Floor0.LookFloor0 (com.jcraft.jorbis.Floor0$LookFloor0)
.class Lcom/jcraft/jorbis/Floor0$LookFloor0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field linearmap:[I

.field ln:I

.field lpclook:Lcom/jcraft/jorbis/Lpc;

.field m:I

.field n:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor0;

.field vi:Lcom/jcraft/jorbis/Floor0$InfoFloor0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor0;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->this$0:Lcom/jcraft/jorbis/Floor0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance p1, Lcom/jcraft/jorbis/Lpc;

    invoke-direct {p1}, Lcom/jcraft/jorbis/Lpc;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor0$LookFloor0;->lpclook:Lcom/jcraft/jorbis/Lpc;

    return-void
.end method
