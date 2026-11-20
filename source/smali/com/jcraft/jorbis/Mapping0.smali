###### Class com.jcraft.jorbis.Mapping0 (com.jcraft.jorbis.Mapping0)
.class Lcom/jcraft/jorbis/Mapping0;
.super Lcom/jcraft/jorbis/FuncMapping;
.source "SourceFile"


# static fields
.field static seq:I


# instance fields
.field floormemo:[Ljava/lang/Object;

.field nonzero:[I

.field pcmbundle:[[F

.field zerobundle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncMapping;-><init>()V

    const/4 v0, 0x0

    .line 186
    move-object v1, v0

    check-cast v1, [[F

    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    .line 187
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    .line 188
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    .line 189
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method free_info(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method declared-synchronized inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;)I
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 192
    :try_start_5
    iget-object v8, v0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    .line 193
    iget-object v9, v8, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 194
    move-object/from16 v10, p2

    check-cast v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;

    .line 195
    iget-object v11, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->map:Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    .line 196
    iget-object v2, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->mode:Lcom/jcraft/jorbis/InfoMode;

    .line 197
    iget-object v3, v9, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v4, v0, Lcom/jcraft/jorbis/Block;->W:I

    aget v12, v3, v4

    iput v12, v0, Lcom/jcraft/jorbis/Block;->pcmend:I

    .line 199
    iget-object v3, v8, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    iget v4, v0, Lcom/jcraft/jorbis/Block;->W:I

    aget-object v3, v3, v4

    iget v4, v0, Lcom/jcraft/jorbis/Block;->lW:I

    aget-object v3, v3, v4

    iget v4, v0, Lcom/jcraft/jorbis/Block;->nW:I

    aget-object v3, v3, v4

    iget v2, v2, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    aget-object v13, v3, v2

    .line 200
    iget-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    if-eqz v2, :cond_34

    array-length v2, v2

    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_4c

    .line 201
    :cond_34
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [[F

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    .line 202
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    .line 203
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    .line 204
    iget v2, v9, Lcom/jcraft/jorbis/Info;->channels:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    :cond_4c
    const/4 v14, 0x0

    move v2, v14

    .line 213
    :goto_4e
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-ge v2, v3, :cond_8d

    .line 214
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 215
    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v4, v4, v2

    .line 217
    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    iget-object v6, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    aget-object v6, v6, v4

    iget-object v7, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    aget-object v4, v7, v4

    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    aget-object v7, v7, v2

    invoke-virtual {v6, v0, v4, v7}, Lcom/jcraft/jorbis/FuncFloor;->inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v2

    .line 219
    iget-object v4, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_7c

    .line 220
    iget-object v4, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aput v16, v4, v2

    goto :goto_80

    .line 223
    :cond_7c
    iget-object v4, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aput v14, v4, v2

    :goto_80
    move v4, v14

    .line 225
    :goto_81
    div-int/lit8 v5, v12, 0x2

    if-ge v4, v5, :cond_8a

    .line 226
    aput v15, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_8d
    move v2, v14

    .line 231
    :goto_8e
    iget v3, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    if-ge v2, v3, :cond_b9

    .line 232
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v4, v4, v2

    aget v3, v3, v4

    if-nez v3, :cond_a6

    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v4, v4, v2

    aget v3, v3, v4

    if-eqz v3, :cond_b6

    .line 233
    :cond_a6
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v4, v4, v2

    aput v16, v3, v4

    .line 234
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v4, v4, v2

    aput v16, v3, v4

    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_b9
    move v7, v14

    .line 240
    :goto_ba
    iget v2, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v7, v2, :cond_101

    move v2, v14

    move/from16 v17, v2

    .line 242
    :goto_c1
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_e9

    .line 243
    iget-object v3, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v3, v3, v2

    if-ne v3, v7, :cond_e6

    .line 244
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aget v3, v3, v2

    if-eqz v3, :cond_d6

    .line 245
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    aput v16, v3, v17

    goto :goto_da

    .line 248
    :cond_d6
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    aput v14, v3, v17

    .line 250
    :goto_da
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    add-int/lit8 v4, v17, 0x1

    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v5, v5, v2

    aput-object v5, v3, v17

    move/from16 v17, v4

    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 254
    :cond_e9
    iget-object v2, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    aget-object v2, v2, v7

    iget-object v3, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_look:[Ljava/lang/Object;

    aget-object v4, v3, v7

    iget-object v5, v1, Lcom/jcraft/jorbis/Mapping0;->pcmbundle:[[F

    iget-object v6, v1, Lcom/jcraft/jorbis/Mapping0;->zerobundle:[I

    move-object/from16 v3, p1

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lcom/jcraft/jorbis/FuncResidue;->inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I

    add-int/lit8 v7, v18, 0x1

    goto :goto_ba

    .line 258
    :cond_101
    iget v2, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    add-int/lit8 v2, v2, -0x1

    :goto_105
    if-ltz v2, :cond_149

    .line 259
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    .line 260
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    iget-object v5, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    move v5, v14

    .line 262
    :goto_118
    div-int/lit8 v6, v12, 0x2

    if-ge v5, v6, :cond_146

    .line 263
    aget v6, v3, v5

    .line 264
    aget v7, v4, v5

    cmpl-float v16, v6, v15

    if-lez v16, :cond_134

    cmpl-float v16, v7, v15

    if-lez v16, :cond_12e

    .line 268
    aput v6, v3, v5

    sub-float/2addr v6, v7

    .line 269
    aput v6, v4, v5

    goto :goto_143

    .line 272
    :cond_12e
    aput v6, v4, v5

    add-float/2addr v6, v7

    .line 273
    aput v6, v3, v5

    goto :goto_143

    :cond_134
    cmpl-float v16, v7, v15

    if-lez v16, :cond_13e

    .line 278
    aput v6, v3, v5

    add-float/2addr v6, v7

    .line 279
    aput v6, v4, v5

    goto :goto_143

    .line 282
    :cond_13e
    aput v6, v4, v5

    sub-float/2addr v6, v7

    .line 283
    aput v6, v3, v5

    :goto_143
    add-int/lit8 v5, v5, 0x1

    goto :goto_118

    :cond_146
    add-int/lit8 v2, v2, -0x1

    goto :goto_105

    :cond_149
    move v2, v14

    .line 291
    :goto_14a
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_168

    .line 292
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 293
    iget-object v4, v11, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v4, v4, v2

    .line 294
    iget-object v5, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    aget-object v5, v5, v4

    iget-object v6, v10, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    aget-object v4, v6, v4

    iget-object v6, v1, Lcom/jcraft/jorbis/Mapping0;->floormemo:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-virtual {v5, v0, v4, v6, v3}, Lcom/jcraft/jorbis/FuncFloor;->inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_14a

    :cond_168
    move v2, v14

    .line 301
    :goto_169
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_181

    .line 302
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 304
    iget-object v4, v8, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    iget v5, v0, Lcom/jcraft/jorbis/Block;->W:I

    aget-object v4, v4, v5

    aget-object v4, v4, v14

    check-cast v4, Lcom/jcraft/jorbis/Mdct;

    invoke-virtual {v4, v3, v3}, Lcom/jcraft/jorbis/Mdct;->backward([F[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    :cond_181
    move v2, v14

    .line 311
    :goto_182
    iget v3, v9, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v2, v3, :cond_1a8

    .line 312
    iget-object v3, v0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v3, v3, v2

    .line 313
    iget-object v4, v1, Lcom/jcraft/jorbis/Mapping0;->nonzero:[I

    aget v4, v4, v2

    if-eqz v4, :cond_19d

    move v4, v14

    :goto_191
    if-ge v4, v12, :cond_1a5

    .line 315
    aget v5, v3, v4

    aget v6, v13, v4

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_191

    :cond_19d
    move v4, v14

    :goto_19e
    if-ge v4, v12, :cond_1a5

    .line 320
    aput v15, v3, v4
    :try_end_1a2
    .catchall {:try_start_5 .. :try_end_1a2} :catchall_1aa

    add-int/lit8 v4, v4, 0x1

    goto :goto_19e

    :cond_1a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_182

    .line 328
    :cond_1a8
    monitor-exit p0

    return v14

    :catchall_1aa
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 42
    iget-object v0, p1, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 43
    new-instance v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;

    invoke-direct {v1, p0}, Lcom/jcraft/jorbis/Mapping0$LookMapping0;-><init>(Lcom/jcraft/jorbis/Mapping0;)V

    .line 44
    check-cast p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    iput-object p3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->map:Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    .line 45
    iput-object p2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->mode:Lcom/jcraft/jorbis/InfoMode;

    .line 47
    iget v2, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_look:[Ljava/lang/Object;

    .line 48
    iget v2, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    .line 49
    iget v2, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_look:[Ljava/lang/Object;

    .line 51
    iget v2, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v2, v2, [Lcom/jcraft/jorbis/FuncTime;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_func:[Lcom/jcraft/jorbis/FuncTime;

    .line 52
    iget v2, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v2, v2, [Lcom/jcraft/jorbis/FuncFloor;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    .line 53
    iget v2, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    new-array v2, v2, [Lcom/jcraft/jorbis/FuncResidue;

    iput-object v2, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    const/4 v2, 0x0

    .line 55
    :goto_32
    iget v3, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v2, v3, :cond_99

    .line 56
    iget-object v3, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    aget v3, v3, v2

    .line 57
    iget-object v4, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    aget v4, v4, v2

    .line 58
    iget-object v5, p3, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    aget v5, v5, v2

    .line 60
    iget-object v6, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_func:[Lcom/jcraft/jorbis/FuncTime;

    sget-object v7, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v8, v0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v8, v8, v3

    aget-object v7, v7, v8

    aput-object v7, v6, v2

    .line 61
    iget-object v6, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_look:[Ljava/lang/Object;

    iget-object v7, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->time_func:[Lcom/jcraft/jorbis/FuncTime;

    aget-object v7, v7, v2

    iget-object v8, v0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v3, v8, v3

    invoke-virtual {v7, p1, p2, v3}, Lcom/jcraft/jorbis/FuncTime;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v2

    .line 62
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    sget-object v6, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v7, v0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    aput-object v6, v3, v2

    .line 63
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_look:[Ljava/lang/Object;

    iget-object v6, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->floor_func:[Lcom/jcraft/jorbis/FuncFloor;

    aget-object v6, v6, v2

    iget-object v7, v0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v4, v7, v4

    invoke-virtual {v6, p1, p2, v4}, Lcom/jcraft/jorbis/FuncFloor;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 65
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    sget-object v4, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v6, v0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v6, v6, v5

    aget-object v4, v4, v6

    aput-object v4, v3, v2

    .line 66
    iget-object v3, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_look:[Ljava/lang/Object;

    iget-object v4, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->residue_func:[Lcom/jcraft/jorbis/FuncResidue;

    aget-object v4, v4, v2

    iget-object v6, v0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v5, v6, v5

    invoke-virtual {v4, p1, p2, v5}, Lcom/jcraft/jorbis/FuncResidue;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 71
    :cond_99
    iget p2, v0, Lcom/jcraft/jorbis/Info;->psys:I

    if-eqz p2, :cond_9f

    iget p1, p1, Lcom/jcraft/jorbis/DspState;->analysisp:I

    .line 75
    :cond_9f
    iget p1, v0, Lcom/jcraft/jorbis/Info;->channels:I

    iput p1, v1, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->ch:I

    return-object v1
.end method

.method pack(Lcom/jcraft/jorbis/Info;Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 11

    .line 81
    check-cast p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    .line 90
    iget v0, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_13

    .line 91
    invoke-virtual {p3, v3, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 92
    iget v0, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    sub-int/2addr v0, v3

    invoke-virtual {p3, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_16

    .line 95
    :cond_13
    invoke-virtual {p3, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 98
    :goto_16
    iget v0, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    const/16 v4, 0x8

    if-lez v0, :cond_47

    .line 99
    invoke-virtual {p3, v3, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 100
    iget v0, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    sub-int/2addr v0, v3

    invoke-virtual {p3, v0, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v0, v2

    .line 101
    :goto_26
    iget v5, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    if-ge v0, v5, :cond_4a

    .line 102
    iget-object v5, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    aget v5, v5, v0

    iget v6, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v6}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 103
    iget-object v5, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    aget v5, v5, v0

    iget v6, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v6}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 107
    :cond_47
    invoke-virtual {p3, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    :cond_4a
    const/4 v0, 0x2

    .line 110
    invoke-virtual {p3, v2, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 113
    iget v0, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-le v0, v3, :cond_61

    move v0, v2

    .line 114
    :goto_53
    iget v3, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v0, v3, :cond_61

    .line 115
    iget-object v3, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v3, v3, v0

    invoke-virtual {p3, v3, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 117
    :cond_61
    :goto_61
    iget p1, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v2, p1, :cond_7d

    .line 118
    iget-object p1, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    aget p1, p1, v2

    invoke-virtual {p3, p1, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 119
    iget-object p1, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    aget p1, p1, v2

    invoke-virtual {p3, p1, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 120
    iget-object p1, p2, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    aget p1, p1, v2

    invoke-virtual {p3, p1, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_7d
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 13

    .line 126
    new-instance v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;-><init>(Lcom/jcraft/jorbis/Mapping0;)V

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_15

    .line 129
    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    goto :goto_17

    .line 132
    :cond_15
    iput v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    .line 135
    :goto_17
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v2, :cond_5f

    .line 136
    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    move v2, v4

    .line 138
    :goto_29
    iget v7, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_steps:I

    if-ge v2, v7, :cond_5f

    .line 139
    iget-object v7, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    iget v8, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v8}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v7, v2

    .line 140
    iget-object v7, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    iget v9, p1, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-static {v9}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v9

    aput v9, v7, v2

    if-ltz v8, :cond_5b

    if-ltz v9, :cond_5b

    if-eq v8, v9, :cond_5b

    .line 142
    iget v7, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v8, v7, :cond_5b

    iget v7, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-lt v9, v7, :cond_58

    goto :goto_5b

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 145
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    return-object v6

    :cond_5f
    const/4 v2, 0x2

    .line 151
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    if-lez v2, :cond_6a

    .line 152
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    return-object v6

    .line 156
    :cond_6a
    iget v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-le v2, v1, :cond_8a

    move v1, v4

    .line 157
    :goto_6f
    iget v2, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v1, v2, :cond_8a

    .line 158
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    invoke-virtual {p2, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    aput v7, v2, v1

    .line 159
    iget-object v2, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    aget v2, v2, v1

    iget v7, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-lt v2, v7, :cond_87

    .line 160
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    return-object v6

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 166
    :cond_8a
    :goto_8a
    iget v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->submaps:I

    if-ge v4, v1, :cond_cd

    .line 167
    iget-object v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    aput v2, v1, v4

    .line 168
    iget-object v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    aget v1, v1, v4

    iget v2, p1, Lcom/jcraft/jorbis/Info;->times:I

    if-lt v1, v2, :cond_a2

    .line 169
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    return-object v6

    .line 172
    :cond_a2
    iget-object v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    aput v2, v1, v4

    .line 173
    iget-object v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    aget v1, v1, v4

    iget v2, p1, Lcom/jcraft/jorbis/Info;->floors:I

    if-lt v1, v2, :cond_b6

    .line 174
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    return-object v6

    .line 177
    :cond_b6
    iget-object v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    invoke-virtual {p2, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    aput v2, v1, v4

    .line 178
    iget-object v1, v0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    aget v1, v1, v4

    iget v2, p1, Lcom/jcraft/jorbis/Info;->residues:I

    if-lt v1, v2, :cond_ca

    .line 179
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->free()V

    return-object v6

    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_cd
    return-object v0
.end method

###### Class com.jcraft.jorbis.Mapping0.InfoMapping0 (com.jcraft.jorbis.Mapping0$InfoMapping0)
.class Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field chmuxlist:[I

.field coupling_ang:[I

.field coupling_mag:[I

.field coupling_steps:I

.field floorsubmap:[I

.field psysubmap:[I

.field residuesubmap:[I

.field submaps:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Mapping0;

.field timesubmap:[I


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Mapping0;)V
    .registers 4

    .line 331
    iput-object p1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->this$0:Lcom/jcraft/jorbis/Mapping0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x100

    new-array v0, p1, [I

    .line 333
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 335
    iput-object v1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    new-array v1, v0, [I

    .line 336
    iput-object v1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    new-array v1, v0, [I

    .line 337
    iput-object v1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    new-array v0, v0, [I

    .line 338
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->psysubmap:[I

    new-array v0, p1, [I

    .line 341
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    new-array p1, p1, [I

    .line 342
    iput-object p1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    return-void
.end method


# virtual methods
.method free()V
    .registers 2

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    .line 346
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    .line 347
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    .line 348
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    .line 349
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->psysubmap:[I

    .line 351
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    .line 352
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    return-void
.end method

###### Class com.jcraft.jorbis.Mapping0.LookMapping0 (com.jcraft.jorbis.Mapping0$LookMapping0)
.class Lcom/jcraft/jorbis/Mapping0$LookMapping0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ch:I

.field decay:[[F

.field floor_func:[Lcom/jcraft/jorbis/FuncFloor;

.field floor_look:[Ljava/lang/Object;

.field floor_state:[Ljava/lang/Object;

.field lastframe:I

.field map:Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

.field mode:Lcom/jcraft/jorbis/InfoMode;

.field psy_look:[Lcom/jcraft/jorbis/PsyLook;

.field residue_func:[Lcom/jcraft/jorbis/FuncResidue;

.field residue_look:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/jcraft/jorbis/Mapping0;

.field time_func:[Lcom/jcraft/jorbis/FuncTime;

.field time_look:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Mapping0;)V
    .registers 2

    .line 356
    iput-object p1, p0, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->this$0:Lcom/jcraft/jorbis/Mapping0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
