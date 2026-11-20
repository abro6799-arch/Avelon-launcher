###### Class com.jcraft.jorbis.Lsp (com.jcraft.jorbis.Lsp)
.class Lcom/jcraft/jorbis/Lsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final M_PI:F = 3.1415927f


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lsp_to_curve([F[III[FIFF)V
    .registers 21

    move v0, p2

    move/from16 v1, p5

    const v2, 0x40490fdb    # (float)Math.PI

    move/from16 v3, p3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v1, :cond_19

    .line 48
    aget v5, p4, v4

    invoke-static {v5}, Lcom/jcraft/jorbis/Lookup;->coslook(F)F

    move-result v5

    aput v5, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 49
    :cond_19
    div-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v5, v3

    :goto_1e
    if-ge v5, v0, :cond_ad

    .line 53
    aget v6, p1, v5

    int-to-float v7, v6

    mul-float/2addr v7, v2

    .line 56
    invoke-static {v7}, Lcom/jcraft/jorbis/Lookup;->coslook(F)F

    move-result v7

    const v8, 0x3f3504f3

    move v10, v3

    move v9, v8

    :goto_2d
    if-ge v10, v4, :cond_3c

    .line 59
    aget v11, p4, v10

    sub-float/2addr v11, v7

    mul-float/2addr v8, v11

    add-int/lit8 v11, v10, 0x1

    .line 60
    aget v11, p4, v11

    sub-float/2addr v11, v7

    mul-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x2

    goto :goto_2d

    :cond_3c
    and-int/lit8 v10, v1, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v10, :cond_4b

    add-int/lit8 v10, v1, -0x1

    .line 66
    aget v10, p4, v10

    sub-float/2addr v10, v7

    mul-float/2addr v8, v10

    mul-float/2addr v8, v8

    mul-float/2addr v7, v7

    goto :goto_4f

    :cond_4b
    add-float v10, v7, v11

    mul-float/2addr v10, v8

    mul-float/2addr v8, v10

    :goto_4f
    sub-float/2addr v11, v7

    mul-float/2addr v11, v9

    mul-float/2addr v9, v11

    add-float/2addr v9, v8

    .line 78
    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    const v8, 0x7fffffff

    and-int v10, v7, v8

    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v10, v11, :cond_87

    if-nez v10, :cond_63

    goto :goto_87

    :cond_63
    const/high16 v11, 0x800000

    if-ge v10, v11, :cond_75

    float-to-double v9, v9

    const-wide/high16 v11, 0x4180000000000000L    # 3.3554432E7

    mul-double/2addr v9, v11

    double-to-float v7, v9

    .line 88
    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    and-int v10, v7, v8

    const/16 v8, -0x19

    goto :goto_76

    :cond_75
    move v8, v3

    :goto_76
    ushr-int/lit8 v9, v10, 0x17

    add-int/lit8 v9, v9, -0x7e

    add-int/2addr v8, v9

    const v9, -0x7f800001

    and-int/2addr v7, v9

    const/high16 v9, 0x3f000000    # 0.5f

    or-int/2addr v7, v9

    .line 94
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    goto :goto_88

    :cond_87
    :goto_87
    move v8, v3

    .line 97
    :goto_88
    invoke-static {v9}, Lcom/jcraft/jorbis/Lookup;->invsqlook(F)F

    move-result v7

    mul-float v7, v7, p6

    add-int/2addr v8, v1

    invoke-static {v8}, Lcom/jcraft/jorbis/Lookup;->invsq2explook(I)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float v7, v7, p7

    invoke-static {v7}, Lcom/jcraft/jorbis/Lookup;->fromdBlook(F)F

    move-result v7

    :goto_9a
    add-int/lit8 v8, v5, 0x1

    .line 101
    aget v9, p0, v5

    mul-float/2addr v9, v7

    aput v9, p0, v5

    if-ge v8, v0, :cond_aa

    .line 103
    aget v5, p1, v8

    if-eq v5, v6, :cond_a8

    goto :goto_aa

    :cond_a8
    move v5, v8

    goto :goto_9a

    :cond_aa
    :goto_aa
    move v5, v8

    goto/16 :goto_1e

    :cond_ad
    return-void
.end method
