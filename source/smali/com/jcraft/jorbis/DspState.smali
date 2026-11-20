###### Class com.jcraft.jorbis.DspState (com.jcraft.jorbis.DspState)
.class public Lcom/jcraft/jorbis/DspState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final M_PI:F = 3.1415927f

.field static final VI_TRANSFORMB:I = 0x1

.field static final VI_WINDOWB:I = 0x1


# instance fields
.field W:I

.field analysisp:I

.field centerW:I

.field envelope_current:I

.field envelope_storage:I

.field eofflag:I

.field floor_bits:J

.field fullbooks:[Lcom/jcraft/jorbis/CodeBook;

.field glue_bits:J

.field granulepos:J

.field header:[B

.field header1:[B

.field header2:[B

.field lW:I

.field mode:[Ljava/lang/Object;

.field modebits:I

.field multipliers:[F

.field nW:I

.field pcm:[[F

.field pcm_current:I

.field pcm_returned:I

.field pcm_storage:I

.field res_bits:J

.field sequence:J

.field time_bits:J

.field transform:[[Ljava/lang/Object;

.field vi:Lcom/jcraft/jorbis/Info;

.field window:[[[[[F


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/Object;

    .line 78
    iput-object v1, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    new-array v1, v0, [[[[[F

    .line 79
    iput-object v1, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    new-array v2, v0, [[[[F

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v4, v0, [[[F

    aput-object v4, v2, v3

    aget-object v2, v1, v3

    new-array v4, v0, [[[F

    const/4 v5, 0x1

    .line 82
    aput-object v4, v2, v5

    .line 83
    aget-object v2, v2, v3

    new-array v4, v0, [[F

    aput-object v4, v2, v3

    aget-object v2, v1, v3

    .line 84
    aget-object v4, v2, v3

    new-array v6, v0, [[F

    aput-object v6, v4, v5

    .line 85
    aget-object v2, v2, v5

    new-array v4, v0, [[F

    aput-object v4, v2, v3

    aget-object v2, v1, v3

    .line 86
    aget-object v2, v2, v5

    new-array v4, v0, [[F

    aput-object v4, v2, v5

    new-array v2, v0, [[[[F

    aput-object v2, v1, v5

    new-array v4, v0, [[[F

    aput-object v4, v2, v3

    new-array v4, v0, [[[F

    aput-object v4, v2, v5

    aget-object v2, v1, v5

    .line 90
    aget-object v4, v2, v3

    new-array v6, v0, [[F

    aput-object v6, v4, v3

    .line 91
    aget-object v2, v2, v3

    new-array v4, v0, [[F

    aput-object v4, v2, v5

    aget-object v1, v1, v5

    .line 92
    aget-object v1, v1, v5

    new-array v2, v0, [[F

    aput-object v2, v1, v3

    new-array v0, v0, [[F

    .line 93
    aput-object v0, v1, v5

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jorbis/Info;)V
    .registers 5

    .line 226
    invoke-direct {p0}, Lcom/jcraft/jorbis/DspState;-><init>()V

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/DspState;->init(Lcom/jcraft/jorbis/Info;Z)I

    .line 229
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    .line 230
    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v2, p0, Lcom/jcraft/jorbis/DspState;->W:I

    aget v1, v1, v2

    div-int/lit8 v1, v1, 0x4

    iget-object p1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v2, p0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget p1, p1, v2

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    const-wide/16 v0, -0x1

    .line 231
    iput-wide v0, p0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 232
    iput-wide v0, p0, Lcom/jcraft/jorbis/DspState;->sequence:J

    return-void
.end method

.method static window(IIII)[F
    .registers 19

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 97
    new-array v3, v0, [F

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_c
    div-int/lit8 v4, v0, 0x4

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v4, v5

    sub-int/2addr v0, v4

    .line 103
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    const/4 v6, 0x0

    :goto_17
    const-wide v7, 0x3ff921fb60000000L    # 1.5707963705062866

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide v11, 0x400921fb60000000L    # 3.1415927410125732

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    if-ge v6, v1, :cond_47

    move p0, v5

    int-to-double v4, v6

    add-double/2addr v4, v13

    int-to-double v13, v1

    div-double/2addr v4, v13

    mul-double/2addr v4, v11

    div-double/2addr v4, v9

    double-to-float v4, v4

    float-to-double v4, v4

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v4

    float-to-double v4, v4

    mul-double/2addr v4, v7

    double-to-float v4, v4

    float-to-double v4, v4

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-int v5, v6, p0

    .line 111
    aput v4, v3, v5

    add-int/lit8 v6, v6, 0x1

    move v5, p0

    goto :goto_17

    :cond_47
    move p0, v5

    add-int v5, p0, v1

    :goto_4a
    if-ge v5, v0, :cond_53

    const/high16 v1, 0x3f800000    # 1.0f

    .line 115
    aput v1, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_53
    const/4 v4, 0x0

    :goto_54
    if-ge v4, v2, :cond_78

    sub-int v1, v2, v4

    int-to-double v5, v1

    sub-double/2addr v5, v13

    int-to-double v13, v2

    div-double/2addr v5, v13

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    double-to-float v1, v5

    float-to-double v5, v1

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v1, v1

    float-to-double v5, v1

    mul-double/2addr v5, v7

    double-to-float v1, v5

    float-to-double v5, v1

    .line 123
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v1, v5

    add-int v5, v4, v0

    .line 124
    aput v1, v3, v5

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    goto :goto_54

    :cond_78
    return-object v3
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method init(Lcom/jcraft/jorbis/Info;Z)I
    .registers 9

    .line 140
    iput-object p1, p0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 141
    iget p2, p1, Lcom/jcraft/jorbis/Info;->modes:I

    invoke-static {p2}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result p2

    iput p2, p0, Lcom/jcraft/jorbis/DspState;->modebits:I

    .line 143
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 144
    aput-object v3, p2, v0

    .line 148
    new-instance p2, Lcom/jcraft/jorbis/Mdct;

    invoke-direct {p2}, Lcom/jcraft/jorbis/Mdct;-><init>()V

    aput-object p2, v1, v2

    .line 149
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object p2, p2, v0

    new-instance v1, Lcom/jcraft/jorbis/Mdct;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Mdct;-><init>()V

    aput-object v1, p2, v2

    .line 150
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object p2, p2, v2

    aget-object p2, p2, v2

    check-cast p2, Lcom/jcraft/jorbis/Mdct;

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/jcraft/jorbis/Mdct;->init(I)V

    .line 151
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->transform:[[Ljava/lang/Object;

    aget-object p2, p2, v0

    aget-object p2, p2, v2

    check-cast p2, Lcom/jcraft/jorbis/Mdct;

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Lcom/jcraft/jorbis/Mdct;->init(I)V

    .line 153
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object v1, p2, v2

    aget-object v1, v1, v2

    new-array v3, v0, [[F

    aput-object v3, v1, v2

    .line 154
    aget-object v1, p2, v2

    aget-object v3, v1, v2

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    .line 155
    aget-object v1, v1, v0

    aput-object v4, v1, v2

    .line 156
    aget-object v1, p2, v2

    aget-object v3, v1, v0

    aget-object v1, v1, v2

    aget-object v1, v1, v2

    aput-object v1, v3, v0

    .line 157
    aget-object v1, p2, v0

    aget-object v3, v1, v2

    new-array v4, v0, [[F

    aput-object v4, v3, v2

    .line 158
    aget-object v1, v1, v2

    new-array v3, v0, [[F

    aput-object v3, v1, v0

    .line 159
    aget-object v1, p2, v0

    aget-object v1, v1, v0

    new-array v3, v0, [[F

    aput-object v3, v1, v2

    new-array v3, v0, [[F

    .line 160
    aput-object v3, v1, v0

    .line 163
    aget-object p2, p2, v2

    aget-object p2, p2, v2

    aget-object p2, p2, v2

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v2

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v1

    aput-object v1, p2, v2

    .line 165
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object p2, p2, v0

    aget-object p2, p2, v2

    aget-object p2, p2, v2

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v1

    aput-object v1, p2, v2

    .line 167
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object p2, p2, v0

    aget-object p2, p2, v2

    aget-object p2, p2, v0

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v1

    aput-object v1, p2, v2

    .line 169
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object p2, p2, v0

    aget-object p2, p2, v0

    aget-object p2, p2, v2

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v1

    aput-object v1, p2, v2

    .line 171
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->window:[[[[[F

    aget-object p2, p2, v0

    aget-object p2, p2, v0

    aget-object p2, p2, v0

    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v4, v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jorbis/DspState;->window(IIII)[F

    move-result-object v1

    aput-object v1, p2, v2

    .line 175
    iget p2, p1, Lcom/jcraft/jorbis/Info;->books:I

    new-array p2, p2, [Lcom/jcraft/jorbis/CodeBook;

    iput-object p2, p0, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    move p2, v2

    .line 176
    :goto_11b
    iget v1, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-ge p2, v1, :cond_136

    .line 177
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    new-instance v3, Lcom/jcraft/jorbis/CodeBook;

    invoke-direct {v3}, Lcom/jcraft/jorbis/CodeBook;-><init>()V

    aput-object v3, v1, p2

    .line 178
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    aget-object v1, v1, p2

    iget-object v3, p1, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Lcom/jcraft/jorbis/CodeBook;->init_decode(Lcom/jcraft/jorbis/StaticCodeBook;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_11b

    :cond_136
    const/16 p2, 0x2000

    .line 184
    iput p2, p0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    .line 187
    iget p2, p1, Lcom/jcraft/jorbis/Info;->channels:I

    new-array p2, p2, [[F

    iput-object p2, p0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    move p2, v2

    .line 189
    :goto_141
    iget v1, p1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge p2, v1, :cond_150

    .line 190
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    iget v3, p0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    new-array v3, v3, [F

    aput-object v3, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_141

    .line 196
    :cond_150
    iput v2, p0, Lcom/jcraft/jorbis/DspState;->lW:I

    .line 197
    iput v2, p0, Lcom/jcraft/jorbis/DspState;->W:I

    .line 200
    iget-object p2, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget p2, p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 202
    iput p2, p0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    .line 205
    iget p2, p1, Lcom/jcraft/jorbis/Info;->modes:I

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/jcraft/jorbis/DspState;->mode:[Ljava/lang/Object;

    move p2, v2

    .line 206
    :goto_165
    iget v0, p1, Lcom/jcraft/jorbis/Info;->modes:I

    if-ge p2, v0, :cond_18a

    .line 207
    iget-object v0, p1, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v0, v0, p2

    iget v0, v0, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    .line 208
    iget-object v1, p1, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v1, v1, v0

    .line 209
    iget-object v3, p0, Lcom/jcraft/jorbis/DspState;->mode:[Ljava/lang/Object;

    sget-object v4, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    aget-object v1, v4, v1

    iget-object v4, p1, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, p2

    iget-object v5, p1, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v0, v5, v0

    invoke-virtual {v1, p0, v4, v0}, Lcom/jcraft/jorbis/FuncMapping;->look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_165

    :cond_18a
    return v2
.end method

.method public synthesis_blockin(Lcom/jcraft/jorbis/Block;)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 242
    iget v2, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v3, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v3, v3, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-le v2, v3, :cond_4a

    iget v2, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    const/16 v3, 0x2000

    if-le v2, v3, :cond_4a

    .line 246
    iget v2, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v3, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v3, v3, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 247
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    if-ge v3, v2, :cond_28

    move v2, v3

    .line 249
    :cond_28
    iget v6, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    .line 250
    iget v6, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    sub-int/2addr v3, v2

    .line 251
    iput v3, v0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    if-eqz v2, :cond_4a

    move v3, v5

    .line 253
    :goto_38
    iget-object v6, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v6, v6, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v3, v6, :cond_4a

    .line 254
    iget-object v6, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v6, v6, v3

    iget v7, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    invoke-static {v6, v2, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 259
    :cond_4a
    iget v2, v0, Lcom/jcraft/jorbis/DspState;->W:I

    iput v2, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    .line 260
    iget v2, v1, Lcom/jcraft/jorbis/Block;->W:I

    iput v2, v0, Lcom/jcraft/jorbis/DspState;->W:I

    const/4 v2, -0x1

    .line 261
    iput v2, v0, Lcom/jcraft/jorbis/DspState;->nW:I

    .line 263
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->glue_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->glue_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->glue_bits:J

    .line 264
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->time_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->time_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->time_bits:J

    .line 265
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->floor_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->floor_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->floor_bits:J

    .line 266
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->res_bits:J

    iget v6, v1, Lcom/jcraft/jorbis/Block;->res_bits:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->res_bits:J

    .line 268
    iget-wide v2, v0, Lcom/jcraft/jorbis/DspState;->sequence:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iget-wide v6, v1, Lcom/jcraft/jorbis/Block;->sequence:J

    cmp-long v2, v2, v6

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_84

    .line 269
    iput-wide v6, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 271
    :cond_84
    iget-wide v2, v1, Lcom/jcraft/jorbis/Block;->sequence:J

    iput-wide v2, v0, Lcom/jcraft/jorbis/DspState;->sequence:J

    .line 274
    iget-object v2, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v2, v2, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, v0, Lcom/jcraft/jorbis/DspState;->W:I

    aget v2, v2, v3

    .line 275
    iget v3, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget-object v8, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v8, v8, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v9, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v8, v8, v9

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v3, v8

    div-int/lit8 v8, v2, 0x4

    add-int/2addr v3, v8

    .line 276
    div-int/lit8 v8, v2, 0x2

    sub-int v8, v3, v8

    add-int v9, v8, v2

    .line 282
    iget v10, v0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    if-le v9, v10, :cond_cd

    .line 284
    iget-object v10, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v10, v10, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v10, v10, v4

    add-int/2addr v10, v9

    iput v10, v0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    move v10, v5

    .line 285
    :goto_b4
    iget-object v11, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v11, v11, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v10, v11, :cond_cd

    .line 286
    iget v11, v0, Lcom/jcraft/jorbis/DspState;->pcm_storage:I

    new-array v11, v11, [F

    .line 287
    iget-object v12, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v12, v12, v10

    array-length v13, v12

    invoke-static {v12, v5, v11, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget-object v12, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aput-object v11, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b4

    .line 293
    :cond_cd
    iget v10, v0, Lcom/jcraft/jorbis/DspState;->W:I

    if-eqz v10, :cond_f5

    if-eq v10, v4, :cond_d6

    move v10, v5

    move v11, v10

    goto :goto_fe

    .line 299
    :cond_d6
    iget-object v10, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v10, v10, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v10, v10, v4

    div-int/lit8 v10, v10, 0x4

    iget-object v11, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v11, v11, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v12, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v11, v11, v12

    div-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    .line 300
    iget-object v11, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v11, v11, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v12, v0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget v11, v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    goto :goto_fe

    .line 296
    :cond_f5
    iget-object v10, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v10, v10, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v10, v10, v5

    div-int/lit8 v11, v10, 0x2

    move v10, v5

    :goto_fe
    move v12, v5

    .line 304
    :goto_ff
    iget-object v13, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v13, v13, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v12, v13, :cond_135

    move v13, v10

    :goto_106
    if-ge v13, v11, :cond_11e

    .line 309
    iget-object v14, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v14, v14, v12

    add-int v15, v8, v13

    aget v16, v14, v15

    iget-object v5, v1, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v5, v5, v12

    aget v5, v5, v13

    add-float v16, v16, v5

    aput v16, v14, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_106

    :cond_11e
    :goto_11e
    if-ge v13, v2, :cond_131

    .line 313
    iget-object v5, v0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aget-object v5, v5, v12

    add-int v14, v8, v13

    iget-object v15, v1, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v15, v15, v12

    aget v15, v15, v13

    aput v15, v5, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_11e

    :cond_131
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_ff

    .line 328
    :cond_135
    iget-wide v10, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    cmp-long v2, v10, v6

    if-nez v2, :cond_140

    .line 329
    iget-wide v5, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    iput-wide v5, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    goto :goto_16f

    .line 332
    :cond_140
    iget v2, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    sub-int v2, v3, v2

    int-to-long v12, v2

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 333
    iget-wide v10, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    cmp-long v2, v10, v6

    if-eqz v2, :cond_16f

    iget-wide v5, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget-wide v7, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_16f

    .line 334
    iget-wide v5, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget-wide v7, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_16b

    iget v2, v1, Lcom/jcraft/jorbis/Block;->eofflag:I

    if-eqz v2, :cond_16b

    int-to-long v2, v3

    .line 336
    iget-wide v5, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    iget-wide v7, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    sub-long/2addr v5, v7

    sub-long/2addr v2, v5

    long-to-int v2, v2

    move v3, v2

    .line 339
    :cond_16b
    iget-wide v5, v1, Lcom/jcraft/jorbis/Block;->granulepos:J

    iput-wide v5, v0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 345
    :cond_16f
    :goto_16f
    iput v3, v0, Lcom/jcraft/jorbis/DspState;->centerW:I

    .line 346
    iput v9, v0, Lcom/jcraft/jorbis/DspState;->pcm_current:I

    .line 347
    iget v1, v1, Lcom/jcraft/jorbis/Block;->eofflag:I

    if-eqz v1, :cond_179

    .line 348
    iput v4, v0, Lcom/jcraft/jorbis/DspState;->eofflag:I

    :cond_179
    const/4 v1, 0x0

    return v1
.end method

.method public synthesis_init(Lcom/jcraft/jorbis/Info;)I
    .registers 6

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/DspState;->init(Lcom/jcraft/jorbis/Info;Z)I

    .line 218
    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iput v1, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    .line 219
    iget-object v2, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, p0, Lcom/jcraft/jorbis/DspState;->W:I

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x4

    iget-object p1, p1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v3, p0, Lcom/jcraft/jorbis/DspState;->lW:I

    aget p1, p1, v3

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    const-wide/16 v1, -0x1

    .line 220
    iput-wide v1, p0, Lcom/jcraft/jorbis/DspState;->granulepos:J

    .line 221
    iput-wide v1, p0, Lcom/jcraft/jorbis/DspState;->sequence:J

    return v0
.end method

.method public synthesis_pcmout([[[F[I)I
    .registers 6

    .line 355
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_21

    if-eqz p1, :cond_1b

    move v0, v2

    .line 357
    :goto_a
    iget-object v1, p0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget v1, v1, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v0, v1, :cond_17

    .line 358
    iget v1, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 360
    :cond_17
    iget-object p2, p0, Lcom/jcraft/jorbis/DspState;->pcm:[[F

    aput-object p2, p1, v2

    .line 362
    :cond_1b
    iget p1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    iget p2, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    sub-int/2addr p1, p2

    return p1

    :cond_21
    return v2
.end method

.method public synthesis_read(I)I
    .registers 4

    if-eqz p1, :cond_b

    .line 368
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/jcraft/jorbis/DspState;->centerW:I

    if-le v0, v1, :cond_b

    const/4 p1, -0x1

    return p1

    .line 370
    :cond_b
    iget v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jorbis/DspState;->pcm_returned:I

    const/4 p1, 0x0

    return p1
.end method
