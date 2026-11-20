###### Class com.jcraft.jorbis.Residue0 (com.jcraft.jorbis.Residue0)
.class Lcom/jcraft/jorbis/Residue0;
.super Lcom/jcraft/jorbis/FuncResidue;
.source "SourceFile"


# static fields
.field private static _01inverse_partword:[[[I

.field static _2inverse_partword:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [[[I

    .line 156
    sput-object v0, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    const/4 v0, 0x0

    .line 229
    move-object v1, v0

    check-cast v1, [[I

    sput-object v0, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncResidue;-><init>()V

    return-void
.end method

.method static declared-synchronized _01inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FII)I
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-class v3, Lcom/jcraft/jorbis/Residue0;

    monitor-enter v3

    .line 162
    :try_start_9
    move-object/from16 v4, p1

    check-cast v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;

    .line 163
    iget-object v5, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 166
    iget v6, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    .line 167
    iget-object v7, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget v7, v7, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 168
    iget v8, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    iget v9, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    sub-int/2addr v8, v9

    .line 170
    div-int/2addr v8, v6

    add-int v9, v8, v7

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 171
    div-int/2addr v9, v7

    .line 173
    sget-object v11, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    array-length v11, v11

    if-ge v11, v1, :cond_29

    .line 174
    new-array v11, v1, [[[I

    sput-object v11, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    :cond_29
    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v1, :cond_3c

    .line 178
    sget-object v13, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v14, v13, v12

    if-eqz v14, :cond_35

    array-length v14, v14

    if-ge v14, v9, :cond_39

    .line 179
    :cond_35
    new-array v14, v9, [[I

    aput-object v14, v13, v12

    :cond_39
    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    :cond_3c
    const/4 v9, 0x0

    .line 183
    :goto_3d
    iget v12, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->stages:I

    if-ge v9, v12, :cond_e9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_43
    if-ge v12, v8, :cond_e0

    const/4 v14, -0x1

    if-nez v9, :cond_71

    const/4 v15, 0x0

    :goto_49
    if-ge v15, v1, :cond_71

    .line 190
    iget-object v10, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget-object v11, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v10, v11}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v10
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_ec

    if-ne v10, v14, :cond_58

    .line 192
    monitor-exit v3

    :goto_56
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_58
    :try_start_58
    sget-object v11, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v11, v11, v15

    iget-object v14, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    aget-object v10, v14, v10

    aput-object v10, v11, v13

    .line 195
    sget-object v10, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v10, v10, v15

    aget-object v10, v10, v13
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_ec

    if-nez v10, :cond_6c

    .line 196
    monitor-exit v3

    goto :goto_56

    :cond_6c
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    const/4 v14, -0x1

    goto :goto_49

    :cond_71
    const/4 v10, 0x0

    :goto_72
    if-ge v10, v7, :cond_d5

    if-ge v12, v8, :cond_d5

    const/4 v11, 0x0

    :goto_77
    if-ge v11, v1, :cond_c9

    .line 204
    :try_start_79
    iget v14, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    mul-int v15, v12, v6

    add-int/2addr v14, v15

    .line 205
    sget-object v15, Lcom/jcraft/jorbis/Residue0;->_01inverse_partword:[[[I

    aget-object v15, v15, v11

    aget-object v15, v15, v13

    aget v15, v15, v10

    .line 206
    iget-object v1, v5, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v1, v1, v15

    const/16 v16, 0x1

    shl-int v17, v16, v9

    and-int v1, v1, v17

    if-eqz v1, :cond_bf

    .line 207
    iget-object v1, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    move-object/from16 v16, v5

    iget-object v5, v4, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    aget-object v5, v5, v15

    aget v5, v5, v9

    aget-object v1, v1, v5

    if-eqz v1, :cond_c1

    if-nez v2, :cond_af

    .line 210
    aget-object v5, p2, v11

    iget-object v15, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v1, v5, v14, v15, v6}, Lcom/jcraft/jorbis/CodeBook;->decodevs_add([FILcom/jcraft/jogg/Buffer;I)I

    move-result v1
    :try_end_aa
    .catchall {:try_start_79 .. :try_end_aa} :catchall_ec

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c2

    .line 212
    monitor-exit v3

    goto :goto_56

    :cond_af
    const/4 v5, 0x1

    if-ne v2, v5, :cond_c1

    .line 216
    :try_start_b2
    aget-object v15, p2, v11

    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v1, v15, v14, v5, v6}, Lcom/jcraft/jorbis/CodeBook;->decodev_add([FILcom/jcraft/jogg/Buffer;I)I

    move-result v1
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_ec

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c2

    .line 218
    monitor-exit v3

    goto :goto_56

    :cond_bf
    move-object/from16 v16, v5

    :cond_c1
    const/4 v5, -0x1

    :cond_c2
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p3

    move-object/from16 v5, v16

    goto :goto_77

    :cond_c9
    move-object/from16 v16, v5

    const/4 v5, -0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p3

    move-object/from16 v5, v16

    goto :goto_72

    :cond_d5
    move-object/from16 v16, v5

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p3

    move-object/from16 v5, v16

    const/4 v10, 0x1

    goto/16 :goto_43

    :cond_e0
    move-object/from16 v16, v5

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    const/4 v10, 0x1

    goto/16 :goto_3d

    .line 226
    :cond_e9
    monitor-exit v3

    goto/16 :goto_56

    :catchall_ec
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static declared-synchronized _2inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FI)I
    .registers 23

    move-object/from16 v0, p0

    const-class v1, Lcom/jcraft/jorbis/Residue0;

    monitor-enter v1

    .line 233
    :try_start_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;

    .line 234
    iget-object v3, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 237
    iget v10, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    .line 238
    iget-object v4, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget v11, v4, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 239
    iget v4, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    iget v5, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    sub-int/2addr v4, v5

    .line 241
    div-int v12, v4, v10

    add-int v4, v12, v11

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    .line 242
    div-int/2addr v4, v11

    .line 244
    sget-object v5, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    if-eqz v5, :cond_24

    array-length v5, v5

    if-ge v5, v4, :cond_28

    .line 245
    :cond_24
    new-array v4, v4, [[I

    sput-object v4, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    :cond_28
    const/4 v14, 0x0

    move v15, v14

    .line 247
    :goto_2a
    iget v4, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->stages:I

    if-ge v15, v4, :cond_ae

    move v4, v14

    move/from16 v16, v4

    :goto_31
    if-ge v4, v12, :cond_a9

    const/4 v9, -0x1

    if-nez v15, :cond_52

    .line 251
    iget-object v5, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget-object v6, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v5, v6}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v5
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_b0

    if-ne v5, v9, :cond_42

    .line 253
    monitor-exit v1

    return v14

    .line 255
    :cond_42
    :try_start_42
    sget-object v6, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    iget-object v7, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    aget-object v5, v7, v5

    aput-object v5, v6, v16

    .line 256
    sget-object v5, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    aget-object v5, v5, v16
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_b0

    if-nez v5, :cond_52

    .line 257
    monitor-exit v1

    return v14

    :cond_52
    move v8, v4

    move v7, v14

    :goto_54
    if-ge v7, v11, :cond_a1

    if-ge v8, v12, :cond_a1

    .line 263
    :try_start_58
    iget v4, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    mul-int v5, v8, v10

    add-int v6, v4, v5

    .line 264
    sget-object v4, Lcom/jcraft/jorbis/Residue0;->_2inverse_partword:[[I

    aget-object v4, v4, v16

    aget v4, v4, v7

    .line 265
    iget-object v5, v3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v5, v5, v4

    shl-int v17, v13, v15

    and-int v5, v5, v17

    if-eqz v5, :cond_95

    .line 266
    iget-object v5, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget-object v9, v2, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    aget-object v4, v9, v4

    aget v4, v4, v15

    aget-object v4, v5, v4

    if-eqz v4, :cond_8f

    .line 268
    iget-object v9, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    move-object/from16 v5, p2

    move/from16 v17, v7

    move/from16 v7, p3

    move/from16 v18, v8

    move-object v8, v9

    const/4 v13, -0x1

    move v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/jcraft/jorbis/CodeBook;->decodevv_add([[FIILcom/jcraft/jogg/Buffer;I)I

    move-result v4
    :try_end_8b
    .catchall {:try_start_58 .. :try_end_8b} :catchall_b0

    if-ne v4, v13, :cond_9a

    .line 270
    monitor-exit v1

    return v14

    :cond_8f
    move/from16 v17, v7

    move/from16 v18, v8

    const/4 v13, -0x1

    goto :goto_9a

    :cond_95
    move/from16 v17, v7

    move/from16 v18, v8

    move v13, v9

    :cond_9a
    :goto_9a
    add-int/lit8 v7, v17, 0x1

    add-int/lit8 v8, v18, 0x1

    move v9, v13

    const/4 v13, 0x1

    goto :goto_54

    :cond_a1
    move/from16 v18, v8

    add-int/lit8 v16, v16, 0x1

    move/from16 v4, v18

    const/4 v13, 0x1

    goto :goto_31

    :cond_a9
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto/16 :goto_2a

    .line 277
    :cond_ae
    monitor-exit v1

    return v14

    :catchall_b0
    move-exception v0

    monitor-exit v1

    throw v0
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

.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p5, :cond_13

    .line 283
    aget v3, p4, v1

    if-eqz v3, :cond_10

    add-int/lit8 v3, v2, 0x1

    .line 284
    aget-object v4, p3, v1

    aput-object v4, p3, v2

    move v2, v3

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    if-eqz v2, :cond_1a

    .line 288
    invoke-static {p1, p2, p3, v2, v0}, Lcom/jcraft/jorbis/Residue0;->_01inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FII)I

    move-result p1

    return p1

    :cond_1a
    return v0
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 101
    check-cast p3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 102
    new-instance v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Residue0$LookResidue0;-><init>(Lcom/jcraft/jorbis/Residue0;)V

    .line 106
    iput-object p3, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 107
    iget p2, p2, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    iput p2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->map:I

    .line 109
    iget p2, p3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    iput p2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    .line 110
    iget-object p2, p1, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iput-object p2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    .line 111
    iget-object p1, p1, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    iget p2, p3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    aget-object p1, p1, p2

    iput-object p1, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    .line 113
    iget-object p1, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->phrasebook:Lcom/jcraft/jorbis/CodeBook;

    iget p1, p1, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 115
    iget p2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    new-array p2, p2, [[I

    iput-object p2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    move v3, v2

    .line 117
    :goto_2b
    iget v4, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    if-ge v1, v4, :cond_5d

    .line 118
    iget-object v4, p3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v4, v4, v1

    .line 119
    invoke-static {v4}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v5

    if-eqz v5, :cond_5a

    if-le v5, v2, :cond_3c

    move v2, v5

    .line 123
    :cond_3c
    iget-object v6, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    new-array v7, v5, [I

    aput-object v7, v6, v1

    move v6, p2

    :goto_43
    if-ge v6, v5, :cond_5a

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    and-int/2addr v7, v4

    if-eqz v7, :cond_57

    .line 126
    iget-object v7, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partbooks:[[I

    aget-object v7, v7, v1

    iget-object v8, p3, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    add-int/lit8 v9, v3, 0x1

    aget v3, v8, v3

    aput v3, v7, v6

    move v3, v9

    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 132
    :cond_5d
    iget p3, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    int-to-double v3, p3

    int-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int p3, v3

    iput p3, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    .line 133
    iput v2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->stages:I

    .line 134
    iget p3, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    new-array p3, p3, [[I

    iput-object p3, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    move p3, p2

    .line 135
    :goto_75
    iget v1, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    if-ge p3, v1, :cond_9c

    .line 137
    iget v1, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->partvals:I

    iget v2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    div-int/2addr v1, v2

    .line 138
    iget-object v2, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    new-array v3, p1, [I

    aput-object v3, v2, p3

    move v2, p2

    move v3, p3

    :goto_86
    if-ge v2, p1, :cond_99

    .line 141
    div-int v4, v3, v1

    mul-int v5, v4, v1

    sub-int/2addr v3, v5

    .line 143
    iget v5, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->parts:I

    div-int/2addr v1, v5

    .line 144
    iget-object v5, v0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->decodemap:[[I

    aget-object v5, v5, p3

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_99
    add-int/lit8 p3, p3, 0x1

    goto :goto_75

    :cond_9c
    return-object v0
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 11

    .line 33
    check-cast p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    .line 35
    iget v0, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    const/16 v1, 0x18

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 36
    iget v0, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 38
    iget v0, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 40
    iget v0, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    sub-int/2addr v0, v2

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 41
    iget v0, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    .line 46
    :goto_26
    iget v5, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    if-ge v3, v5, :cond_4e

    .line 47
    iget-object v5, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aget v5, v5, v3

    .line 48
    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_42

    .line 50
    invoke-virtual {p2, v5, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 51
    invoke-virtual {p2, v2, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    ushr-int/lit8 v6, v5, 0x3

    const/4 v7, 0x5

    .line 52
    invoke-virtual {p2, v6, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_46

    :cond_42
    const/4 v6, 0x4

    .line 55
    invoke-virtual {p2, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 57
    :goto_46
    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->icount(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_4e
    :goto_4e
    if-ge v0, v4, :cond_5a

    .line 60
    iget-object v2, p1, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5a
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 12

    .line 66
    new-instance v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Residue0$InfoResidue0;-><init>(Lcom/jcraft/jorbis/Residue0;)V

    const/16 v1, 0x18

    .line 67
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->begin:I

    .line 68
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->end:I

    .line 69
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->grouping:I

    const/4 v1, 0x6

    .line 70
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    const/16 v1, 0x8

    .line 71
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 73
    :goto_2e
    iget v6, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->partitions:I

    if-ge v4, v6, :cond_51

    const/4 v6, 0x3

    .line 74
    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    .line 75
    invoke-virtual {p2, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    if-eqz v8, :cond_45

    const/4 v8, 0x5

    .line 76
    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    shl-int/lit8 v6, v8, 0x3

    or-int/2addr v7, v6

    .line 78
    :cond_45
    iget-object v6, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    aput v7, v6, v4

    .line 79
    invoke-static {v7}, Lcom/jcraft/jorbis/Util;->icount(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_51
    move v2, v3

    :goto_52
    if-ge v2, v5, :cond_5f

    .line 83
    iget-object v4, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 86
    :cond_5f
    iget p2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->groupbook:I

    iget v1, p1, Lcom/jcraft/jorbis/Info;->books:I

    const/4 v2, 0x0

    if-lt p2, v1, :cond_6a

    .line 87
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Residue0;->free_info(Ljava/lang/Object;)V

    return-object v2

    :cond_6a
    :goto_6a
    if-ge v3, v5, :cond_7b

    .line 92
    iget-object p2, v0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    aget p2, p2, v3

    iget v1, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt p2, v1, :cond_78

    .line 93
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Residue0;->free_info(Ljava/lang/Object;)V

    return-object v2

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_7b
    return-object v0
.end method

###### Class com.jcraft.jorbis.Residue0.InfoResidue0 (com.jcraft.jorbis.Residue0$InfoResidue0)
.class Lcom/jcraft/jorbis/Residue0$InfoResidue0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ampmax:[F

.field begin:I

.field blimit:[I

.field booklist:[I

.field end:I

.field entmax:[F

.field groupbook:I

.field grouping:I

.field partitions:I

.field secondstages:[I

.field subgrp:[I

.field final synthetic this$0:Lcom/jcraft/jorbis/Residue0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Residue0;)V
    .registers 3

    .line 311
    iput-object p1, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->this$0:Lcom/jcraft/jorbis/Residue0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    new-array v0, p1, [I

    .line 320
    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 321
    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    new-array v0, p1, [F

    .line 324
    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->entmax:[F

    new-array v0, p1, [F

    .line 325
    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->ampmax:[F

    new-array v0, p1, [I

    .line 326
    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->subgrp:[I

    new-array p1, p1, [I

    .line 327
    iput-object p1, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->blimit:[I

    return-void
.end method

###### Class com.jcraft.jorbis.Residue0.LookResidue0 (com.jcraft.jorbis.Residue0$LookResidue0)
.class Lcom/jcraft/jorbis/Residue0$LookResidue0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field decodemap:[[I

.field frames:I

.field fullbooks:[Lcom/jcraft/jorbis/CodeBook;

.field info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

.field map:I

.field partbooks:[[I

.field parts:I

.field partvals:I

.field phrasebits:I

.field phrasebook:Lcom/jcraft/jorbis/CodeBook;

.field postbits:I

.field stages:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Residue0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Residue0;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->this$0:Lcom/jcraft/jorbis/Residue0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
