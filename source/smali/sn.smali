###### Class defpackage.sn (sn)
.class public abstract Lsn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field public aD:I

.field public aE:D

.field public aF:Z

.field public aG:Lsn;

.field public aH:Lsn;

.field public aI:Lfd;

.field public aJ:D

.field public aK:D

.field public aL:D

.field public aM:D

.field public aN:D

.field public aO:D

.field public aP:D

.field public aQ:D

.field public aR:D

.field public aS:F

.field public aT:F

.field public aU:F

.field public aV:F

.field public final aW:Leq;

.field public aX:Z

.field public aY:Z

.field public aZ:Z

.field private b:I

.field public bA:Ljava/lang/String;

.field public bB:Ljava/lang/String;

.field protected bC:Z

.field protected bD:Lud;

.field public bE:F

.field public bF:Z

.field public bG:I

.field public bH:I

.field public bI:I

.field public bJ:I

.field public bK:I

.field public bL:I

.field public bM:Z

.field public ba:Z

.field public bb:Z

.field public bc:Z

.field public bd:Z

.field public be:Z

.field public bf:F

.field public bg:F

.field public bh:F

.field public bi:F

.field public bj:F

.field protected bk:F

.field public bl:D

.field public bm:D

.field public bn:D

.field public bo:F

.field public bp:F

.field public bq:Z

.field public br:F

.field protected bs:Ljava/util/Random;

.field public bt:I

.field public bu:I

.field public bv:I

.field protected bw:I

.field protected bx:Z

.field public by:I

.field public bz:I

.field private c:Z

.field private d:D

.field private e:D


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lfd;)V
    .registers 15

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lsn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lsn;->a:I

    iput v0, p0, Lsn;->aD:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 29
    iput-wide v0, p0, Lsn;->aE:D

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lsn;->aF:Z

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 41
    invoke-static/range {v1 .. v12}, Leq;->a(DDDDDD)Leq;

    move-result-object v1

    iput-object v1, p0, Lsn;->aW:Leq;

    .line 42
    iput-boolean v0, p0, Lsn;->aX:Z

    .line 44
    iput-boolean v0, p0, Lsn;->ba:Z

    .line 45
    iput-boolean v0, p0, Lsn;->bb:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lsn;->bd:Z

    .line 49
    iput-boolean v0, p0, Lsn;->be:Z

    const/4 v2, 0x0

    .line 50
    iput v2, p0, Lsn;->bf:F

    const v3, 0x3f19999a    # 0.6f

    .line 52
    iput v3, p0, Lsn;->bg:F

    const v3, 0x3fe66666    # 1.8f

    .line 53
    iput v3, p0, Lsn;->bh:F

    .line 55
    iput v2, p0, Lsn;->bi:F

    .line 56
    iput v2, p0, Lsn;->bj:F

    .line 57
    iput v2, p0, Lsn;->bk:F

    .line 58
    iput v1, p0, Lsn;->b:I

    .line 60
    iput v2, p0, Lsn;->bo:F

    .line 61
    iput v2, p0, Lsn;->bp:F

    .line 62
    iput-boolean v0, p0, Lsn;->bq:Z

    .line 63
    iput v2, p0, Lsn;->br:F

    .line 65
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lsn;->bs:Ljava/util/Random;

    .line 66
    iput v0, p0, Lsn;->bt:I

    .line 67
    iput v1, p0, Lsn;->bu:I

    .line 69
    iput v0, p0, Lsn;->bv:I

    const/16 v3, 0x12c

    .line 71
    iput v3, p0, Lsn;->bw:I

    .line 72
    iput-boolean v0, p0, Lsn;->bx:Z

    .line 73
    iput v0, p0, Lsn;->by:I

    .line 74
    iput v3, p0, Lsn;->bz:I

    .line 76
    iput-boolean v1, p0, Lsn;->c:Z

    .line 80
    iput-boolean v0, p0, Lsn;->bC:Z

    .line 83
    new-instance v1, Lud;

    invoke-direct {v1}, Lud;-><init>()V

    iput-object v1, p0, Lsn;->bD:Lud;

    .line 91
    iput v2, p0, Lsn;->bE:F

    .line 928
    iput-boolean v0, p0, Lsn;->bF:Z

    .line 94
    iput-object p1, p0, Lsn;->aI:Lfd;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v3, p0

    .line 96
    invoke-virtual/range {v3 .. v9}, Lsn;->e(DDD)V

    .line 98
    iget-object p1, p0, Lsn;->bD:Lud;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lud;->a(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lsn;->b()V

    return-void
.end method


# virtual methods
.method public I()D
    .registers 3

    .line 986
    iget v0, p0, Lsn;->bf:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public K()V
    .registers 2

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lsn;->be:Z

    return-void
.end method

.method public L()Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_52

    shr-int/lit8 v2, v1, 0x0

    .line 907
    rem-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget v4, p0, Lsn;->bg:F

    mul-float/2addr v2, v4

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v2, v5

    shr-int/lit8 v6, v1, 0x1

    .line 908
    rem-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v6, v3

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    shr-int/lit8 v7, v1, 0x2

    .line 909
    rem-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v3

    mul-float/2addr v7, v4

    mul-float/2addr v7, v5

    .line 910
    iget-wide v3, p0, Lsn;->aM:D

    float-to-double v8, v2

    add-double/2addr v3, v8

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v2

    .line 911
    iget-wide v3, p0, Lsn;->aN:D

    invoke-virtual {p0}, Lsn;->w()F

    move-result v5

    float-to-double v8, v5

    add-double/2addr v3, v8

    float-to-double v5, v6

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 912
    iget-wide v4, p0, Lsn;->aO:D

    float-to-double v6, v7

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 913
    iget-object v5, p0, Lsn;->aI:Lfd;

    invoke-virtual {v5, v2, v3, v4}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v0, 0x1

    return v0

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_52
    return v0
.end method

.method public S()V
    .registers 1

    return-void
.end method

.method public U()V
    .registers 27

    move-object/from16 v0, p0

    .line 202
    iget-object v1, v0, Lsn;->aH:Lsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Lsn;->be:Z

    if-eqz v1, :cond_d

    .line 203
    iput-object v2, v0, Lsn;->aH:Lsn;

    .line 205
    :cond_d
    iget v1, v0, Lsn;->bt:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lsn;->bt:I

    .line 206
    iget v1, v0, Lsn;->bj:F

    iput v1, v0, Lsn;->bi:F

    .line 207
    iget-wide v4, v0, Lsn;->aM:D

    iput-wide v4, v0, Lsn;->aJ:D

    .line 208
    iget-wide v4, v0, Lsn;->aN:D

    iput-wide v4, v0, Lsn;->aK:D

    .line 209
    iget-wide v4, v0, Lsn;->aO:D

    iput-wide v4, v0, Lsn;->aL:D

    .line 210
    iget v1, v0, Lsn;->aT:F

    iput v1, v0, Lsn;->aV:F

    .line 211
    iget v1, v0, Lsn;->aS:F

    iput v1, v0, Lsn;->aU:F

    .line 213
    invoke-virtual/range {p0 .. p0}, Lsn;->k_()Z

    move-result v1

    if-eqz v1, :cond_127

    .line 214
    iget-boolean v1, v0, Lsn;->bx:Z

    if-nez v1, :cond_11d

    iget-boolean v1, v0, Lsn;->c:Z

    if-nez v1, :cond_11d

    .line 215
    iget-wide v5, v0, Lsn;->aP:D

    mul-double/2addr v5, v5

    const-wide v7, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v5, v7

    iget-wide v9, v0, Lsn;->aQ:D

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    iget-wide v9, v0, Lsn;->aR:D

    mul-double/2addr v9, v9

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Lin;->a(D)F

    move-result v1

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v6

    if-lez v7, :cond_5a

    move v1, v6

    .line 219
    :cond_5a
    iget-object v7, v0, Lsn;->aI:Lfd;

    iget-object v8, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget-object v9, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    const-string v9, "random.splash"

    invoke-virtual {v7, v0, v9, v1, v8}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 221
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v7, v1, Leq;->b:D

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v1

    int-to-float v1, v1

    const/4 v7, 0x0

    :goto_7d
    int-to-float v8, v7

    .line 222
    iget v9, v0, Lsn;->bg:F

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    cmpg-float v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    if-gez v8, :cond_d4

    .line 223
    iget-object v8, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v9

    sub-float/2addr v8, v6

    iget v10, v0, Lsn;->bg:F

    mul-float/2addr v8, v10

    .line 224
    iget-object v10, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    mul-float/2addr v10, v9

    sub-float/2addr v10, v6

    iget v9, v0, Lsn;->bg:F

    mul-float/2addr v10, v9

    .line 225
    iget-object v11, v0, Lsn;->aI:Lfd;

    const-string v12, "bubble"

    iget-wide v13, v0, Lsn;->aM:D

    float-to-double v8, v8

    add-double/2addr v13, v8

    add-float v8, v1, v6

    float-to-double v8, v8

    iget-wide v2, v0, Lsn;->aO:D

    move/from16 v25, v7

    float-to-double v6, v10

    add-double v17, v2, v6

    iget-wide v2, v0, Lsn;->aP:D

    iget-wide v6, v0, Lsn;->aQ:D

    iget-object v10, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    mul-float/2addr v10, v5

    float-to-double v4, v10

    sub-double v21, v6, v4

    iget-wide v4, v0, Lsn;->aR:D

    move-wide v15, v8

    move-wide/from16 v19, v2

    move-wide/from16 v23, v4

    invoke-virtual/range {v11 .. v24}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v7, v25, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_7d

    :cond_d4
    const/4 v2, 0x0

    :goto_d5
    int-to-float v3, v2

    .line 228
    iget v4, v0, Lsn;->bg:F

    mul-float/2addr v4, v10

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11d

    .line 229
    iget-object v3, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v9

    sub-float/2addr v3, v5

    iget v4, v0, Lsn;->bg:F

    mul-float/2addr v3, v4

    .line 230
    iget-object v4, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v9

    sub-float/2addr v4, v5

    iget v6, v0, Lsn;->bg:F

    mul-float/2addr v4, v6

    .line 231
    iget-object v11, v0, Lsn;->aI:Lfd;

    const-string v12, "splash"

    iget-wide v6, v0, Lsn;->aM:D

    float-to-double v13, v3

    add-double/2addr v13, v6

    add-float v6, v1, v5

    float-to-double v6, v6

    iget-wide v9, v0, Lsn;->aO:D

    float-to-double v3, v4

    add-double v17, v9, v3

    iget-wide v3, v0, Lsn;->aP:D

    iget-wide v9, v0, Lsn;->aQ:D

    move-wide/from16 v21, v9

    iget-wide v8, v0, Lsn;->aR:D

    move-wide v15, v6

    move-wide/from16 v19, v3

    move-wide/from16 v23, v8

    invoke-virtual/range {v11 .. v24}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v2, v2, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x41a00000    # 20.0f

    goto :goto_d5

    :cond_11d
    const/4 v1, 0x0

    .line 235
    iput v1, v0, Lsn;->bk:F

    const/4 v1, 0x1

    .line 236
    iput-boolean v1, v0, Lsn;->bx:Z

    const/4 v1, 0x0

    .line 237
    iput v1, v0, Lsn;->bv:I

    goto :goto_12a

    :cond_127
    const/4 v1, 0x0

    .line 239
    iput-boolean v1, v0, Lsn;->bx:Z

    .line 242
    :goto_12a
    iget-object v2, v0, Lsn;->aI:Lfd;

    iget-boolean v2, v2, Lfd;->B:Z

    if-eqz v2, :cond_133

    .line 243
    iput v1, v0, Lsn;->bv:I

    goto :goto_153

    .line 245
    :cond_133
    iget v2, v0, Lsn;->bv:I

    if-lez v2, :cond_153

    .line 246
    iget-boolean v3, v0, Lsn;->bC:Z

    if-eqz v3, :cond_144

    add-int/lit8 v2, v2, -0x4

    .line 247
    iput v2, v0, Lsn;->bv:I

    if-gez v2, :cond_153

    .line 249
    iput v1, v0, Lsn;->bv:I

    goto :goto_153

    .line 251
    :cond_144
    rem-int/lit8 v2, v2, 0x14

    const/4 v1, 0x1

    if-nez v2, :cond_14d

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v2, v1}, Lsn;->a(Lsn;I)Z

    .line 254
    :cond_14d
    iget v2, v0, Lsn;->bv:I

    sub-int/2addr v2, v1

    iput v2, v0, Lsn;->bv:I

    goto :goto_154

    :cond_153
    :goto_153
    const/4 v1, 0x1

    .line 259
    :goto_154
    invoke-virtual/range {p0 .. p0}, Lsn;->ah()Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 260
    invoke-virtual/range {p0 .. p0}, Lsn;->ae()V

    .line 263
    :cond_15d
    iget-wide v2, v0, Lsn;->aN:D

    const-wide/high16 v4, -0x3fb0000000000000L    # -64.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_168

    .line 264
    invoke-virtual/range {p0 .. p0}, Lsn;->ab()V

    .line 267
    :cond_168
    iget-object v2, v0, Lsn;->aI:Lfd;

    iget-boolean v2, v2, Lfd;->B:Z

    if-nez v2, :cond_184

    .line 268
    iget v2, v0, Lsn;->bv:I

    if-lez v2, :cond_174

    move v2, v1

    goto :goto_175

    :cond_174
    const/4 v2, 0x0

    :goto_175
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lsn;->b(IZ)V

    .line 269
    iget-object v2, v0, Lsn;->aH:Lsn;

    if-eqz v2, :cond_17e

    goto :goto_17f

    :cond_17e
    move v1, v3

    :goto_17f
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lsn;->b(IZ)V

    goto :goto_185

    :cond_184
    const/4 v3, 0x0

    .line 272
    :goto_185
    iput-boolean v3, v0, Lsn;->c:Z

    return-void
.end method

.method public W()Z
    .registers 2

    .line 902
    iget-boolean v0, p0, Lsn;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(F)F
    .registers 12

    .line 631
    iget-wide v0, p0, Lsn;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p1

    .line 633
    iget-object v0, p0, Lsn;->aW:Leq;

    iget-wide v0, v0, Leq;->e:D

    iget-object v2, p0, Lsn;->aW:Leq;

    iget-wide v2, v2, Leq;->b:D

    sub-double/2addr v0, v2

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v0, v2

    .line 634
    iget-wide v2, p0, Lsn;->aN:D

    iget v4, p0, Lsn;->bf:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v0

    .line 635
    iget-wide v1, p0, Lsn;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 636
    iget-object v2, p0, Lsn;->aI:Lfd;

    iget-object v3, p0, Lsn;->aW:Leq;

    iget-wide v3, v3, Leq;->a:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-object v4, p0, Lsn;->aW:Leq;

    iget-wide v4, v4, Leq;->b:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    iget-object v5, p0, Lsn;->aW:Leq;

    iget-wide v5, v5, Leq;->c:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v5

    iget-object v6, p0, Lsn;->aW:Leq;

    iget-wide v6, v6, Leq;->d:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    iget-object v7, p0, Lsn;->aW:Leq;

    iget-wide v7, v7, Leq;->e:D

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    iget-object v8, p0, Lsn;->aW:Leq;

    iget-wide v8, v8, Leq;->f:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lfd;->a(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 640
    iget-object v2, p0, Lsn;->aI:Lfd;

    invoke-virtual {v2, p1, v0, v1}, Lfd;->c(III)F

    move-result p1

    .line 641
    iget v0, p0, Lsn;->bE:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6b

    move p1, v0

    :cond_6b
    return p1

    .line 644
    :cond_6c
    iget p1, p0, Lsn;->bE:F

    return p1
.end method

.method public a(Lsn;)Leq;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IIF)Lhl;
    .registers 6

    .line 891
    new-instance v0, Liz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Liz;-><init>(III)V

    invoke-virtual {p0, v0, p3}, Lsn;->a(Liz;F)Lhl;

    move-result-object p1

    return-object p1
.end method

.method public a(Liz;F)Lhl;
    .registers 13

    .line 895
    new-instance v9, Lhl;

    iget-object v1, p0, Lsn;->aI:Lfd;

    iget-wide v2, p0, Lsn;->aM:D

    iget-wide v4, p0, Lsn;->aN:D

    float-to-double v6, p2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lsn;->aO:D

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    const/16 p1, 0xa

    .line 896
    iput p1, v9, Lhl;->c:I

    .line 897
    iget-object p1, p0, Lsn;->aI:Lfd;

    invoke-virtual {p1, v9}, Lfd;->b(Lsn;)Z

    return-object v9
.end method

.method protected varargs a([D)Lsp;
    .registers 8

    .line 869
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    .line 870
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget-wide v3, p1, v2

    .line 871
    new-instance v5, Lsz;

    invoke-direct {v5, v3, v4}, Lsz;-><init>(D)V

    invoke-virtual {v0, v5}, Lsp;->a(Lij;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method protected varargs a([F)Lsp;
    .registers 7

    .line 876
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    .line 877
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 878
    new-instance v4, Lp;

    invoke-direct {v4, v3}, Lp;-><init>(F)V

    invoke-virtual {v0, v4}, Lsp;->a(Lij;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method public a(B)V
    .registers 2

    return-void
.end method

.method public a(DDD)V
    .registers 7

    .line 1054
    iput-wide p1, p0, Lsn;->aP:D

    .line 1055
    iput-wide p3, p0, Lsn;->aQ:D

    .line 1056
    iput-wide p5, p0, Lsn;->aR:D

    return-void
.end method

.method public a(DDDFFI)V
    .registers 25

    move-object v7, p0

    .line 1024
    invoke-virtual/range {p0 .. p6}, Lsn;->e(DDD)V

    move/from16 v0, p7

    move/from16 v1, p8

    .line 1025
    invoke-virtual {p0, v0, v1}, Lsn;->c(FF)V

    .line 1027
    iget-object v0, v7, Lsn;->aI:Lfd;

    iget-object v8, v7, Lsn;->aW:Leq;

    const-wide/high16 v9, 0x3fa0000000000000L    # 0.03125

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3fa0000000000000L    # 0.03125

    invoke-virtual/range {v8 .. v14}, Leq;->e(DDD)Leq;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    .line 1029
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4c

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1031
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 1032
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leq;

    .line 1033
    iget-wide v5, v4, Leq;->e:D

    cmpl-double v5, v5, v1

    if-lez v5, :cond_3a

    .line 1034
    iget-wide v1, v4, Leq;->e:D

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1037
    :cond_3d
    iget-object v0, v7, Lsn;->aW:Leq;

    iget-wide v3, v0, Leq;->b:D

    sub-double/2addr v1, v3

    add-double v3, p3, v1

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v5, p5

    .line 1038
    invoke-virtual/range {v0 .. v6}, Lsn;->e(DDD)V

    :cond_4c
    return-void
.end method

.method protected a(DZ)V
    .registers 6

    if-eqz p3, :cond_f

    .line 549
    iget p1, p0, Lsn;->bk:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1c

    .line 550
    invoke-virtual {p0, p1}, Lsn;->b(F)V

    .line 551
    iput p2, p0, Lsn;->bk:F

    goto :goto_1c

    :cond_f
    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_1c

    .line 555
    iget p3, p0, Lsn;->bk:F

    float-to-double v0, p3

    sub-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lsn;->bk:F

    :cond_1c
    :goto_1c
    return-void
.end method

.method public a(FFF)V
    .registers 9

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    .line 613
    invoke-static {v0}, Lin;->c(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_11

    return-void

    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_18

    move v0, v1

    :cond_18
    div-float/2addr p3, v0

    mul-float/2addr p1, p3

    mul-float/2addr p2, p3

    .line 623
    iget p3, p0, Lsn;->aS:F

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p3, v0

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr p3, v1

    invoke-static {p3}, Lin;->a(F)F

    move-result p3

    .line 624
    iget v2, p0, Lsn;->aS:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    invoke-static {v2}, Lin;->b(F)F

    move-result v0

    .line 626
    iget-wide v1, p0, Lsn;->aP:D

    mul-float v3, p1, v0

    mul-float v4, p2, p3

    sub-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lsn;->aP:D

    .line 627
    iget-wide v1, p0, Lsn;->aR:D

    mul-float/2addr p2, v0

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    float-to-double p1, p2

    add-double/2addr v1, p1

    iput-wide v1, p0, Lsn;->aR:D

    return-void
.end method

.method protected a(I)V
    .registers 3

    .line 564
    iget-boolean v0, p0, Lsn;->bC:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, v0, p1}, Lsn;->a(Lsn;I)Z

    :cond_8
    return-void
.end method

.method public a(Lc;)V
    .registers 2

    const/4 p1, 0x5

    .line 1107
    invoke-virtual {p0, p1}, Lsn;->a(I)V

    .line 1108
    iget p1, p0, Lsn;->bv:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsn;->bv:I

    if-nez p1, :cond_10

    const/16 p1, 0x12c

    .line 1110
    iput p1, p0, Lsn;->bv:I

    :cond_10
    return-void
.end method

.method public a(Lfd;)V
    .registers 2

    .line 648
    iput-object p1, p0, Lsn;->aI:Lfd;

    return-void
.end method

.method public a(Lls;)V
    .registers 2

    return-void
.end method

.method protected abstract a(Lnu;)V
.end method

.method public a(D)Z
    .registers 9

    .line 784
    iget-object v0, p0, Lsn;->aW:Leq;

    invoke-virtual {v0}, Leq;->c()D

    move-result-wide v0

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    .line 785
    iget-wide v4, p0, Lsn;->aE:D

    mul-double/2addr v4, v2

    mul-double/2addr v0, v4

    mul-double/2addr v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public a(Lbt;)Z
    .registers 10

    .line 776
    iget-wide v0, p0, Lsn;->aM:D

    iget-wide v2, p1, Lbt;->a:D

    sub-double/2addr v0, v2

    .line 777
    iget-wide v2, p0, Lsn;->aN:D

    iget-wide v4, p1, Lbt;->b:D

    sub-double/2addr v2, v4

    .line 778
    iget-wide v4, p0, Lsn;->aO:D

    iget-wide v6, p1, Lbt;->c:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    .line 780
    invoke-virtual {p0, v0, v1}, Lsn;->a(D)Z

    move-result p1

    return p1
.end method

.method public a(Lgs;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lln;)Z
    .registers 10

    .line 590
    iget-wide v0, p0, Lsn;->aN:D

    invoke-virtual {p0}, Lsn;->w()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    .line 591
    iget-wide v2, p0, Lsn;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 592
    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lin;->d(F)I

    move-result v3

    .line 593
    iget-wide v4, p0, Lsn;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 594
    iget-object v5, p0, Lsn;->aI:Lfd;

    invoke-virtual {v5, v2, v3, v4}, Lfd;->a(III)I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_46

    .line 595
    sget-object v7, Luu;->m:[Luu;

    aget-object v5, v7, v5

    iget-object v5, v5, Luu;->bA:Lln;

    if-ne v5, p1, :cond_46

    .line 596
    iget-object p1, p0, Lsn;->aI:Lfd;

    invoke-virtual {p1, v2, v3, v4}, Lfd;->e(III)I

    move-result p1

    invoke-static {p1}, Lrp;->d(I)F

    move-result p1

    const v2, 0x3de38e39

    sub-float/2addr p1, v2

    const/4 v2, 0x1

    add-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v3, p1

    float-to-double v3, v3

    cmpg-double p1, v0, v3

    if-gez p1, :cond_46

    move v6, v2

    :cond_46
    return v6
.end method

.method public a(Lsn;I)Z
    .registers 3

    .line 751
    invoke-virtual {p0}, Lsn;->ai()V

    const/4 p1, 0x0

    return p1
.end method

.method protected ab()V
    .registers 1

    .line 285
    invoke-virtual {p0}, Lsn;->K()V

    return-void
.end method

.method public ac()Lbt;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public ad()Lud;
    .registers 2

    .line 105
    iget-object v0, p0, Lsn;->bD:Lud;

    return-object v0
.end method

.method protected ae()V
    .registers 3

    .line 276
    iget-boolean v0, p0, Lsn;->bC:Z

    if-eqz v0, :cond_5

    goto :goto_e

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 279
    invoke-virtual {p0, v0, v1}, Lsn;->a(Lsn;I)Z

    const/16 v0, 0x258

    .line 280
    iput v0, p0, Lsn;->bv:I

    :goto_e
    return-void
.end method

.method public af()Z
    .registers 6

    .line 575
    iget-boolean v0, p0, Lsn;->bx:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lsn;->aI:Lfd;

    iget-wide v1, p0, Lsn;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Lsn;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lsn;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->t(III)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method public ag()Z
    .registers 2

    .line 580
    iget-boolean v0, p0, Lsn;->bx:Z

    return v0
.end method

.method public ah()Z
    .registers 9

    .line 608
    iget-object v0, p0, Lsn;->aI:Lfd;

    iget-object v1, p0, Lsn;->aW:Leq;

    const-wide v2, -0x4046666660000000L    # -0.10000000149011612

    const-wide v4, -0x4026666660000000L    # -0.4000000059604645

    const-wide v6, -0x4046666660000000L    # -0.10000000149011612

    invoke-virtual/range {v1 .. v7}, Leq;->b(DDD)Leq;

    move-result-object v1

    sget-object v2, Lln;->h:Lln;

    invoke-virtual {v0, v1, v2}, Lfd;->a(Leq;Lln;)Z

    move-result v0

    return v0
.end method

.method protected ai()V
    .registers 2

    const/4 v0, 0x1

    .line 747
    iput-boolean v0, p0, Lsn;->bb:Z

    return-void
.end method

.method protected final aj()Ljava/lang/String;
    .registers 2

    .line 861
    invoke-static {p0}, Ljc;->b(Lsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ak()Z
    .registers 3

    .line 1076
    iget v0, p0, Lsn;->bv:I

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsn;->d(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public al()Z
    .registers 2

    .line 1080
    iget-object v0, p0, Lsn;->aH:Lsn;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsn;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public b(II)Lhl;
    .registers 4

    const/4 v0, 0x0

    .line 887
    invoke-virtual {p0, p1, p2, v0}, Lsn;->a(IIF)Lhl;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b()V
.end method

.method public b(DDD)V
    .registers 50

    move-object/from16 v0, p0

    .line 311
    iget-boolean v1, v0, Lsn;->bq:Z

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-eqz v1, :cond_3a

    .line 312
    iget-object v4, v0, Lsn;->aW:Leq;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Leq;->d(DDD)Leq;

    .line 313
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v4, v1, Leq;->a:D

    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v6, v1, Leq;->d:D

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    iput-wide v4, v0, Lsn;->aM:D

    .line 314
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v4, v1, Leq;->b:D

    iget v1, v0, Lsn;->bf:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    iget v1, v0, Lsn;->bo:F

    float-to-double v6, v1

    sub-double/2addr v4, v6

    iput-wide v4, v0, Lsn;->aN:D

    .line 315
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v4, v1, Leq;->c:D

    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v6, v1, Leq;->f:D

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    iput-wide v4, v0, Lsn;->aO:D

    return-void

    .line 319
    :cond_3a
    iget v1, v0, Lsn;->bo:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v4

    iput v1, v0, Lsn;->bo:F

    .line 321
    iget-wide v5, v0, Lsn;->aM:D

    .line 322
    iget-wide v7, v0, Lsn;->aO:D

    .line 324
    iget-boolean v1, v0, Lsn;->bc:Z

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_69

    .line 325
    iput-boolean v9, v0, Lsn;->bc:Z

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double v14, p1, v12

    const-wide v16, 0x3fa99999a0000000L    # 0.05000000074505806

    mul-double v16, v16, p3

    mul-double v12, v12, p5

    .line 330
    iput-wide v10, v0, Lsn;->aP:D

    .line 331
    iput-wide v10, v0, Lsn;->aQ:D

    .line 332
    iput-wide v10, v0, Lsn;->aR:D

    move-wide/from16 v41, v12

    move-wide/from16 v12, v16

    move-wide/from16 v16, v41

    goto :goto_6f

    :cond_69
    move-wide/from16 v14, p1

    move-wide/from16 v12, p3

    move-wide/from16 v16, p5

    .line 339
    :goto_6f
    iget-object v1, v0, Lsn;->aW:Leq;

    invoke-virtual {v1}, Leq;->d()Leq;

    move-result-object v1

    .line 341
    iget-boolean v9, v0, Lsn;->aX:Z

    if-eqz v9, :cond_81

    invoke-virtual/range {p0 .. p0}, Lsn;->t()Z

    move-result v9

    if-eqz v9, :cond_81

    const/4 v9, 0x1

    goto :goto_82

    :cond_81
    const/4 v9, 0x0

    :goto_82
    if-eqz v9, :cond_f1

    :goto_84
    cmpl-double v18, v14, v10

    const-wide v19, -0x4056666666666666L    # -0.05

    const-wide v21, 0x3fa999999999999aL    # 0.05

    if-eqz v18, :cond_c0

    .line 346
    iget-object v4, v0, Lsn;->aI:Lfd;

    iget-object v2, v0, Lsn;->aW:Leq;

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    const-wide/16 v28, 0x0

    move-object/from16 v23, v2

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v29}, Leq;->c(DDD)Leq;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c0

    cmpg-double v2, v14, v21

    if-gez v2, :cond_b6

    cmpl-double v2, v14, v19

    if-ltz v2, :cond_b6

    move-wide v14, v10

    goto :goto_bd

    :cond_b6
    if-lez v18, :cond_bb

    sub-double v14, v14, v21

    goto :goto_bd

    :cond_bb
    add-double v14, v14, v21

    :goto_bd
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    goto :goto_84

    :cond_c0
    :goto_c0
    cmpl-double v2, v16, v10

    if-eqz v2, :cond_f1

    .line 356
    iget-object v3, v0, Lsn;->aI:Lfd;

    iget-object v4, v0, Lsn;->aW:Leq;

    const-wide/16 v24, 0x0

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-object/from16 v23, v4

    move-wide/from16 v28, v16

    invoke-virtual/range {v23 .. v29}, Leq;->c(DDD)Leq;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_f1

    cmpg-double v3, v16, v21

    if-gez v3, :cond_e9

    cmpl-double v3, v16, v19

    if-ltz v3, :cond_e9

    move-wide/from16 v16, v10

    goto :goto_c0

    :cond_e9
    if-lez v2, :cond_ee

    sub-double v16, v16, v21

    goto :goto_c0

    :cond_ee
    add-double v16, v16, v21

    goto :goto_c0

    :cond_f1
    move-wide v2, v14

    move-wide/from16 v23, v16

    move-wide/from16 v25, v23

    .line 367
    iget-object v4, v0, Lsn;->aI:Lfd;

    iget-object v10, v0, Lsn;->aW:Leq;

    move-object/from16 v16, v10

    move-wide/from16 v17, v14

    move-wide/from16 v19, v12

    move-wide/from16 v21, v23

    invoke-virtual/range {v16 .. v22}, Leq;->a(DDD)Leq;

    move-result-object v10

    invoke-virtual {v4, v0, v10}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v4

    move-wide v10, v12

    move-wide/from16 p1, v14

    const/4 v14, 0x0

    .line 370
    :goto_10e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_127

    .line 371
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Leq;

    move-wide/from16 v30, v7

    iget-object v7, v0, Lsn;->aW:Leq;

    invoke-virtual {v15, v7, v10, v11}, Leq;->b(Leq;D)D

    move-result-wide v10

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v7, v30

    goto :goto_10e

    :cond_127
    move-wide/from16 v30, v7

    .line 372
    iget-object v7, v0, Lsn;->aW:Leq;

    const-wide/16 v17, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, v7

    move-wide/from16 v19, v10

    invoke-virtual/range {v16 .. v22}, Leq;->d(DDD)Leq;

    .line 374
    iget-boolean v7, v0, Lsn;->bd:Z

    if-nez v7, :cond_145

    cmpl-double v7, v12, v10

    if-eqz v7, :cond_145

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v23, 0x0

    goto :goto_147

    :cond_145
    move-wide/from16 v14, p1

    .line 378
    :goto_147
    iget-boolean v7, v0, Lsn;->aX:Z

    if-nez v7, :cond_158

    cmpl-double v7, v12, v10

    if-eqz v7, :cond_156

    const-wide/16 v7, 0x0

    cmpg-double v16, v12, v7

    if-gez v16, :cond_156

    goto :goto_158

    :cond_156
    const/4 v7, 0x0

    goto :goto_159

    :cond_158
    :goto_158
    const/4 v7, 0x1

    :goto_159
    move-wide/from16 p1, v10

    const/4 v8, 0x0

    .line 380
    :goto_15c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_171

    .line 381
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leq;

    iget-object v11, v0, Lsn;->aW:Leq;

    invoke-virtual {v10, v11, v14, v15}, Leq;->a(Leq;D)D

    move-result-wide v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_15c

    .line 383
    :cond_171
    iget-object v8, v0, Lsn;->aW:Leq;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, v8

    move-wide/from16 v17, v14

    invoke-virtual/range {v16 .. v22}, Leq;->d(DDD)Leq;

    .line 385
    iget-boolean v8, v0, Lsn;->bd:Z

    if-nez v8, :cond_18d

    cmpl-double v8, v2, v14

    if-eqz v8, :cond_18d

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v23, 0x0

    goto :goto_18f

    :cond_18d
    move-wide/from16 v10, p1

    :goto_18f
    move-wide/from16 p1, v10

    move-wide/from16 p3, v14

    move-wide/from16 v10, v23

    const/4 v8, 0x0

    .line 389
    :goto_196
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_1ab

    .line 390
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Leq;

    iget-object v15, v0, Lsn;->aW:Leq;

    invoke-virtual {v14, v15, v10, v11}, Leq;->c(Leq;D)D

    move-result-wide v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_196

    .line 391
    :cond_1ab
    iget-object v4, v0, Lsn;->aW:Leq;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v16, v4

    move-wide/from16 v21, v10

    invoke-virtual/range {v16 .. v22}, Leq;->d(DDD)Leq;

    .line 393
    iget-boolean v4, v0, Lsn;->bd:Z

    if-nez v4, :cond_1c7

    cmpl-double v4, v25, v10

    if-eqz v4, :cond_1c7

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v23, 0x0

    goto :goto_1cc

    :cond_1c7
    move-wide/from16 v23, p1

    move-wide v14, v10

    move-wide/from16 v10, p3

    .line 397
    :goto_1cc
    iget v4, v0, Lsn;->bp:F

    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_329

    if-eqz v7, :cond_329

    if-nez v9, :cond_1e0

    iget v7, v0, Lsn;->bo:F

    const v8, 0x3d4ccccd    # 0.05f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_329

    :cond_1e0
    cmpl-double v7, v2, v10

    if-nez v7, :cond_1e8

    cmpl-double v7, v25, v14

    if-eqz v7, :cond_329

    :cond_1e8
    float-to-double v7, v4

    .line 407
    iget-object v4, v0, Lsn;->aW:Leq;

    invoke-virtual {v4}, Leq;->d()Leq;

    move-result-object v4

    move/from16 p1, v9

    .line 408
    iget-object v9, v0, Lsn;->aW:Leq;

    invoke-virtual {v9, v1}, Leq;->b(Leq;)V

    .line 409
    iget-object v1, v0, Lsn;->aI:Lfd;

    iget-object v9, v0, Lsn;->aW:Leq;

    move-object/from16 v16, v9

    move-wide/from16 v17, v2

    move-wide/from16 v19, v7

    move-wide/from16 v21, v25

    invoke-virtual/range {v16 .. v22}, Leq;->a(DDD)Leq;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v1

    move-wide/from16 v32, v5

    const/4 v9, 0x0

    .line 412
    :goto_20d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_222

    .line 413
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leq;

    iget-object v6, v0, Lsn;->aW:Leq;

    invoke-virtual {v5, v6, v7, v8}, Leq;->b(Leq;D)D

    move-result-wide v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_20d

    .line 414
    :cond_222
    iget-object v5, v0, Lsn;->aW:Leq;

    const-wide/16 v17, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, v5

    move-wide/from16 v19, v7

    invoke-virtual/range {v16 .. v22}, Leq;->d(DDD)Leq;

    .line 416
    iget-boolean v5, v0, Lsn;->bd:Z

    if-nez v5, :cond_23e

    cmpl-double v5, v12, v7

    if-eqz v5, :cond_23e

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v16, 0x0

    goto :goto_243

    :cond_23e
    move-wide v5, v2

    move-wide/from16 v16, v7

    move-wide/from16 v7, v25

    :goto_243
    move-wide/from16 p2, v7

    const/4 v9, 0x0

    .line 420
    :goto_246
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v9, v7, :cond_25b

    .line 421
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leq;

    iget-object v8, v0, Lsn;->aW:Leq;

    invoke-virtual {v7, v8, v5, v6}, Leq;->a(Leq;D)D

    move-result-wide v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_246

    .line 422
    :cond_25b
    iget-object v7, v0, Lsn;->aW:Leq;

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    move-object/from16 v34, v7

    move-wide/from16 v35, v5

    invoke-virtual/range {v34 .. v40}, Leq;->d(DDD)Leq;

    .line 424
    iget-boolean v7, v0, Lsn;->bd:Z

    if-nez v7, :cond_277

    cmpl-double v7, v2, v5

    if-eqz v7, :cond_277

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v16, 0x0

    goto :goto_27a

    :cond_277
    move-wide v7, v5

    move-wide/from16 v5, p2

    :goto_27a
    move-wide/from16 p2, v7

    const/4 v9, 0x0

    .line 428
    :goto_27d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v9, v7, :cond_292

    .line 429
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leq;

    iget-object v8, v0, Lsn;->aW:Leq;

    invoke-virtual {v7, v8, v5, v6}, Leq;->c(Leq;D)D

    move-result-wide v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_27d

    .line 430
    :cond_292
    iget-object v7, v0, Lsn;->aW:Leq;

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    move-object/from16 v34, v7

    move-wide/from16 v39, v5

    invoke-virtual/range {v34 .. v40}, Leq;->d(DDD)Leq;

    .line 432
    iget-boolean v7, v0, Lsn;->bd:Z

    if-nez v7, :cond_2ae

    cmpl-double v8, v25, v5

    if-eqz v8, :cond_2ae

    const-wide/16 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    goto :goto_2b1

    :cond_2ae
    move-wide v8, v5

    move-wide/from16 v5, p2

    :goto_2b1
    if-nez v7, :cond_2be

    cmpl-double v7, v12, v16

    if-eqz v7, :cond_2be

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v16, 0x0

    goto :goto_2ef

    .line 439
    :cond_2be
    iget v7, v0, Lsn;->bp:F

    neg-float v7, v7

    move-wide/from16 p2, v5

    float-to-double v5, v7

    move-wide/from16 p4, v8

    const/4 v7, 0x0

    .line 441
    :goto_2c7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2dc

    .line 442
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leq;

    iget-object v9, v0, Lsn;->aW:Leq;

    invoke-virtual {v8, v9, v5, v6}, Leq;->b(Leq;D)D

    move-result-wide v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c7

    .line 443
    :cond_2dc
    iget-object v1, v0, Lsn;->aW:Leq;

    const-wide/16 v17, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, v1

    move-wide/from16 v19, v5

    invoke-virtual/range {v16 .. v22}, Leq;->d(DDD)Leq;

    move-wide/from16 v7, p4

    move-wide/from16 v16, v5

    move-wide/from16 v5, p2

    :goto_2ef
    mul-double v18, v10, v10

    mul-double v20, v14, v14

    add-double v18, v18, v20

    mul-double v20, v5, v5

    mul-double v34, v7, v7

    add-double v20, v20, v34

    cmpl-double v1, v18, v20

    if-ltz v1, :cond_305

    .line 450
    iget-object v1, v0, Lsn;->aW:Leq;

    invoke-virtual {v1, v4}, Leq;->b(Leq;)V

    goto :goto_32d

    .line 452
    :cond_305
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v9, v1, Leq;->b:D

    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v14, v1, Leq;->b:D

    double-to-int v1, v14

    int-to-double v14, v1

    sub-double/2addr v9, v14

    const-wide/16 v14, 0x0

    cmpl-double v1, v9, v14

    if-lez v1, :cond_324

    .line 454
    iget v1, v0, Lsn;->bo:F

    float-to-double v14, v1

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    add-double v9, v9, v18

    add-double/2addr v14, v9

    double-to-float v1, v14

    iput v1, v0, Lsn;->bo:F

    :cond_324
    move-wide v10, v5

    move-wide v14, v7

    move-wide/from16 v4, v16

    goto :goto_32f

    :cond_329
    move-wide/from16 v32, v5

    move/from16 p1, v9

    :goto_32d
    move-wide/from16 v4, v23

    .line 459
    :goto_32f
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v6, v1, Leq;->a:D

    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v8, v1, Leq;->d:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    iput-wide v6, v0, Lsn;->aM:D

    .line 460
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v6, v1, Leq;->b:D

    iget v1, v0, Lsn;->bf:F

    float-to-double v8, v1

    add-double/2addr v6, v8

    iget v1, v0, Lsn;->bo:F

    float-to-double v8, v1

    sub-double/2addr v6, v8

    iput-wide v6, v0, Lsn;->aN:D

    .line 461
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v6, v1, Leq;->c:D

    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v8, v1, Leq;->f:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    iput-wide v6, v0, Lsn;->aO:D

    cmpl-double v1, v2, v10

    if-nez v1, :cond_364

    cmpl-double v2, v25, v14

    if-eqz v2, :cond_362

    goto :goto_364

    :cond_362
    const/4 v2, 0x0

    goto :goto_365

    :cond_364
    :goto_364
    const/4 v2, 0x1

    .line 463
    :goto_365
    iput-boolean v2, v0, Lsn;->aY:Z

    cmpl-double v3, v12, v4

    if-eqz v3, :cond_36d

    const/4 v6, 0x1

    goto :goto_36e

    :cond_36d
    const/4 v6, 0x0

    .line 464
    :goto_36e
    iput-boolean v6, v0, Lsn;->aZ:Z

    if-eqz v3, :cond_37a

    const-wide/16 v7, 0x0

    cmpg-double v9, v12, v7

    if-gez v9, :cond_37a

    const/4 v7, 0x1

    goto :goto_37b

    :cond_37a
    const/4 v7, 0x0

    .line 465
    :goto_37b
    iput-boolean v7, v0, Lsn;->aX:Z

    if-nez v2, :cond_384

    if-eqz v6, :cond_382

    goto :goto_384

    :cond_382
    const/4 v9, 0x0

    goto :goto_385

    :cond_384
    :goto_384
    const/4 v9, 0x1

    .line 466
    :goto_385
    iput-boolean v9, v0, Lsn;->ba:Z

    .line 467
    invoke-virtual {v0, v4, v5, v7}, Lsn;->a(DZ)V

    if-eqz v1, :cond_391

    const-wide/16 v1, 0x0

    .line 470
    iput-wide v1, v0, Lsn;->aP:D

    goto :goto_393

    :cond_391
    const-wide/16 v1, 0x0

    :goto_393
    if-eqz v3, :cond_397

    .line 472
    iput-wide v1, v0, Lsn;->aQ:D

    :cond_397
    cmpl-double v3, v25, v14

    if-eqz v3, :cond_39d

    .line 474
    iput-wide v1, v0, Lsn;->aR:D

    .line 476
    :cond_39d
    iget-wide v1, v0, Lsn;->aM:D

    sub-double v1, v1, v32

    .line 477
    iget-wide v3, v0, Lsn;->aO:D

    sub-double v3, v3, v30

    .line 479
    invoke-virtual/range {p0 .. p0}, Lsn;->n()Z

    move-result v5

    if-eqz v5, :cond_46c

    if-nez p1, :cond_46c

    iget-object v5, v0, Lsn;->aH:Lsn;

    if-nez v5, :cond_46c

    .line 480
    iget v5, v0, Lsn;->bj:F

    float-to-double v5, v5

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->a(D)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    add-double/2addr v5, v1

    double-to-float v1, v5

    iput v1, v0, Lsn;->bj:F

    .line 481
    iget-wide v1, v0, Lsn;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 482
    iget-wide v2, v0, Lsn;->aN:D

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    sub-double/2addr v2, v4

    iget v4, v0, Lsn;->bf:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 483
    iget-wide v3, v0, Lsn;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 484
    iget-object v4, v0, Lsn;->aI:Lfd;

    invoke-virtual {v4, v1, v2, v3}, Lfd;->a(III)I

    move-result v4

    .line 485
    iget-object v5, v0, Lsn;->aI:Lfd;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v1, v6, v3}, Lfd;->a(III)I

    move-result v5

    sget-object v7, Luu;->ba:Luu;

    iget v7, v7, Luu;->bn:I

    if-ne v5, v7, :cond_3fc

    .line 486
    iget-object v4, v0, Lsn;->aI:Lfd;

    invoke-virtual {v4, v1, v6, v3}, Lfd;->a(III)I

    move-result v4

    .line 489
    :cond_3fc
    iget v5, v0, Lsn;->bj:F

    iget v6, v0, Lsn;->b:I

    int-to-float v7, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_46c

    if-lez v4, :cond_46c

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 490
    iput v6, v0, Lsn;->b:I

    .line 491
    sget-object v5, Luu;->m:[Luu;

    aget-object v5, v5, v4

    iget-object v5, v5, Luu;->by:Lct;

    .line 492
    iget-object v6, v0, Lsn;->aI:Lfd;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v1, v7, v3}, Lfd;->a(III)I

    move-result v6

    sget-object v7, Luu;->aT:Luu;

    iget v7, v7, Luu;->bn:I

    const v8, 0x3e19999a    # 0.15f

    if-ne v6, v7, :cond_439

    .line 493
    sget-object v5, Luu;->aT:Luu;

    iget-object v5, v5, Luu;->by:Lct;

    .line 494
    iget-object v6, v0, Lsn;->aI:Lfd;

    invoke-virtual {v5}, Lct;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lct;->b()F

    move-result v9

    mul-float/2addr v9, v8

    invoke-virtual {v5}, Lct;->c()F

    move-result v5

    invoke-virtual {v6, v0, v7, v9, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    goto :goto_457

    .line 496
    :cond_439
    sget-object v6, Luu;->m:[Luu;

    aget-object v6, v6, v4

    iget-object v6, v6, Luu;->bA:Lln;

    invoke-virtual {v6}, Lln;->d()Z

    move-result v6

    if-nez v6, :cond_457

    .line 497
    iget-object v6, v0, Lsn;->aI:Lfd;

    invoke-virtual {v5}, Lct;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lct;->b()F

    move-result v9

    mul-float/2addr v9, v8

    invoke-virtual {v5}, Lct;->c()F

    move-result v5

    invoke-virtual {v6, v0, v7, v9, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 500
    :cond_457
    :goto_457
    sget-object v5, Luu;->m:[Luu;

    aget-object v4, v5, v4

    iget-object v5, v0, Lsn;->aI:Lfd;

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, p0

    invoke-virtual/range {p1 .. p6}, Luu;->b(Lfd;IIILsn;)V

    .line 504
    :cond_46c
    iget-object v1, v0, Lsn;->aW:Leq;

    iget-wide v1, v1, Leq;->a:D

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 505
    iget-object v2, v0, Lsn;->aW:Leq;

    iget-wide v5, v2, Leq;->b:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v2

    .line 506
    iget-object v5, v0, Lsn;->aW:Leq;

    iget-wide v5, v5, Leq;->c:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v12

    .line 507
    iget-object v5, v0, Lsn;->aW:Leq;

    iget-wide v5, v5, Leq;->d:D

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v13

    .line 508
    iget-object v5, v0, Lsn;->aW:Leq;

    iget-wide v5, v5, Leq;->e:D

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v14

    .line 509
    iget-object v5, v0, Lsn;->aW:Leq;

    iget-wide v5, v5, Leq;->f:D

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v3

    .line 511
    iget-object v5, v0, Lsn;->aI:Lfd;

    move v6, v1

    move v7, v2

    move v8, v12

    move v9, v13

    move v10, v14

    move v11, v3

    invoke-virtual/range {v5 .. v11}, Lfd;->a(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_4e3

    :goto_4b5
    if-gt v1, v13, :cond_4e3

    move v4, v2

    :goto_4b8
    if-gt v4, v14, :cond_4e0

    move v5, v12

    :goto_4bb
    if-gt v5, v3, :cond_4dd

    .line 515
    iget-object v6, v0, Lsn;->aI:Lfd;

    invoke-virtual {v6, v1, v4, v5}, Lfd;->a(III)I

    move-result v6

    if-lez v6, :cond_4da

    .line 517
    sget-object v7, Luu;->m:[Luu;

    aget-object v6, v7, v6

    iget-object v7, v0, Lsn;->aI:Lfd;

    move-object/from16 p1, v6

    move-object/from16 p2, v7

    move/from16 p3, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, p0

    invoke-virtual/range {p1 .. p6}, Luu;->a(Lfd;IIILsn;)V

    :cond_4da
    add-int/lit8 v5, v5, 0x1

    goto :goto_4bb

    :cond_4dd
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b8

    :cond_4e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b5

    .line 522
    :cond_4e3
    invoke-virtual/range {p0 .. p0}, Lsn;->af()Z

    move-result v1

    .line 523
    iget-object v2, v0, Lsn;->aI:Lfd;

    iget-object v3, v0, Lsn;->aW:Leq;

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-virtual/range {v3 .. v9}, Leq;->e(DDD)Leq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfd;->c(Leq;)Z

    move-result v2

    if-eqz v2, :cond_516

    const/4 v2, 0x1

    .line 524
    invoke-virtual {v0, v2}, Lsn;->a(I)V

    if-nez v1, :cond_51f

    .line 526
    iget v3, v0, Lsn;->bv:I

    add-int/2addr v3, v2

    iput v3, v0, Lsn;->bv:I

    if-nez v3, :cond_51f

    const/16 v2, 0x12c

    .line 528
    iput v2, v0, Lsn;->bv:I

    goto :goto_51f

    .line 531
    :cond_516
    iget v2, v0, Lsn;->bv:I

    if-gtz v2, :cond_51f

    .line 532
    iget v2, v0, Lsn;->bu:I

    neg-int v2, v2

    iput v2, v0, Lsn;->bv:I

    :cond_51f
    :goto_51f
    if-eqz v1, :cond_549

    .line 536
    iget v1, v0, Lsn;->bv:I

    if-lez v1, :cond_549

    .line 537
    iget-object v1, v0, Lsn;->aI:Lfd;

    iget-object v2, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    const v3, 0x3fcccccd    # 1.6f

    add-float/2addr v2, v3

    const-string v3, "random.fizz"

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v1, v0, v3, v4, v2}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 539
    iget v1, v0, Lsn;->bu:I

    neg-int v1, v1

    iput v1, v0, Lsn;->bv:I

    :cond_549
    return-void
.end method

.method public b(DDDFF)V
    .registers 15

    .line 652
    iput-wide p1, p0, Lsn;->aM:D

    iput-wide p1, p0, Lsn;->aJ:D

    .line 653
    iput-wide p3, p0, Lsn;->aN:D

    iput-wide p3, p0, Lsn;->aK:D

    .line 654
    iput-wide p5, p0, Lsn;->aO:D

    iput-wide p5, p0, Lsn;->aL:D

    .line 655
    iput p7, p0, Lsn;->aS:F

    iput p7, p0, Lsn;->aU:F

    .line 656
    iput p8, p0, Lsn;->aT:F

    iput p8, p0, Lsn;->aV:F

    const/4 v0, 0x0

    .line 657
    iput v0, p0, Lsn;->bo:F

    sub-float v0, p7, p7

    float-to-double v0, v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_29

    add-float v2, p7, v3

    .line 661
    iput v2, p0, Lsn;->aU:F

    :cond_29
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_37

    .line 663
    iget v0, p0, Lsn;->aU:F

    sub-float/2addr v0, v3

    iput v0, p0, Lsn;->aU:F

    .line 664
    :cond_37
    invoke-virtual/range {p0 .. p6}, Lsn;->e(DDD)V

    .line 665
    invoke-virtual {p0, p7, p8}, Lsn;->c(FF)V

    return-void
.end method

.method protected b(F)V
    .registers 3

    .line 570
    iget-object v0, p0, Lsn;->aG:Lsn;

    if-eqz v0, :cond_7

    .line 571
    invoke-virtual {v0, p1}, Lsn;->b(F)V

    :cond_7
    return-void
.end method

.method protected b(FF)V
    .registers 3

    .line 142
    iput p1, p0, Lsn;->bg:F

    .line 143
    iput p2, p0, Lsn;->bh:F

    return-void
.end method

.method protected b(IZ)V
    .registers 6

    .line 1096
    iget-object v0, p0, Lsn;->bD:Lud;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v2, 0x1

    if-eqz p2, :cond_18

    .line 1098
    iget-object p2, p0, Lsn;->bD:Lud;

    shl-int p1, v2, p1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lud;->b(ILjava/lang/Object;)V

    goto :goto_26

    .line 1101
    :cond_18
    iget-object p2, p0, Lsn;->bD:Lud;

    shl-int p1, v2, p1

    not-int p1, p1

    and-int/2addr p1, v0

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lud;->b(ILjava/lang/Object;)V

    :goto_26
    return-void
.end method

.method public b(Lgs;)V
    .registers 2

    return-void
.end method

.method protected abstract b(Lnu;)V
.end method

.method public c(DDDFF)V
    .registers 17

    move-object v7, p0

    move-wide v1, p1

    move-wide v5, p5

    .line 669
    iput-wide v1, v7, Lsn;->aM:D

    iput-wide v1, v7, Lsn;->aJ:D

    iput-wide v1, v7, Lsn;->bl:D

    .line 670
    iget v0, v7, Lsn;->bf:F

    float-to-double v3, v0

    add-double/2addr v3, p3

    iput-wide v3, v7, Lsn;->aN:D

    iput-wide v3, v7, Lsn;->aK:D

    iput-wide v3, v7, Lsn;->bm:D

    .line 671
    iput-wide v5, v7, Lsn;->aO:D

    iput-wide v5, v7, Lsn;->aL:D

    iput-wide v5, v7, Lsn;->bn:D

    move v0, p7

    .line 672
    iput v0, v7, Lsn;->aS:F

    move/from16 v0, p8

    .line 673
    iput v0, v7, Lsn;->aT:F

    move-object v0, p0

    .line 674
    invoke-virtual/range {v0 .. v6}, Lsn;->e(DDD)V

    return-void
.end method

.method protected c(FF)V
    .registers 4

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 159
    iput p1, p0, Lsn;->aS:F

    rem-float/2addr p2, v0

    .line 160
    iput p2, p0, Lsn;->aT:F

    return-void
.end method

.method public c(III)V
    .registers 4

    return-void
.end method

.method public c(Lsn;I)V
    .registers 3

    return-void
.end method

.method protected c(DDD)Z
    .registers 23

    move-object/from16 v0, p0

    .line 1117
    invoke-static/range {p1 .. p2}, Lin;->b(D)I

    move-result v1

    .line 1118
    invoke-static/range {p3 .. p4}, Lin;->b(D)I

    move-result v2

    .line 1119
    invoke-static/range {p5 .. p6}, Lin;->b(D)I

    move-result v3

    int-to-double v4, v1

    sub-double v4, p1, v4

    int-to-double v6, v2

    sub-double v6, p3, v6

    int-to-double v8, v3

    sub-double v8, p5, v8

    .line 1125
    iget-object v10, v0, Lsn;->aI:Lfd;

    invoke-virtual {v10, v1, v2, v3}, Lfd;->h(III)Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 1126
    iget-object v10, v0, Lsn;->aI:Lfd;

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12, v2, v3}, Lfd;->h(III)Z

    move-result v10

    const/4 v12, 0x1

    xor-int/2addr v10, v12

    .line 1127
    iget-object v13, v0, Lsn;->aI:Lfd;

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14, v2, v3}, Lfd;->h(III)Z

    move-result v13

    xor-int/2addr v13, v12

    .line 1128
    iget-object v14, v0, Lsn;->aI:Lfd;

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v14, v1, v15, v3}, Lfd;->h(III)Z

    move-result v14

    xor-int/2addr v14, v12

    .line 1129
    iget-object v15, v0, Lsn;->aI:Lfd;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v15, v1, v11, v3}, Lfd;->h(III)Z

    move-result v11

    xor-int/2addr v11, v12

    .line 1130
    iget-object v15, v0, Lsn;->aI:Lfd;

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v15, v1, v2, v12}, Lfd;->h(III)Z

    move-result v12

    const/4 v15, 0x1

    xor-int/2addr v12, v15

    move-wide/from16 p3, v8

    .line 1131
    iget-object v8, v0, Lsn;->aI:Lfd;

    add-int/2addr v3, v15

    invoke-virtual {v8, v1, v2, v3}, Lfd;->h(III)Z

    move-result v1

    xor-int/2addr v1, v15

    const-wide v2, 0x40c3878000000000L    # 9999.0

    if-eqz v10, :cond_66

    cmpg-double v8, v4, v2

    if-gez v8, :cond_66

    move-wide v2, v4

    const/4 v15, 0x0

    goto :goto_68

    :cond_66
    const/4 v8, -0x1

    move v15, v8

    :goto_68
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v13, :cond_74

    sub-double v4, v8, v4

    cmpg-double v10, v4, v2

    if-gez v10, :cond_74

    move-wide v2, v4

    const/4 v15, 0x1

    :cond_74
    const/4 v4, 0x2

    if-eqz v14, :cond_7d

    cmpg-double v5, v6, v2

    if-gez v5, :cond_7d

    move v15, v4

    move-wide v2, v6

    :cond_7d
    const/4 v5, 0x3

    if-eqz v11, :cond_88

    sub-double v6, v8, v6

    cmpg-double v10, v6, v2

    if-gez v10, :cond_88

    move v15, v5

    move-wide v2, v6

    :cond_88
    const/4 v6, 0x4

    move-wide/from16 v10, p3

    if-eqz v12, :cond_93

    cmpg-double v7, v10, v2

    if-gez v7, :cond_93

    move v15, v6

    move-wide v2, v10

    :cond_93
    const/4 v7, 0x5

    if-eqz v1, :cond_9c

    sub-double/2addr v8, v10

    cmpg-double v1, v8, v2

    if-gez v1, :cond_9c

    move v15, v7

    .line 1160
    :cond_9c
    iget-object v1, v0, Lsn;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    if-nez v15, :cond_b0

    neg-float v2, v1

    float-to-double v2, v2

    .line 1162
    iput-wide v2, v0, Lsn;->aP:D

    :cond_b0
    const/4 v2, 0x1

    if-ne v15, v2, :cond_b6

    float-to-double v2, v1

    .line 1164
    iput-wide v2, v0, Lsn;->aP:D

    :cond_b6
    if-ne v15, v4, :cond_bc

    neg-float v2, v1

    float-to-double v2, v2

    .line 1167
    iput-wide v2, v0, Lsn;->aQ:D

    :cond_bc
    if-ne v15, v5, :cond_c1

    float-to-double v2, v1

    .line 1169
    iput-wide v2, v0, Lsn;->aQ:D

    :cond_c1
    if-ne v15, v6, :cond_c7

    neg-float v2, v1

    float-to-double v2, v2

    .line 1172
    iput-wide v2, v0, Lsn;->aR:D

    :cond_c7
    if-ne v15, v7, :cond_cc

    float-to-double v1, v1

    .line 1174
    iput-wide v1, v0, Lsn;->aR:D

    :cond_cc
    const/4 v1, 0x0

    return v1
.end method

.method public c(Lnu;)Z
    .registers 4

    .line 798
    invoke-virtual {p0}, Lsn;->aj()Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-boolean v1, p0, Lsn;->be:Z

    if-nez v1, :cond_15

    if-nez v0, :cond_b

    goto :goto_15

    :cond_b
    const-string v1, "id"

    .line 802
    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0, p1}, Lsn;->d(Lnu;)V

    const/4 p1, 0x1

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return p1
.end method

.method public d(DDD)V
    .registers 9

    .line 741
    iget-wide v0, p0, Lsn;->aP:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lsn;->aP:D

    .line 742
    iget-wide p1, p0, Lsn;->aQ:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lsn;->aQ:D

    .line 743
    iget-wide p1, p0, Lsn;->aR:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lsn;->aR:D

    return-void
.end method

.method public d(FF)V
    .registers 11

    .line 174
    iget v0, p0, Lsn;->aT:F

    .line 175
    iget v1, p0, Lsn;->aS:F

    float-to-double v2, v1

    float-to-double v4, p1

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float p1, v2

    .line 177
    iput p1, p0, Lsn;->aS:F

    float-to-double v2, v0

    float-to-double v4, p2

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float p2, v2

    .line 178
    iput p2, p0, Lsn;->aT:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1f

    .line 180
    iput v2, p0, Lsn;->aT:F

    .line 181
    :cond_1f
    iget p2, p0, Lsn;->aT:F

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float p2, p2, v2

    if-lez p2, :cond_29

    .line 182
    iput v2, p0, Lsn;->aT:F

    .line 184
    :cond_29
    iget p2, p0, Lsn;->aV:F

    iget v2, p0, Lsn;->aT:F

    sub-float/2addr v2, v0

    add-float/2addr p2, v2

    iput p2, p0, Lsn;->aV:F

    .line 185
    iget p2, p0, Lsn;->aU:F

    sub-float/2addr p1, v1

    add-float/2addr p2, p1

    iput p2, p0, Lsn;->aU:F

    return-void
.end method

.method public d(Lnu;)V
    .registers 9

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 808
    iget-wide v2, p0, Lsn;->aM:D

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lsn;->aN:D

    iget v5, p0, Lsn;->bo:F

    float-to-double v5, v5

    add-double/2addr v2, v5

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    iget-wide v2, p0, Lsn;->aO:D

    const/4 v6, 0x2

    aput-wide v2, v1, v6

    invoke-virtual {p0, v1}, Lsn;->a([D)Lsp;

    move-result-object v1

    const-string v2, "Pos"

    invoke-virtual {p1, v2, v1}, Lnu;->a(Ljava/lang/String;Lij;)V

    new-array v0, v0, [D

    .line 809
    iget-wide v1, p0, Lsn;->aP:D

    aput-wide v1, v0, v4

    iget-wide v1, p0, Lsn;->aQ:D

    aput-wide v1, v0, v5

    iget-wide v1, p0, Lsn;->aR:D

    aput-wide v1, v0, v6

    invoke-virtual {p0, v0}, Lsn;->a([D)Lsp;

    move-result-object v0

    const-string v1, "Motion"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    new-array v0, v6, [F

    .line 810
    iget v1, p0, Lsn;->aS:F

    aput v1, v0, v4

    iget v1, p0, Lsn;->aT:F

    aput v1, v0, v5

    invoke-virtual {p0, v0}, Lsn;->a([F)Lsp;

    move-result-object v0

    const-string v1, "Rotation"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    const-string v0, "FallDistance"

    .line 812
    iget v1, p0, Lsn;->bk:F

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;F)V

    .line 813
    iget v0, p0, Lsn;->bv:I

    int-to-short v0, v0

    const-string v1, "Fire"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 814
    iget v0, p0, Lsn;->bz:I

    int-to-short v0, v0

    const-string v1, "Air"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    const-string v0, "OnGround"

    .line 815
    iget-boolean v1, p0, Lsn;->aX:Z

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    .line 817
    invoke-virtual {p0, p1}, Lsn;->b(Lnu;)V

    return-void
.end method

.method protected d(I)Z
    .registers 5

    .line 1092
    iget-object v0, p0, Lsn;->bD:Lud;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v2, 0x1

    shl-int p1, v2, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    return v1
.end method

.method public e(DDD)V
    .registers 29

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    .line 164
    iput-wide v1, v0, Lsn;->aM:D

    .line 165
    iput-wide v3, v0, Lsn;->aN:D

    .line 166
    iput-wide v5, v0, Lsn;->aO:D

    .line 167
    iget v7, v0, Lsn;->bg:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 168
    iget v8, v0, Lsn;->bh:F

    .line 169
    iget-object v9, v0, Lsn;->aW:Leq;

    float-to-double v10, v7

    sub-double v12, v1, v10

    iget v7, v0, Lsn;->bf:F

    float-to-double v14, v7

    sub-double v14, v3, v14

    move-wide/from16 v16, v12

    iget v12, v0, Lsn;->bo:F

    move v13, v8

    move-object/from16 v18, v9

    float-to-double v8, v12

    add-double/2addr v14, v8

    sub-double v19, v5, v10

    add-double/2addr v1, v10

    float-to-double v7, v7

    sub-double/2addr v3, v7

    float-to-double v7, v12

    add-double/2addr v3, v7

    move v7, v13

    float-to-double v7, v7

    add-double/2addr v3, v7

    add-double/2addr v5, v10

    move-object/from16 v9, v18

    move-wide/from16 v10, v16

    move-wide v12, v14

    move-wide/from16 v14, v19

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v9 .. v21}, Leq;->c(DDDDDD)Leq;

    return-void
.end method

.method public e(Lnu;)V
    .registers 14

    const-string v0, "Pos"

    .line 822
    invoke-virtual {p1, v0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object v0

    const-string v1, "Motion"

    .line 823
    invoke-virtual {p1, v1}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object v1

    const-string v2, "Rotation"

    .line 824
    invoke-virtual {p1, v2}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object v2

    const/4 v3, 0x0

    .line 828
    invoke-virtual {v1, v3}, Lsp;->a(I)Lij;

    move-result-object v4

    check-cast v4, Lsz;

    iget-wide v4, v4, Lsz;->a:D

    iput-wide v4, p0, Lsn;->aP:D

    const/4 v4, 0x1

    .line 829
    invoke-virtual {v1, v4}, Lsp;->a(I)Lij;

    move-result-object v5

    check-cast v5, Lsz;

    iget-wide v5, v5, Lsz;->a:D

    iput-wide v5, p0, Lsn;->aQ:D

    const/4 v5, 0x2

    .line 830
    invoke-virtual {v1, v5}, Lsp;->a(I)Lij;

    move-result-object v1

    check-cast v1, Lsz;

    iget-wide v6, v1, Lsz;->a:D

    iput-wide v6, p0, Lsn;->aR:D

    .line 832
    iget-wide v6, p0, Lsn;->aP:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v1, v6, v8

    const-wide/16 v6, 0x0

    if-lez v1, :cond_43

    .line 833
    iput-wide v6, p0, Lsn;->aP:D

    .line 835
    :cond_43
    iget-wide v10, p0, Lsn;->aQ:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v1, v10, v8

    if-lez v1, :cond_4f

    .line 836
    iput-wide v6, p0, Lsn;->aQ:D

    .line 838
    :cond_4f
    iget-wide v10, p0, Lsn;->aR:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v1, v10, v8

    if-lez v1, :cond_5b

    .line 839
    iput-wide v6, p0, Lsn;->aR:D

    .line 842
    :cond_5b
    invoke-virtual {v0, v3}, Lsp;->a(I)Lij;

    move-result-object v1

    check-cast v1, Lsz;

    iget-wide v6, v1, Lsz;->a:D

    iput-wide v6, p0, Lsn;->aM:D

    iput-wide v6, p0, Lsn;->bl:D

    iput-wide v6, p0, Lsn;->aJ:D

    .line 843
    invoke-virtual {v0, v4}, Lsp;->a(I)Lij;

    move-result-object v1

    check-cast v1, Lsz;

    iget-wide v6, v1, Lsz;->a:D

    iput-wide v6, p0, Lsn;->aN:D

    iput-wide v6, p0, Lsn;->bm:D

    iput-wide v6, p0, Lsn;->aK:D

    .line 844
    invoke-virtual {v0, v5}, Lsp;->a(I)Lij;

    move-result-object v0

    check-cast v0, Lsz;

    iget-wide v0, v0, Lsz;->a:D

    iput-wide v0, p0, Lsn;->aO:D

    iput-wide v0, p0, Lsn;->bn:D

    iput-wide v0, p0, Lsn;->aL:D

    .line 846
    invoke-virtual {v2, v3}, Lsp;->a(I)Lij;

    move-result-object v0

    check-cast v0, Lp;

    iget v0, v0, Lp;->a:F

    iput v0, p0, Lsn;->aS:F

    iput v0, p0, Lsn;->aU:F

    .line 847
    invoke-virtual {v2, v4}, Lsp;->a(I)Lij;

    move-result-object v0

    check-cast v0, Lp;

    iget v0, v0, Lp;->a:F

    iput v0, p0, Lsn;->aT:F

    iput v0, p0, Lsn;->aV:F

    const-string v0, "FallDistance"

    .line 849
    invoke-virtual {p1, v0}, Lnu;->g(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lsn;->bk:F

    const-string v0, "Fire"

    .line 850
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lsn;->bv:I

    const-string v0, "Air"

    .line 851
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lsn;->bz:I

    const-string v0, "OnGround"

    .line 852
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lsn;->aX:Z

    .line 854
    iget-wide v2, p0, Lsn;->aM:D

    iget-wide v4, p0, Lsn;->aN:D

    iget-wide v6, p0, Lsn;->aO:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lsn;->e(DDD)V

    .line 855
    iget v0, p0, Lsn;->aS:F

    iget v1, p0, Lsn;->aT:F

    invoke-virtual {p0, v0, v1}, Lsn;->c(FF)V

    .line 857
    invoke-virtual {p0, p1}, Lsn;->a(Lnu;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 109
    instance-of v0, p1, Lsn;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 110
    check-cast p1, Lsn;

    iget p1, p1, Lsn;->aD:I

    iget v0, p0, Lsn;->aD:I

    if-ne p1, v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public f(Lsn;)F
    .registers 8

    .line 678
    iget-wide v0, p0, Lsn;->aM:D

    iget-wide v2, p1, Lsn;->aM:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 679
    iget-wide v1, p0, Lsn;->aN:D

    iget-wide v3, p1, Lsn;->aN:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 680
    iget-wide v2, p0, Lsn;->aO:D

    iget-wide v4, p1, Lsn;->aO:D

    sub-double/2addr v2, v4

    double-to-float p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    .line 681
    invoke-static {v0}, Lin;->c(F)F

    move-result p1

    return p1
.end method

.method public f()Leq;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(DDD)Z
    .registers 14

    .line 300
    iget-object v0, p0, Lsn;->aW:Leq;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Leq;->c(DDD)Leq;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lsn;->aI:Lfd;

    invoke-virtual {p2, p0, p1}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object p2

    .line 302
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_17

    return p3

    .line 304
    :cond_17
    iget-object p2, p0, Lsn;->aI:Lfd;

    invoke-virtual {p2, p1}, Lfd;->b(Leq;)Z

    move-result p1

    if-eqz p1, :cond_20

    return p3

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method public g(DDD)D
    .registers 9

    .line 685
    iget-wide v0, p0, Lsn;->aM:D

    sub-double/2addr v0, p1

    .line 686
    iget-wide p1, p0, Lsn;->aN:D

    sub-double/2addr p1, p3

    .line 687
    iget-wide p3, p0, Lsn;->aO:D

    sub-double/2addr p3, p5

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    mul-double/2addr p3, p3

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public g(Lsn;)D
    .registers 10

    .line 699
    iget-wide v0, p0, Lsn;->aM:D

    iget-wide v2, p1, Lsn;->aM:D

    sub-double/2addr v0, v2

    .line 700
    iget-wide v2, p0, Lsn;->aN:D

    iget-wide v4, p1, Lsn;->aN:D

    sub-double/2addr v2, v4

    .line 701
    iget-wide v4, p0, Lsn;->aO:D

    iget-wide v6, p1, Lsn;->aO:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public h(DDD)D
    .registers 9

    .line 692
    iget-wide v0, p0, Lsn;->aM:D

    sub-double/2addr v0, p1

    .line 693
    iget-wide p1, p0, Lsn;->aN:D

    sub-double/2addr p1, p3

    .line 694
    iget-wide p3, p0, Lsn;->aO:D

    sub-double/2addr p3, p5

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    mul-double/2addr p3, p3

    add-double/2addr v0, p3

    .line 695
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public h(Lsn;)V
    .registers 13

    .line 709
    iget-object v0, p1, Lsn;->aG:Lsn;

    if-eq v0, p0, :cond_54

    iget-object v0, p1, Lsn;->aH:Lsn;

    if-ne v0, p0, :cond_9

    goto :goto_54

    .line 712
    :cond_9
    iget-wide v0, p1, Lsn;->aM:D

    iget-wide v2, p0, Lsn;->aM:D

    sub-double/2addr v0, v2

    .line 713
    iget-wide v2, p1, Lsn;->aO:D

    iget-wide v4, p0, Lsn;->aO:D

    sub-double/2addr v2, v4

    .line 716
    invoke-static {v0, v1, v2, v3}, Lin;->a(DD)D

    move-result-wide v4

    const-wide v7, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v6, v4, v7

    if-ltz v6, :cond_54

    .line 719
    invoke-static {v4, v5}, Lin;->a(D)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v0, v4

    div-double/2addr v2, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v4, v7, v4

    cmpl-double v6, v4, v7

    if-lez v6, :cond_30

    goto :goto_31

    :cond_30
    move-wide v7, v4

    :goto_31
    mul-double/2addr v0, v7

    mul-double/2addr v2, v7

    const-wide v4, 0x3fa99999a0000000L    # 0.05000000074505806

    mul-double/2addr v0, v4

    mul-double/2addr v2, v4

    .line 732
    iget v4, p0, Lsn;->br:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v4

    float-to-double v7, v6

    mul-double/2addr v7, v0

    sub-float/2addr v5, v4

    float-to-double v0, v5

    mul-double v9, v2, v0

    neg-double v1, v7

    const-wide/16 v3, 0x0

    neg-double v5, v9

    move-object v0, p0

    .line 735
    invoke-virtual/range {v0 .. v6}, Lsn;->d(DDD)V

    move-object v0, p1

    move-wide v1, v7

    move-wide v5, v9

    .line 736
    invoke-virtual/range {v0 .. v6}, Lsn;->d(DDD)V

    :cond_54
    :goto_54
    return-void
.end method

.method public h_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 116
    iget v0, p0, Lsn;->aD:I

    return v0
.end method

.method public i(Lsn;)V
    .registers 13

    const-wide/16 v0, 0x0

    .line 994
    iput-wide v0, p0, Lsn;->d:D

    .line 995
    iput-wide v0, p0, Lsn;->e:D

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 998
    iget-object p1, p0, Lsn;->aH:Lsn;

    if-eqz p1, :cond_27

    .line 999
    iget-wide v2, p1, Lsn;->aM:D

    iget-object p1, p1, Lsn;->aW:Leq;

    iget-wide v4, p1, Leq;->b:D

    iget-object p1, p0, Lsn;->aH:Lsn;

    iget v1, p1, Lsn;->bh:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    iget-wide v6, p1, Lsn;->aO:D

    iget v8, p0, Lsn;->aS:F

    iget v9, p0, Lsn;->aT:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lsn;->c(DDDFF)V

    .line 1001
    iget-object p1, p0, Lsn;->aH:Lsn;

    iput-object v0, p1, Lsn;->aG:Lsn;

    .line 1003
    :cond_27
    iput-object v0, p0, Lsn;->aH:Lsn;

    return-void

    .line 1006
    :cond_2a
    iget-object v1, p0, Lsn;->aH:Lsn;

    if-ne v1, p1, :cond_47

    .line 1007
    iput-object v0, v1, Lsn;->aG:Lsn;

    .line 1008
    iput-object v0, p0, Lsn;->aH:Lsn;

    .line 1009
    iget-wide v3, p1, Lsn;->aM:D

    iget-object v0, p1, Lsn;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    iget v2, p1, Lsn;->bh:F

    float-to-double v5, v2

    add-double/2addr v5, v0

    iget-wide v7, p1, Lsn;->aO:D

    iget v9, p0, Lsn;->aS:F

    iget v10, p0, Lsn;->aT:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lsn;->c(DDDFF)V

    return-void

    :cond_47
    if-eqz v1, :cond_4b

    .line 1013
    iput-object v0, v1, Lsn;->aG:Lsn;

    .line 1015
    :cond_4b
    iget-object v1, p1, Lsn;->aG:Lsn;

    if-eqz v1, :cond_51

    .line 1016
    iput-object v0, v1, Lsn;->aH:Lsn;

    .line 1018
    :cond_51
    iput-object p1, p0, Lsn;->aH:Lsn;

    .line 1019
    iput-object p0, p1, Lsn;->aG:Lsn;

    return-void
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k_()Z
    .registers 16

    .line 584
    iget-object v0, p0, Lsn;->aI:Lfd;

    iget-object v1, p0, Lsn;->aW:Leq;

    const-wide/16 v2, 0x0

    const-wide v4, -0x4026666660000000L    # -0.4000000059604645

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Leq;->b(DDD)Leq;

    move-result-object v8

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v11, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-virtual/range {v8 .. v14}, Leq;->e(DDD)Leq;

    move-result-object v1

    sget-object v2, Lln;->g:Lln;

    invoke-virtual {v0, v1, v2, p0}, Lfd;->a(Leq;Lln;Lsn;)Z

    move-result v0

    return v0
.end method

.method public l_()V
    .registers 8

    .line 982
    iget-object v0, p0, Lsn;->aG:Lsn;

    iget-wide v1, p0, Lsn;->aM:D

    iget-wide v3, p0, Lsn;->aN:D

    invoke-virtual {p0}, Lsn;->m()D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-object v5, p0, Lsn;->aG:Lsn;

    invoke-virtual {v5}, Lsn;->I()D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-wide v5, p0, Lsn;->aO:D

    invoke-virtual/range {v0 .. v6}, Lsn;->e(DDD)V

    return-void
.end method

.method public m()D
    .registers 5

    .line 990
    iget v0, p0, Lsn;->bh:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public m_()F
    .registers 2

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public q_()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public s_()V
    .registers 14

    .line 934
    iget-object v0, p0, Lsn;->aH:Lsn;

    iget-boolean v0, v0, Lsn;->be:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 935
    iput-object v0, p0, Lsn;->aH:Lsn;

    return-void

    :cond_a
    const-wide/16 v0, 0x0

    .line 938
    iput-wide v0, p0, Lsn;->aP:D

    .line 939
    iput-wide v0, p0, Lsn;->aQ:D

    .line 940
    iput-wide v0, p0, Lsn;->aR:D

    .line 941
    invoke-virtual {p0}, Lsn;->w_()V

    .line 943
    iget-object v0, p0, Lsn;->aH:Lsn;

    if-nez v0, :cond_1a

    return-void

    .line 946
    :cond_1a
    invoke-virtual {v0}, Lsn;->l_()V

    .line 948
    iget-wide v0, p0, Lsn;->e:D

    iget-object v2, p0, Lsn;->aH:Lsn;

    iget v3, v2, Lsn;->aS:F

    iget v4, v2, Lsn;->aU:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v0, v3

    iput-wide v0, p0, Lsn;->e:D

    .line 949
    iget-wide v0, p0, Lsn;->d:D

    iget v3, v2, Lsn;->aT:F

    iget v2, v2, Lsn;->aV:F

    sub-float/2addr v3, v2

    float-to-double v2, v3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lsn;->d:D

    .line 951
    :goto_35
    iget-wide v0, p0, Lsn;->e:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, v0, v2

    const-wide v5, 0x4076800000000000L    # 360.0

    if-ltz v4, :cond_49

    sub-double/2addr v0, v5

    .line 952
    iput-wide v0, p0, Lsn;->e:D

    goto :goto_35

    .line 953
    :cond_49
    :goto_49
    iget-wide v0, p0, Lsn;->e:D

    const-wide v7, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v0, v7

    if-gez v4, :cond_58

    add-double/2addr v0, v5

    .line 954
    iput-wide v0, p0, Lsn;->e:D

    goto :goto_49

    .line 956
    :cond_58
    :goto_58
    iget-wide v0, p0, Lsn;->d:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_62

    sub-double/2addr v0, v5

    .line 957
    iput-wide v0, p0, Lsn;->d:D

    goto :goto_58

    .line 958
    :cond_62
    :goto_62
    iget-wide v0, p0, Lsn;->d:D

    cmpg-double v2, v0, v7

    if-gez v2, :cond_6c

    add-double/2addr v0, v5

    .line 959
    iput-wide v0, p0, Lsn;->d:D

    goto :goto_62

    .line 961
    :cond_6c
    iget-wide v2, p0, Lsn;->e:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v6, v2, v4

    mul-double/2addr v4, v0

    const/high16 v8, 0x41200000    # 10.0f

    float-to-double v8, v8

    cmpl-double v10, v6, v8

    if-lez v10, :cond_7b

    move-wide v6, v8

    :cond_7b
    const/high16 v10, -0x3ee00000    # -10.0f

    float-to-double v10, v10

    cmpg-double v12, v6, v10

    if-gez v12, :cond_83

    move-wide v6, v10

    :cond_83
    cmpl-double v12, v4, v8

    if-lez v12, :cond_88

    move-wide v4, v8

    :cond_88
    cmpg-double v8, v4, v10

    if-gez v8, :cond_8d

    goto :goto_8e

    :cond_8d
    move-wide v10, v4

    :goto_8e
    sub-double/2addr v2, v6

    .line 974
    iput-wide v2, p0, Lsn;->e:D

    sub-double/2addr v0, v10

    .line 975
    iput-wide v0, p0, Lsn;->d:D

    .line 977
    iget v0, p0, Lsn;->aS:F

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, p0, Lsn;->aS:F

    .line 978
    iget v0, p0, Lsn;->aT:F

    float-to-double v0, v0

    add-double/2addr v0, v10

    double-to-float v0, v0

    iput v0, p0, Lsn;->aT:F

    return-void
.end method

.method public t()Z
    .registers 2

    const/4 v0, 0x1

    .line 1084
    invoke-virtual {p0, v0}, Lsn;->d(I)Z

    move-result v0

    return v0
.end method

.method protected t_()V
    .registers 11

    .line 120
    iget-object v0, p0, Lsn;->aI:Lfd;

    if-nez v0, :cond_5

    return-void

    .line 125
    :cond_5
    :goto_5
    iget-wide v4, p0, Lsn;->aN:D

    const-wide/16 v8, 0x0

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2c

    .line 126
    iget-wide v2, p0, Lsn;->aM:D

    iget-wide v6, p0, Lsn;->aO:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lsn;->e(DDD)V

    .line 127
    iget-object v0, p0, Lsn;->aI:Lfd;

    iget-object v1, p0, Lsn;->aW:Leq;

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_2c

    .line 129
    :cond_24
    iget-wide v0, p0, Lsn;->aN:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lsn;->aN:D

    goto :goto_5

    .line 132
    :cond_2c
    :goto_2c
    iput-wide v8, p0, Lsn;->aR:D

    iput-wide v8, p0, Lsn;->aQ:D

    iput-wide v8, p0, Lsn;->aP:D

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lsn;->aT:F

    return-void
.end method

.method public u_()V
    .registers 1

    return-void
.end method

.method public w()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 1

    .line 198
    invoke-virtual {p0}, Lsn;->U()V

    return-void
.end method

.method public x_()F
    .registers 3

    .line 883
    iget v0, p0, Lsn;->bh:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method
