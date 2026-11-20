###### Class com.jcraft.jorbis.Lpc (com.jcraft.jorbis.Lpc)
.class Lcom/jcraft/jorbis/Lpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fft:Lcom/jcraft/jorbis/Drft;

.field ln:I

.field m:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/jcraft/jorbis/Drft;

    invoke-direct {v0}, Lcom/jcraft/jorbis/Drft;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    return-void
.end method

.method static FAST_HYPOT(FF)F
    .registers 2

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 150
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method static lpc_from_data([F[FII)F
    .registers 15

    add-int/lit8 v0, p3, 0x1

    .line 43
    new-array v1, v0, [F

    :goto_4
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_a
    if-ge v0, p2, :cond_17

    .line 53
    aget v4, p0, v0

    sub-int v5, v0, v2

    aget v5, p0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 54
    :cond_17
    aput v3, v1, v2

    move v0, v2

    goto :goto_4

    :cond_1b
    const/4 p0, 0x0

    .line 59
    aget p2, v1, p0

    move v0, p0

    :goto_1f
    if-ge v0, p3, :cond_71

    add-int/lit8 v2, v0, 0x1

    .line 68
    aget v4, v1, v2

    neg-float v4, v4

    cmpl-float v5, p2, v3

    if-nez v5, :cond_32

    :goto_2a
    if-ge p0, p3, :cond_31

    .line 72
    aput v3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2a

    :cond_31
    return v3

    :cond_32
    move v5, p0

    :goto_33
    if-ge v5, v0, :cond_40

    .line 82
    aget v6, p1, v5

    sub-int v7, v0, v5

    aget v7, v1, v7

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_40
    div-float/2addr v4, p2

    .line 87
    aput v4, p1, v0

    move v5, p0

    .line 88
    :goto_44
    div-int/lit8 v6, v0, 0x2

    if-ge v5, v6, :cond_5c

    .line 89
    aget v6, p1, v5

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v5

    .line 90
    aget v8, p1, v7

    mul-float/2addr v8, v4

    add-float/2addr v8, v6

    aput v8, p1, v5

    .line 91
    aget v8, p1, v7

    mul-float/2addr v6, v4

    add-float/2addr v8, v6

    aput v8, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 93
    :cond_5c
    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_67

    .line 94
    aget v0, p1, v5

    mul-float v6, v0, v4

    add-float/2addr v0, v6

    aput v0, p1, v5

    :cond_67
    float-to-double v5, p2

    mul-float/2addr v4, v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    mul-double/2addr v5, v9

    double-to-float p2, v5

    move v0, v2

    goto :goto_1f

    :cond_71
    return p2
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Drft;->clear()V

    return-void
.end method

.method init(II)V
    .registers 3

    .line 138
    iput p1, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    .line 139
    iput p2, p0, Lcom/jcraft/jorbis/Lpc;->m:I

    .line 142
    iget-object p2, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Lcom/jcraft/jorbis/Drft;->init(I)V

    return-void
.end method

.method lpc_from_curve([F[F)F
    .registers 10

    .line 109
    iget v0, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    add-int v1, v0, v0

    .line 110
    new-array v1, v1, [F

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v0, :cond_1e

    mul-int/lit8 v5, v4, 0x2

    .line 117
    aget v6, p1, v4

    mul-float/2addr v6, v2

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    .line 118
    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1e
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 120
    aget p1, p1, v0

    mul-float/2addr p1, v2

    aput p1, v1, v5

    .line 123
    iget-object p1, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    invoke-virtual {p1, v1}, Lcom/jcraft/jorbis/Drft;->backward([F)V

    .line 128
    div-int/lit8 p1, v4, 0x2

    move v0, p1

    :goto_31
    if-ge v3, p1, :cond_42

    .line 129
    aget v2, v1, v3

    add-int/lit8 v5, v3, 0x1

    .line 130
    aget v6, v1, v0

    aput v6, v1, v3

    add-int/lit8 v3, v0, 0x1

    .line 131
    aput v2, v1, v0

    move v0, v3

    move v3, v5

    goto :goto_31

    .line 134
    :cond_42
    iget p1, p0, Lcom/jcraft/jorbis/Lpc;->m:I

    invoke-static {v1, p2, v4, p1}, Lcom/jcraft/jorbis/Lpc;->lpc_from_data([F[FII)F

    move-result p1

    return p1
.end method

.method lpc_to_curve([F[FF)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 162
    :goto_2
    iget v2, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_e

    .line 163
    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    cmpl-float v1, p3, v3

    if-nez v1, :cond_13

    return-void

    :cond_13
    move v1, v0

    .line 168
    :goto_14
    iget v2, p0, Lcom/jcraft/jorbis/Lpc;->m:I

    if-ge v1, v2, :cond_2f

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 169
    aget v4, p2, v1

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, p3

    div-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x2

    .line 170
    aget v3, p2, v1

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 173
    :cond_2f
    iget-object p2, p0, Lcom/jcraft/jorbis/Lpc;->fft:Lcom/jcraft/jorbis/Drft;

    invoke-virtual {p2, p1}, Lcom/jcraft/jorbis/Drft;->backward([F)V

    .line 176
    iget p2, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    mul-int/lit8 p2, p2, 0x2

    float-to-double v1, p3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    double-to-float p3, v1

    .line 178
    aget v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, p3

    float-to-double v1, v1

    div-double v1, v3, v1

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 179
    :goto_4b
    iget v1, p0, Lcom/jcraft/jorbis/Lpc;->ln:I

    if-ge v0, v1, :cond_66

    .line 180
    aget v1, p1, v0

    sub-int v2, p2, v0

    aget v2, p1, v2

    add-float v5, v1, v2

    sub-float/2addr v1, v2

    add-float/2addr v5, p3

    .line 184
    invoke-static {v5, v1}, Lcom/jcraft/jorbis/Lpc;->FAST_HYPOT(FF)F

    move-result v1

    float-to-double v1, v1

    div-double v1, v3, v1

    double-to-float v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_66
    return-void
.end method
