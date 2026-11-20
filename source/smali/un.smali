###### Class defpackage.un (un)
.class public Lun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[F

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:[I

.field private g:[I


# direct methods
.method public constructor <init>()V
    .registers 17

    move-object/from16 v1, p0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x300

    new-array v2, v0, [F

    .line 17
    iput-object v2, v1, Lun;->a:[F

    const/16 v2, 0x1400

    new-array v3, v2, [I

    .line 19
    iput-object v3, v1, Lun;->b:[I

    new-array v3, v2, [I

    .line 20
    iput-object v3, v1, Lun;->c:[I

    new-array v3, v2, [I

    .line 21
    iput-object v3, v1, Lun;->d:[I

    new-array v2, v2, [I

    .line 22
    iput-object v2, v1, Lun;->e:[I

    const/16 v2, 0x22

    new-array v2, v2, [I

    .line 23
    iput-object v2, v1, Lun;->f:[I

    new-array v0, v0, [I

    .line 24
    iput-object v0, v1, Lun;->g:[I

    const/16 v2, 0x100

    .line 28
    :try_start_29
    const-class v0, Lun;

    const-string v4, "/terrain.png"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lmcshim/imageio/ImageIO;->read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;

    move-result-object v4

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x100

    const/16 v8, 0x100

    const/4 v10, 0x0

    const/16 v11, 0x100

    move-object v9, v0

    .line 30
    invoke-virtual/range {v4 .. v11}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v2, :cond_a4

    .line 35
    rem-int/lit8 v5, v4, 0x10

    const/16 v6, 0x10

    mul-int/2addr v5, v6

    .line 36
    div-int/lit8 v7, v4, 0x10

    mul-int/2addr v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_56
    if-ge v8, v6, :cond_9d

    const/4 v13, 0x0

    :goto_59
    if-ge v13, v6, :cond_7d

    add-int v14, v13, v5

    add-int v15, v8, v7

    mul-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 40
    aget v14, v0, v14

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    const/16 v3, 0x80

    if-le v15, v3, :cond_7a

    shr-int/lit8 v3, v14, 0x10

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v9, v3

    shr-int/lit8 v3, v14, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v11, v3

    and-int/lit16 v3, v14, 0xff

    add-int/2addr v12, v3

    add-int/lit8 v10, v10, 0x1

    :cond_7a
    add-int/lit8 v13, v13, 0x1

    goto :goto_59

    :cond_7d
    if-nez v10, :cond_81

    add-int/lit8 v10, v10, 0x1

    .line 50
    :cond_81
    iget-object v3, v1, Lun;->a:[F

    mul-int/lit8 v13, v4, 0x3

    add-int/lit8 v14, v13, 0x0

    div-int v15, v9, v10

    int-to-float v15, v15

    aput v15, v3, v14

    add-int/lit8 v14, v13, 0x1

    .line 51
    div-int v15, v11, v10

    int-to-float v15, v15

    aput v15, v3, v14

    add-int/lit8 v13, v13, 0x2

    .line 52
    div-int v14, v12, v10

    int-to-float v14, v14

    aput v14, v3, v13
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_9a} :catch_a0

    add-int/lit8 v8, v8, 0x1

    goto :goto_56

    :cond_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :catch_a0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a4
    const/4 v3, 0x0

    :goto_a5
    if-ge v3, v2, :cond_de

    .line 60
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, v3

    if-eqz v0, :cond_db

    .line 61
    iget-object v0, v1, Lun;->g:[I

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    sget-object v6, Luu;->m:[Luu;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Luu;->a(I)I

    move-result v6

    aput v6, v0, v5

    .line 62
    iget-object v0, v1, Lun;->g:[I

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Luu;->m:[Luu;

    aget-object v6, v6, v3

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Luu;->a(I)I

    move-result v6

    aput v6, v0, v5

    .line 63
    iget-object v0, v1, Lun;->g:[I

    add-int/2addr v4, v7

    sget-object v5, Luu;->m:[Luu;

    aget-object v5, v5, v3

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Luu;->a(I)I

    move-result v5

    aput v5, v0, v4

    :cond_db
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_de
    return-void
.end method

.method private a()V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_4e

    move v2, v0

    :goto_7
    const/16 v3, 0xa0

    if-ge v2, v3, :cond_4b

    mul-int/lit8 v3, v2, 0x20

    add-int/2addr v3, v1

    .line 212
    iget-object v4, p0, Lun;->c:[I

    aget v5, v4, v3

    if-nez v5, :cond_18

    .line 213
    iget-object v5, p0, Lun;->b:[I

    aput v0, v5, v3

    .line 215
    :cond_18
    iget-object v5, p0, Lun;->d:[I

    aget v5, v5, v3

    aget v4, v4, v3

    if-le v5, v4, :cond_48

    .line 216
    iget-object v4, p0, Lun;->b:[I

    aget v5, v4, v3

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    const v7, 0xfefefe

    and-int/2addr v5, v7

    shr-int/lit8 v5, v5, 0x1

    .line 217
    iget-object v7, p0, Lun;->e:[I

    aget v8, v7, v3

    add-int/2addr v5, v8

    aput v5, v4, v3

    const/16 v8, 0x80

    if-ge v6, v8, :cond_43

    .line 219
    aget v5, v7, v3

    mul-int/lit8 v5, v5, 0x2

    const/high16 v6, -0x80000000

    add-int/2addr v5, v6

    aput v5, v4, v3

    goto :goto_48

    :cond_43
    const/high16 v6, -0x1000000

    or-int/2addr v5, v6

    .line 221
    aput v5, v4, v3

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4e
    return-void
.end method


# virtual methods
.method public a(Lre;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 70
    iget-object v2, v1, Lre;->b:Lfd;

    const/4 v3, 0x1

    if-nez v2, :cond_e

    .line 72
    iput-boolean v3, v1, Lre;->f:Z

    .line 73
    iput-boolean v3, v1, Lre;->e:Z

    return-void

    .line 77
    :cond_e
    iget v4, v1, Lre;->c:I

    mul-int/lit8 v4, v4, 0x10

    .line 78
    iget v5, v1, Lre;->d:I

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v4, 0x10

    add-int/lit8 v7, v5, 0x10

    .line 81
    iget v8, v1, Lre;->c:I

    iget v9, v1, Lre;->d:I

    invoke-virtual {v2, v8, v9}, Lfd;->c(II)Llm;

    move-result-object v8

    .line 82
    invoke-virtual {v8}, Llm;->h()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 83
    iput-boolean v3, v1, Lre;->f:Z

    .line 84
    iput-boolean v3, v1, Lre;->e:Z

    return-void

    :cond_2d
    const/4 v8, 0x0

    .line 87
    iput-boolean v8, v1, Lre;->f:Z

    .line 90
    iget-object v9, v0, Lun;->c:[I

    invoke-static {v9, v8}, Ljava/util/Arrays;->fill([II)V

    .line 91
    iget-object v9, v0, Lun;->d:[I

    invoke-static {v9, v8}, Ljava/util/Arrays;->fill([II)V

    .line 92
    iget-object v9, v0, Lun;->f:[I

    const/16 v10, 0xa0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    sub-int/2addr v7, v3

    :goto_42
    if-lt v7, v5, :cond_287

    add-int/lit8 v12, v6, -0x1

    :goto_46
    if-lt v12, v4, :cond_276

    sub-int v13, v12, v4

    sub-int v14, v7, v5

    add-int v15, v13, v14

    move/from16 v16, v3

    move v3, v8

    :goto_51
    const/16 v11, 0x80

    if-ge v3, v11, :cond_265

    sub-int v11, v14, v13

    sub-int/2addr v11, v3

    add-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x10

    .line 104
    iget-object v8, v0, Lun;->f:[I

    aget v9, v8, v15

    if-lt v11, v9, :cond_6b

    add-int/lit8 v9, v15, 0x1

    aget v8, v8, v9

    if-lt v11, v8, :cond_6b

    move/from16 v18, v4

    goto/16 :goto_ec

    .line 107
    :cond_6b
    sget-object v8, Luu;->m:[Luu;

    invoke-virtual {v2, v12, v3, v7}, Lfd;->a(III)I

    move-result v9

    aget-object v8, v8, v9

    if-nez v8, :cond_85

    move/from16 v18, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v13

    move/from16 v29, v14

    const/16 v16, 0x0

    :goto_81
    const/16 v17, 0x0

    goto/16 :goto_251

    .line 111
    :cond_85
    iget-object v9, v8, Luu;->bA:Lln;

    sget-object v10, Lln;->g:Lln;

    move/from16 v18, v4

    const v19, 0x3ecccccd    # 0.4f

    const v20, 0x3f19999a    # 0.6f

    const/high16 v21, 0x42fe0000    # 127.0f

    const/4 v4, -0x1

    if-ne v9, v10, :cond_f5

    add-int/lit8 v8, v3, 0x1

    .line 112
    invoke-virtual {v2, v12, v8, v7}, Lfd;->a(III)I

    move-result v9

    if-eqz v9, :cond_a8

    .line 113
    sget-object v10, Luu;->m:[Luu;

    aget-object v9, v10, v9

    iget-object v9, v9, Luu;->bA:Lln;

    sget-object v10, Lln;->g:Lln;

    if-eq v9, v10, :cond_ec

    :cond_a8
    int-to-float v9, v3

    div-float v9, v9, v21

    mul-float v9, v9, v20

    add-float v9, v9, v19

    .line 115
    invoke-virtual {v2, v12, v8, v7}, Lfd;->c(III)F

    move-result v8

    mul-float/2addr v8, v9

    if-ltz v11, :cond_ec

    const/16 v9, 0xa0

    if-lt v11, v9, :cond_bb

    goto :goto_ec

    :cond_bb
    mul-int/lit8 v11, v11, 0x20

    add-int/2addr v11, v15

    if-ltz v15, :cond_d3

    const/16 v9, 0x20

    if-gt v15, v9, :cond_d3

    .line 125
    iget-object v9, v0, Lun;->d:[I

    aget v10, v9, v11

    if-gt v10, v3, :cond_d3

    .line 126
    aput v3, v9, v11

    .line 127
    iget-object v9, v0, Lun;->e:[I

    mul-float v10, v8, v21

    float-to-int v10, v10

    aput v10, v9, v11

    :cond_d3
    if-lt v15, v4, :cond_ea

    const/16 v4, 0x1f

    if-gt v15, v4, :cond_ea

    .line 131
    iget-object v4, v0, Lun;->d:[I

    add-int/lit8 v11, v11, 0x1

    aget v9, v4, v11

    if-gt v9, v3, :cond_ea

    .line 132
    aput v3, v4, v11

    .line 133
    iget-object v4, v0, Lun;->e:[I

    mul-float v8, v8, v21

    float-to-int v8, v8

    aput v8, v4, v11

    :cond_ea
    const/16 v16, 0x0

    :cond_ec
    :goto_ec
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v13

    move/from16 v29, v14

    goto :goto_81

    :cond_f5
    if-eqz v16, :cond_107

    .line 144
    iget-object v9, v0, Lun;->f:[I

    aget v10, v9, v15

    if-ge v11, v10, :cond_ff

    aput v11, v9, v15

    :cond_ff
    add-int/lit8 v10, v15, 0x1

    .line 145
    aget v4, v9, v10

    if-ge v11, v4, :cond_107

    aput v11, v9, v10

    :cond_107
    int-to-float v4, v3

    div-float v4, v4, v21

    mul-float v4, v4, v20

    add-float v4, v4, v19

    const v21, 0x3f4ccccd    # 0.8f

    const/high16 v22, -0x1000000

    if-ltz v11, :cond_1a7

    const/16 v9, 0xa0

    if-ge v11, v9, :cond_1a7

    mul-int/lit8 v9, v11, 0x20

    add-int/2addr v9, v15

    .line 152
    iget-object v10, v0, Lun;->g:[I

    move/from16 v24, v5

    iget v5, v8, Luu;->bn:I

    mul-int/lit8 v5, v5, 0x3

    const/16 v17, 0x0

    add-int/lit8 v5, v5, 0x0

    aget v5, v10, v5

    add-int/lit8 v10, v3, 0x1

    .line 153
    invoke-virtual {v2, v12, v10, v7}, Lfd;->c(III)F

    move-result v10

    mul-float v10, v10, v21

    const v23, 0x3e4ccccd    # 0.2f

    add-float v10, v10, v23

    mul-float/2addr v10, v4

    move/from16 v25, v6

    if-ltz v15, :cond_16e

    .line 158
    iget-object v6, v0, Lun;->c:[I

    move/from16 v26, v13

    aget v13, v6, v9

    if-gt v13, v3, :cond_170

    .line 159
    aput v3, v6, v9

    .line 160
    iget-object v6, v0, Lun;->b:[I

    iget-object v13, v0, Lun;->a:[F

    mul-int/lit8 v27, v5, 0x3

    add-int/lit8 v28, v27, 0x0

    aget v28, v13, v28

    move/from16 v29, v14

    mul-float v14, v28, v10

    float-to-int v14, v14

    shl-int/lit8 v14, v14, 0x10

    or-int v14, v14, v22

    add-int/lit8 v28, v27, 0x1

    aget v28, v13, v28

    mul-float v1, v28, v10

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v14

    const/4 v14, 0x2

    add-int/lit8 v27, v27, 0x2

    aget v13, v13, v27

    mul-float/2addr v13, v10

    float-to-int v13, v13

    or-int/2addr v1, v13

    aput v1, v6, v9

    goto :goto_172

    :cond_16e
    move/from16 v26, v13

    :cond_170
    move/from16 v29, v14

    :goto_172
    const/16 v1, 0x1f

    if-ge v15, v1, :cond_1b1

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v10, v1

    .line 165
    iget-object v1, v0, Lun;->c:[I

    add-int/lit8 v9, v9, 0x1

    aget v6, v1, v9

    if-gt v6, v3, :cond_1b1

    .line 166
    aput v3, v1, v9

    .line 167
    iget-object v1, v0, Lun;->b:[I

    iget-object v6, v0, Lun;->a:[F

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v13, v5, 0x0

    aget v13, v6, v13

    mul-float/2addr v13, v10

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x10

    or-int v13, v13, v22

    add-int/lit8 v14, v5, 0x1

    aget v14, v6, v14

    mul-float/2addr v14, v10

    float-to-int v14, v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    const/4 v14, 0x2

    add-int/2addr v5, v14

    aget v5, v6, v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    or-int/2addr v5, v13

    aput v5, v1, v9

    goto :goto_1b1

    :cond_1a7
    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v13

    move/from16 v29, v14

    const/16 v17, 0x0

    :cond_1b1
    :goto_1b1
    const/4 v1, -0x1

    if-lt v11, v1, :cond_251

    const/16 v1, 0x9f

    if-ge v11, v1, :cond_251

    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x20

    mul-int/2addr v11, v1

    add-int/2addr v11, v15

    .line 174
    iget-object v1, v0, Lun;->g:[I

    iget v5, v8, Luu;->bn:I

    mul-int/lit8 v5, v5, 0x3

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v1, v1, v5

    add-int/lit8 v5, v12, -0x1

    .line 175
    invoke-virtual {v2, v5, v3, v7}, Lfd;->c(III)F

    move-result v5

    mul-float v5, v5, v21

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v5, v6

    .line 176
    iget-object v9, v0, Lun;->g:[I

    iget v8, v8, Luu;->bn:I

    mul-int/lit8 v8, v8, 0x3

    const/4 v10, 0x2

    add-int/2addr v8, v10

    aget v8, v9, v8

    add-int/lit8 v9, v7, 0x1

    .line 177
    invoke-virtual {v2, v12, v3, v9}, Lfd;->c(III)F

    move-result v9

    mul-float v9, v9, v21

    add-float/2addr v9, v6

    if-ltz v15, :cond_218

    mul-float/2addr v5, v4

    mul-float v5, v5, v20

    .line 181
    iget-object v6, v0, Lun;->c:[I

    aget v10, v6, v11

    add-int/lit8 v13, v3, -0x1

    if-gt v10, v13, :cond_218

    .line 182
    aput v13, v6, v11

    .line 183
    iget-object v6, v0, Lun;->b:[I

    iget-object v10, v0, Lun;->a:[F

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v13, v1, 0x0

    aget v13, v10, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x10

    or-int v13, v13, v22

    add-int/lit8 v14, v1, 0x1

    aget v14, v10, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    const/4 v14, 0x2

    add-int/2addr v1, v14

    aget v1, v10, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    or-int/2addr v1, v13

    aput v1, v6, v11

    :cond_218
    const/16 v1, 0x1f

    if-ge v15, v1, :cond_251

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v9, v1

    mul-float/2addr v9, v4

    mul-float v9, v9, v19

    .line 188
    iget-object v1, v0, Lun;->c:[I

    add-int/lit8 v11, v11, 0x1

    aget v4, v1, v11

    add-int/lit8 v5, v3, -0x1

    if-gt v4, v5, :cond_251

    .line 189
    aput v5, v1, v11

    .line 190
    iget-object v1, v0, Lun;->b:[I

    iget-object v4, v0, Lun;->a:[F

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v5, v8, 0x0

    aget v5, v4, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x10

    or-int v5, v5, v22

    add-int/lit8 v6, v8, 0x1

    aget v6, v4, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x2

    add-int/2addr v8, v6

    aget v4, v4, v8

    mul-float/2addr v4, v9

    float-to-int v4, v4

    or-int/2addr v4, v5

    aput v4, v1, v11

    :cond_251
    :goto_251
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v8, v17

    move/from16 v4, v18

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v13, v26

    move/from16 v14, v29

    const/16 v10, 0xa0

    goto/16 :goto_51

    :cond_265
    move/from16 v18, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v17, v8

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, p1

    const/4 v3, 0x1

    const/16 v10, 0xa0

    goto/16 :goto_46

    :cond_276
    move/from16 v18, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v17, v8

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v1, p1

    const/4 v3, 0x1

    const/16 v10, 0xa0

    goto/16 :goto_42

    .line 199
    :cond_287
    invoke-direct/range {p0 .. p0}, Lun;->a()V

    move-object/from16 v1, p1

    .line 201
    iget-object v2, v1, Lre;->a:Lmcshim/awt/image/BufferedImage;

    if-nez v2, :cond_29c

    .line 202
    new-instance v2, Lmcshim/awt/image/BufferedImage;

    const/16 v3, 0x20

    const/16 v4, 0xa0

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lmcshim/awt/image/BufferedImage;-><init>(III)V

    iput-object v2, v1, Lre;->a:Lmcshim/awt/image/BufferedImage;

    .line 204
    :cond_29c
    iget-object v6, v1, Lre;->a:Lmcshim/awt/image/BufferedImage;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/16 v10, 0xa0

    iget-object v11, v0, Lun;->b:[I

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual/range {v6 .. v13}, Lmcshim/awt/image/BufferedImage;->setRGB(IIII[III)V

    const/4 v2, 0x1

    .line 205
    iput-boolean v2, v1, Lre;->e:Z

    return-void
.end method
