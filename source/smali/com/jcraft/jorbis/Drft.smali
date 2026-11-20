###### Class com.jcraft.jorbis.Drft (com.jcraft.jorbis.Drft)
.class Lcom/jcraft/jorbis/Drft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static hsqt2:F

.field static ntryh:[I

.field static sqrt2:F

.field static taui:F

.field static taur:F

.field static tpi:F


# instance fields
.field n:I

.field splitcache:[I

.field trigcache:[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 54
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Drft;->ntryh:[I

    const v0, 0x40c90fdb

    .line 55
    sput v0, Lcom/jcraft/jorbis/Drft;->tpi:F

    const v0, 0x3f3504f3

    .line 56
    sput v0, Lcom/jcraft/jorbis/Drft;->hsqt2:F

    const v0, 0x3f5db3d7

    .line 57
    sput v0, Lcom/jcraft/jorbis/Drft;->taui:F

    const/high16 v0, -0x41000000    # -0.5f

    .line 58
    sput v0, Lcom/jcraft/jorbis/Drft;->taur:F

    const v0, 0x3fb504f3

    .line 59
    sput v0, Lcom/jcraft/jorbis/Drft;->sqrt2:F

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dradb2(II[F[F[FI)V
    .registers 27

    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_e
    if-ge v6, v1, :cond_28

    .line 713
    aget v9, p2, v8

    add-int v10, v4, v8

    aget v11, p2, v10

    add-float/2addr v9, v11

    aput v9, p3, v7

    add-int v9, v7, v2

    .line 714
    aget v8, p2, v8

    aget v10, p2, v10

    sub-float/2addr v8, v10

    aput v8, p3, v9

    add-int/2addr v7, v0

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_28
    const/4 v4, 0x2

    if-ge v0, v4, :cond_2c

    return-void

    :cond_2c
    if-eq v0, v4, :cond_8f

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_31
    const/4 v9, 0x1

    if-ge v6, v1, :cond_8a

    add-int v10, v8, v3

    add-int v11, v2, v7

    move v12, v4

    move v13, v7

    :goto_3a
    if-ge v12, v0, :cond_84

    add-int/2addr v13, v4

    add-int/2addr v8, v4

    add-int/lit8 v10, v10, -0x2

    add-int/2addr v11, v4

    add-int/lit8 v14, v13, -0x1

    add-int/lit8 v15, v8, -0x1

    .line 732
    aget v16, p2, v15

    add-int/lit8 v17, v10, -0x1

    aget v18, p2, v17

    add-float v16, v16, v18

    aput v16, p3, v14

    .line 733
    aget v14, p2, v15

    aget v15, p2, v17

    sub-float/2addr v14, v15

    .line 734
    aget v15, p2, v8

    aget v16, p2, v10

    sub-float v15, v15, v16

    aput v15, p3, v13

    .line 735
    aget v15, p2, v8

    aget v16, p2, v10

    add-float v15, v15, v16

    add-int/lit8 v16, v11, -0x1

    add-int v17, p5, v12

    add-int/lit8 v18, v17, -0x2

    .line 736
    aget v19, p4, v18

    mul-float v19, v19, v14

    add-int/lit8 v17, v17, -0x1

    aget v20, p4, v17

    mul-float v20, v20, v15

    sub-float v19, v19, v20

    aput v19, p3, v16

    .line 737
    aget v16, p4, v18

    mul-float v16, v16, v15

    aget v15, p4, v17

    mul-float/2addr v15, v14

    add-float v16, v16, v15

    aput v16, p3, v11

    add-int/lit8 v12, v12, 0x2

    goto :goto_3a

    :cond_84
    add-int/2addr v7, v0

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 741
    :cond_8a
    rem-int/lit8 v4, v0, 0x2

    if-ne v4, v9, :cond_8f

    return-void

    :cond_8f
    add-int/lit8 v4, v0, -0x1

    move v6, v5

    move v5, v4

    :goto_93
    if-ge v6, v1, :cond_a9

    .line 748
    aget v7, p2, v5

    add-float/2addr v7, v7

    aput v7, p3, v4

    add-int v7, v4, v2

    add-int/lit8 v8, v5, 0x1

    .line 749
    aget v8, p2, v8

    add-float/2addr v8, v8

    neg-float v8, v8

    aput v8, p3, v7

    add-int/2addr v4, v0

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    :cond_a9
    return-void
.end method

.method static dradb3(II[F[F[FI[FI)V
    .registers 32

    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    shl-int/lit8 v3, v2, 0x1

    shl-int/lit8 v4, v0, 0x1

    add-int v5, v0, v4

    const/4 v6, 0x0

    move v8, v4

    move v7, v6

    move v9, v7

    move v10, v9

    :goto_11
    if-ge v7, v1, :cond_38

    add-int/lit8 v11, v8, -0x1

    .line 767
    aget v11, p2, v11

    add-float/2addr v11, v11

    .line 768
    aget v12, p2, v9

    sget v13, Lcom/jcraft/jorbis/Drft;->taur:F

    mul-float/2addr v13, v11

    add-float/2addr v13, v12

    add-float/2addr v12, v11

    .line 769
    aput v12, p3, v10

    .line 770
    sget v11, Lcom/jcraft/jorbis/Drft;->taui:F

    aget v12, p2, v8

    add-float/2addr v12, v12

    mul-float/2addr v11, v12

    add-int v12, v10, v2

    sub-float v14, v13, v11

    .line 771
    aput v14, p3, v12

    add-int v12, v10, v3

    add-float/2addr v13, v11

    .line 772
    aput v13, p3, v12

    add-int/2addr v10, v0

    add-int/2addr v8, v5

    add-int/2addr v9, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_38
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3c

    return-void

    :cond_3c
    move v5, v6

    :goto_3d
    if-ge v6, v1, :cond_e4

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v5

    add-int v8, v7, v4

    add-int v9, v5, v2

    add-int v10, v9, v2

    const/4 v11, 0x2

    move v14, v5

    move v12, v10

    move v13, v11

    move v10, v9

    move v9, v8

    :goto_4e
    if-ge v13, v0, :cond_df

    add-int/2addr v8, v11

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v7, v11

    add-int/2addr v14, v11

    add-int/2addr v10, v11

    add-int/2addr v12, v11

    add-int/lit8 v15, v8, -0x1

    .line 796
    aget v16, p2, v15

    add-int/lit8 v17, v9, -0x1

    aget v18, p2, v17

    add-float v16, v16, v18

    add-int/lit8 v18, v7, -0x1

    .line 797
    aget v18, p2, v18

    sget v19, Lcom/jcraft/jorbis/Drft;->taur:F

    mul-float v20, v19, v16

    add-float v20, v18, v20

    add-int/lit8 v21, v14, -0x1

    add-float v18, v18, v16

    .line 798
    aput v18, p3, v21

    .line 799
    aget v16, p2, v8

    aget v18, p2, v9

    sub-float v16, v16, v18

    .line 800
    aget v18, p2, v7

    mul-float v19, v19, v16

    add-float v19, v18, v19

    add-float v18, v18, v16

    .line 801
    aput v18, p3, v14

    .line 802
    sget v16, Lcom/jcraft/jorbis/Drft;->taui:F

    aget v15, p2, v15

    aget v17, p2, v17

    sub-float v15, v15, v17

    mul-float v15, v15, v16

    .line 803
    aget v17, p2, v8

    aget v18, p2, v9

    add-float v17, v17, v18

    mul-float v16, v16, v17

    sub-float v17, v20, v16

    add-float v20, v20, v16

    add-float v16, v19, v15

    sub-float v19, v19, v15

    add-int/lit8 v15, v10, -0x1

    add-int v18, p5, v13

    add-int/lit8 v21, v18, -0x2

    .line 808
    aget v22, p4, v21

    mul-float v22, v22, v17

    add-int/lit8 v18, v18, -0x1

    aget v23, p4, v18

    mul-float v23, v23, v16

    sub-float v22, v22, v23

    aput v22, p3, v15

    .line 809
    aget v15, p4, v21

    mul-float v15, v15, v16

    aget v16, p4, v18

    mul-float v16, v16, v17

    add-float v15, v15, v16

    aput v15, p3, v10

    add-int/lit8 v15, v12, -0x1

    add-int v16, p7, v13

    add-int/lit8 v17, v16, -0x2

    .line 810
    aget v18, p6, v17

    mul-float v18, v18, v20

    add-int/lit8 v16, v16, -0x1

    aget v21, p6, v16

    mul-float v21, v21, v19

    sub-float v18, v18, v21

    aput v18, p3, v15

    .line 811
    aget v15, p6, v17

    mul-float v15, v15, v19

    aget v16, p6, v16

    mul-float v16, v16, v20

    add-float v15, v15, v16

    aput v15, p3, v12

    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_4e

    :cond_df
    add-int/2addr v5, v0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3d

    :cond_e4
    return-void
.end method

.method static dradb4(II[F[F[FI[FI[FI)V
    .registers 38

    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    shl-int/lit8 v3, v0, 0x2

    shl-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_e
    const/4 v9, 0x1

    if-ge v6, v1, :cond_3b

    add-int v10, v7, v4

    add-int/lit8 v11, v10, -0x1

    .line 830
    aget v11, p2, v11

    add-float/2addr v11, v11

    .line 831
    aget v12, p2, v10

    add-float/2addr v12, v12

    .line 832
    aget v13, p2, v7

    add-int/2addr v10, v4

    sub-int/2addr v10, v9

    aget v9, p2, v10

    sub-float v10, v13, v9

    add-float/2addr v13, v9

    add-float v9, v13, v11

    .line 834
    aput v9, p3, v8

    add-int v9, v8, v2

    sub-float v14, v10, v12

    .line 835
    aput v14, p3, v9

    add-int/2addr v9, v2

    sub-float/2addr v13, v11

    .line 836
    aput v13, p3, v9

    add-int/2addr v9, v2

    add-float/2addr v10, v12

    .line 837
    aput v10, p3, v9

    add-int/2addr v8, v0

    add-int/2addr v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_3b
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3f

    return-void

    :cond_3f
    if-eq v0, v6, :cond_10a

    move v7, v5

    move v8, v7

    :goto_43
    if-ge v7, v1, :cond_105

    shl-int/lit8 v10, v8, 0x2

    add-int v11, v10, v4

    add-int v12, v11, v4

    move v14, v6

    move v15, v8

    move v13, v12

    move v12, v11

    :goto_4f
    if-ge v14, v0, :cond_100

    add-int/2addr v10, v6

    add-int/2addr v11, v6

    add-int/lit8 v12, v12, -0x2

    add-int/lit8 v13, v13, -0x2

    add-int/2addr v15, v6

    .line 855
    aget v16, p2, v10

    aget v17, p2, v13

    add-float v18, v16, v17

    sub-float v16, v16, v17

    .line 857
    aget v17, p2, v11

    aget v19, p2, v12

    sub-float v20, v17, v19

    add-float v17, v17, v19

    add-int/lit8 v19, v10, -0x1

    .line 859
    aget v19, p2, v19

    add-int/lit8 v21, v13, -0x1

    aget v21, p2, v21

    sub-float v22, v19, v21

    add-float v19, v19, v21

    add-int/lit8 v21, v11, -0x1

    .line 861
    aget v21, p2, v21

    add-int/lit8 v23, v12, -0x1

    aget v23, p2, v23

    sub-float v24, v21, v23

    add-float v21, v21, v23

    add-int/lit8 v23, v15, -0x1

    add-float v25, v19, v21

    .line 863
    aput v25, p3, v23

    sub-float v19, v19, v21

    add-float v21, v16, v20

    .line 865
    aput v21, p3, v15

    sub-float v16, v16, v20

    sub-float v20, v22, v17

    add-float v22, v22, v17

    add-float v17, v18, v24

    sub-float v18, v18, v24

    add-int v21, v15, v2

    add-int/lit8 v23, v21, -0x1

    add-int v24, p5, v14

    add-int/lit8 v25, v24, -0x2

    .line 872
    aget v26, p4, v25

    mul-float v26, v26, v20

    add-int/lit8 v24, v24, -0x1

    aget v27, p4, v24

    mul-float v27, v27, v17

    sub-float v26, v26, v27

    aput v26, p3, v23

    .line 873
    aget v23, p4, v25

    mul-float v23, v23, v17

    aget v17, p4, v24

    mul-float v17, v17, v20

    add-float v23, v23, v17

    aput v23, p3, v21

    add-int v21, v21, v2

    add-int/lit8 v17, v21, -0x1

    add-int v20, p7, v14

    add-int/lit8 v23, v20, -0x2

    .line 874
    aget v24, p6, v23

    mul-float v24, v24, v19

    add-int/lit8 v20, v20, -0x1

    aget v25, p6, v20

    mul-float v25, v25, v16

    sub-float v24, v24, v25

    aput v24, p3, v17

    .line 875
    aget v17, p6, v23

    mul-float v17, v17, v16

    aget v16, p6, v20

    mul-float v16, v16, v19

    add-float v17, v17, v16

    aput v17, p3, v21

    add-int v21, v21, v2

    add-int/lit8 v16, v21, -0x1

    add-int v17, p9, v14

    add-int/lit8 v19, v17, -0x2

    .line 876
    aget v20, p8, v19

    mul-float v20, v20, v22

    add-int/lit8 v17, v17, -0x1

    aget v23, p8, v17

    mul-float v23, v23, v18

    sub-float v20, v20, v23

    aput v20, p3, v16

    .line 877
    aget v16, p8, v19

    mul-float v16, v16, v18

    aget v17, p8, v17

    mul-float v17, v17, v22

    add-float v16, v16, v17

    aput v16, p3, v21

    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_4f

    :cond_100
    add-int/2addr v8, v0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_43

    .line 881
    :cond_105
    rem-int/lit8 v6, v0, 0x2

    if-ne v6, v9, :cond_10a

    return-void

    :cond_10a
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v4, v0

    move v7, v0

    :goto_10e
    if-ge v5, v1, :cond_13e

    .line 891
    aget v8, p2, v7

    aget v9, p2, v4

    add-float v10, v8, v9

    sub-float/2addr v9, v8

    add-int/lit8 v8, v7, -0x1

    .line 893
    aget v8, p2, v8

    add-int/lit8 v11, v4, -0x1

    aget v11, p2, v11

    sub-float v12, v8, v11

    add-float/2addr v8, v11

    add-float/2addr v8, v8

    .line 895
    aput v8, p3, v6

    add-int v8, v6, v2

    .line 896
    sget v11, Lcom/jcraft/jorbis/Drft;->sqrt2:F

    sub-float v13, v12, v10

    mul-float/2addr v13, v11

    aput v13, p3, v8

    add-int/2addr v8, v2

    add-float/2addr v9, v9

    .line 897
    aput v9, p3, v8

    add-int/2addr v8, v2

    neg-float v9, v11

    add-float/2addr v12, v10

    mul-float/2addr v9, v12

    .line 898
    aput v9, p3, v8

    add-int/2addr v6, v0

    add-int/2addr v7, v3

    add-int/2addr v4, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_10e

    :cond_13e
    return-void
.end method

.method static dradbg(IIII[F[F[F[F[F[FI)V
    .registers 48

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v6, 0x64

    move v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    const/16 v15, 0x6a

    const/16 v4, 0x67

    if-eq v7, v6, :cond_3b0

    const/16 v6, 0x70

    const/16 v5, 0x74

    const/16 v19, 0x2

    if-eq v7, v4, :cond_2f3

    if-eq v7, v15, :cond_30c

    const/16 v4, 0x80

    const/16 v15, 0x84

    if-eq v7, v6, :cond_137

    if-eq v7, v5, :cond_1a3

    const/16 v5, 0x8b

    if-eq v7, v4, :cond_7b

    if-eq v7, v15, :cond_79

    if-eq v7, v5, :cond_34

    goto/16 :goto_3ed

    :cond_34
    neg-int v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_39
    if-ge v5, v1, :cond_78

    add-int/2addr v3, v0

    add-int/2addr v4, v9

    move v7, v4

    const/4 v6, 0x0

    :goto_3f
    if-ge v6, v2, :cond_75

    move v10, v3

    move v11, v7

    move/from16 v8, v19

    :goto_45
    if-ge v8, v0, :cond_71

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v11, -0x1

    add-int v13, p10, v10

    add-int/lit8 v14, v13, -0x1

    .line 1232
    aget v15, p9, v14

    aget v16, p7, v12

    mul-float v15, v15, v16

    aget v16, p9, v13

    aget v17, p7, v11

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    aput v15, p5, v12

    .line 1233
    aget v14, p9, v14

    aget v15, p7, v11

    mul-float/2addr v14, v15

    aget v13, p9, v13

    aget v12, p7, v12

    mul-float/2addr v13, v12

    add-float/2addr v14, v13

    aput v14, p5, v11

    add-int/lit8 v8, v8, 0x2

    goto :goto_45

    :cond_71
    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_78
    return-void

    :cond_79
    const/4 v4, 0x1

    goto :goto_cb

    :cond_7b
    mul-int v4, v8, v9

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_7f
    if-ge v6, v11, :cond_79

    add-int/2addr v7, v9

    sub-int/2addr v4, v9

    move/from16 v21, v4

    move/from16 v20, v7

    move/from16 v15, v19

    :goto_89
    if-ge v15, v0, :cond_c6

    add-int/lit8 v20, v20, 0x2

    add-int/lit8 v21, v21, 0x2

    move/from16 v23, v20

    move/from16 v24, v21

    const/4 v5, 0x0

    :goto_94
    if-ge v5, v2, :cond_c1

    add-int/lit8 v25, v23, -0x1

    .line 1169
    aget v26, p5, v25

    aget v27, p5, v24

    sub-float v26, v26, v27

    aput v26, p7, v25

    add-int/lit8 v26, v24, -0x1

    .line 1170
    aget v25, p5, v25

    aget v27, p5, v24

    add-float v25, v25, v27

    aput v25, p7, v26

    .line 1171
    aget v25, p5, v23

    aget v27, p5, v26

    add-float v25, v25, v27

    aput v25, p7, v23

    .line 1172
    aget v25, p5, v23

    aget v26, p5, v26

    sub-float v25, v25, v26

    aput v25, p7, v24

    add-int v23, v23, v0

    add-int v24, v24, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    :cond_c1
    add-int/lit8 v15, v15, 0x2

    const/16 v5, 0x8b

    goto :goto_89

    :cond_c6
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x8b

    goto :goto_7f

    :goto_cb
    if-ne v0, v4, :cond_ce

    return-void

    :cond_ce
    const/4 v4, 0x0

    :goto_cf
    if-ge v4, v3, :cond_d8

    .line 1183
    aget v5, p8, v4

    aput v5, p6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    :cond_d8
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_da
    if-ge v4, v1, :cond_ec

    add-int/2addr v5, v9

    move v7, v5

    const/4 v6, 0x0

    :goto_df
    if-ge v6, v2, :cond_e9

    .line 1189
    aget v15, p7, v7

    aput v15, p5, v7

    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_df

    :cond_e9
    add-int/lit8 v4, v4, 0x1

    goto :goto_da

    :cond_ec
    if-le v10, v2, :cond_f2

    const/16 v7, 0x8b

    goto/16 :goto_3ed

    :cond_f2
    neg-int v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_f7
    if-ge v5, v1, :cond_136

    add-int/2addr v3, v0

    add-int/2addr v4, v9

    move v8, v3

    move v7, v4

    move/from16 v6, v19

    :goto_ff
    if-ge v6, v0, :cond_133

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v8, 0x2

    move v11, v7

    const/4 v10, 0x0

    :goto_107
    if-ge v10, v2, :cond_130

    add-int/lit8 v12, v11, -0x1

    add-int v13, p10, v8

    add-int/lit8 v14, v13, -0x1

    .line 1211
    aget v15, p9, v14

    aget v16, p7, v12

    mul-float v15, v15, v16

    aget v16, p9, v13

    aget v17, p7, v11

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    aput v15, p5, v12

    .line 1212
    aget v14, p9, v14

    aget v15, p7, v11

    mul-float/2addr v14, v15

    aget v13, p9, v13

    aget v12, p7, v12

    mul-float/2addr v13, v12

    add-float/2addr v14, v13

    aput v14, p5, v11

    add-int/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_107

    :cond_130
    add-int/lit8 v6, v6, 0x2

    goto :goto_ff

    :cond_133
    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    :cond_136
    return-void

    :cond_137
    mul-int v5, v8, v9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v20, 0x0

    :goto_13d
    if-ge v6, v11, :cond_1a3

    add-int/2addr v7, v9

    sub-int/2addr v5, v9

    shl-int/lit8 v21, v0, 0x1

    add-int v20, v20, v21

    move/from16 v23, v5

    move/from16 v22, v7

    move/from16 v4, v19

    move/from16 v24, v20

    move/from16 v25, v24

    :goto_14f
    if-ge v4, v0, :cond_19c

    add-int/lit8 v22, v22, 0x2

    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v24, v24, 0x2

    add-int/lit8 v25, v25, -0x2

    move/from16 v27, v22

    move/from16 v30, v23

    move/from16 v28, v24

    move/from16 v29, v25

    const/4 v15, 0x0

    :goto_162
    if-ge v15, v2, :cond_197

    add-int/lit8 v31, v27, -0x1

    add-int/lit8 v32, v28, -0x1

    .line 1042
    aget v33, p4, v32

    add-int/lit8 v34, v29, -0x1

    aget v35, p4, v34

    add-float v33, v33, v35

    aput v33, p7, v31

    add-int/lit8 v31, v30, -0x1

    .line 1043
    aget v32, p4, v32

    aget v33, p4, v34

    sub-float v32, v32, v33

    aput v32, p7, v31

    .line 1044
    aget v31, p4, v28

    aget v32, p4, v29

    sub-float v31, v31, v32

    aput v31, p7, v27

    .line 1045
    aget v31, p4, v28

    aget v32, p4, v29

    add-float v31, v31, v32

    aput v31, p7, v30

    add-int v27, v27, v0

    add-int v30, v30, v0

    add-int v28, v28, v12

    add-int v29, v29, v12

    add-int/lit8 v15, v15, 0x1

    goto :goto_162

    :cond_197
    add-int/lit8 v4, v4, 0x2

    const/16 v15, 0x84

    goto :goto_14f

    :cond_19c
    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x80

    const/16 v15, 0x84

    goto :goto_13d

    :cond_1a3
    mul-int v4, v8, v3

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v20, v4

    const/4 v7, 0x1

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_1b0
    if-ge v7, v11, :cond_256

    add-int/2addr v15, v3

    sub-int v20, v20, v3

    mul-float v23, v13, v6

    mul-float v24, v14, v22

    sub-float v23, v23, v24

    mul-float v22, v22, v13

    mul-float/2addr v6, v14

    add-float v22, v22, v6

    move/from16 v27, v3

    move/from16 v29, v5

    move/from16 v24, v15

    move/from16 v28, v20

    const/4 v6, 0x0

    const/16 v25, 0x0

    :goto_1cb
    if-ge v6, v3, :cond_1f4

    add-int/lit8 v30, v24, 0x1

    add-int/lit8 v31, v25, 0x1

    .line 1072
    aget v25, p8, v25

    add-int/lit8 v32, v27, 0x1

    aget v27, p8, v27

    mul-float v27, v27, v23

    add-float v25, v25, v27

    aput v25, p6, v24

    add-int/lit8 v24, v28, 0x1

    add-int/lit8 v25, v29, 0x1

    .line 1073
    aget v27, p8, v29

    mul-float v27, v27, v22

    aput v27, p6, v28

    add-int/lit8 v6, v6, 0x1

    move/from16 v28, v24

    move/from16 v29, v25

    move/from16 v24, v30

    move/from16 v25, v31

    move/from16 v27, v32

    goto :goto_1cb

    :cond_1f4
    sub-int v6, v4, v3

    move/from16 v25, v3

    move/from16 v24, v4

    move/from16 v4, v19

    move/from16 v28, v22

    move/from16 v27, v23

    :goto_200
    if-ge v4, v11, :cond_24c

    add-int v25, v25, v3

    sub-int/2addr v6, v3

    mul-float v29, v23, v27

    mul-float v30, v22, v28

    sub-float v29, v29, v30

    mul-float v28, v28, v23

    mul-float v27, v27, v22

    add-float v28, v28, v27

    move/from16 v27, v5

    move/from16 v33, v6

    move/from16 v30, v15

    move/from16 v32, v20

    move/from16 v31, v25

    const/4 v5, 0x0

    :goto_21c
    if-ge v5, v3, :cond_245

    add-int/lit8 v34, v30, 0x1

    .line 1093
    aget v35, p6, v30

    add-int/lit8 v36, v31, 0x1

    aget v31, p8, v31

    mul-float v31, v31, v29

    add-float v35, v35, v31

    aput v35, p6, v30

    add-int/lit8 v30, v32, 0x1

    .line 1094
    aget v31, p6, v32

    add-int/lit8 v35, v33, 0x1

    aget v33, p8, v33

    mul-float v33, v33, v28

    add-float v31, v31, v33

    aput v31, p6, v32

    add-int/lit8 v5, v5, 0x1

    move/from16 v32, v30

    move/from16 v30, v34

    move/from16 v33, v35

    move/from16 v31, v36

    goto :goto_21c

    :cond_245
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v27

    move/from16 v27, v29

    goto :goto_200

    :cond_24c
    move/from16 v27, v5

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v23

    move/from16 v4, v24

    goto/16 :goto_1b0

    :cond_256
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_258
    if-ge v4, v11, :cond_270

    add-int/2addr v5, v3

    move v7, v5

    const/4 v6, 0x0

    :goto_25d
    if-ge v6, v3, :cond_26d

    .line 1104
    aget v15, p8, v6

    add-int/lit8 v20, v7, 0x1

    aget v7, p8, v7

    add-float/2addr v15, v7

    aput v15, p8, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v20

    goto :goto_25d

    :cond_26d
    add-int/lit8 v4, v4, 0x1

    goto :goto_258

    :cond_270
    mul-int v4, v8, v9

    move v7, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_275
    if-ge v5, v11, :cond_29a

    add-int/2addr v6, v9

    sub-int/2addr v7, v9

    move/from16 v20, v6

    move/from16 v22, v7

    const/4 v15, 0x0

    :goto_27e
    if-ge v15, v2, :cond_297

    .line 1115
    aget v23, p5, v20

    aget v24, p5, v22

    sub-float v23, v23, v24

    aput v23, p7, v20

    .line 1116
    aget v23, p5, v20

    aget v24, p5, v22

    add-float v23, v23, v24

    aput v23, p7, v22

    add-int v20, v20, v0

    add-int v22, v22, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_27e

    :cond_297
    add-int/lit8 v5, v5, 0x1

    goto :goto_275

    :cond_29a
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2a1

    :cond_29d
    const/16 v7, 0x84

    goto/16 :goto_3ed

    :cond_2a1
    if-ge v10, v2, :cond_2a7

    const/16 v7, 0x80

    goto/16 :goto_3ed

    :cond_2a7
    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_2a9
    if-ge v5, v11, :cond_29d

    add-int/2addr v6, v9

    sub-int/2addr v4, v9

    move/from16 v18, v4

    move v15, v6

    const/4 v7, 0x0

    :goto_2b1
    if-ge v7, v2, :cond_2ee

    move/from16 v20, v15

    move/from16 v21, v18

    move/from16 v3, v19

    :goto_2b9
    if-ge v3, v0, :cond_2e6

    add-int/lit8 v20, v20, 0x2

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v22, v20, -0x1

    .line 1144
    aget v23, p5, v22

    aget v24, p5, v21

    sub-float v23, v23, v24

    aput v23, p7, v22

    add-int/lit8 v23, v21, -0x1

    .line 1145
    aget v22, p5, v22

    aget v24, p5, v21

    add-float v22, v22, v24

    aput v22, p7, v23

    .line 1146
    aget v22, p5, v20

    aget v24, p5, v23

    add-float v22, v22, v24

    aput v22, p7, v20

    .line 1147
    aget v22, p5, v20

    aget v23, p5, v23

    sub-float v22, v22, v23

    aput v22, p7, v21

    add-int/lit8 v3, v3, 0x2

    goto :goto_2b9

    :cond_2e6
    add-int/2addr v15, v0

    add-int v18, v18, v0

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p3

    goto :goto_2b1

    :cond_2ee
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p3

    goto :goto_2a9

    :cond_2f3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2f5
    if-ge v3, v0, :cond_30c

    move v15, v4

    move/from16 v20, v15

    const/4 v7, 0x0

    :goto_2fb
    if-ge v7, v2, :cond_307

    .line 953
    aget v21, p4, v20

    aput v21, p7, v15

    add-int/2addr v15, v0

    add-int v20, v20, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_2fb

    :cond_307
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f5

    :cond_30c
    mul-int v3, v8, v9

    shl-int/lit8 v4, v0, 0x1

    move/from16 v20, v3

    move/from16 v21, v4

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_316
    if-ge v7, v11, :cond_342

    add-int/2addr v15, v9

    sub-int v20, v20, v9

    move/from16 v23, v15

    move/from16 v25, v20

    move/from16 v24, v21

    const/4 v5, 0x0

    :goto_322
    if-ge v5, v2, :cond_33b

    add-int/lit8 v26, v24, -0x1

    .line 970
    aget v26, p4, v26

    add-float v26, v26, v26

    aput v26, p7, v23

    .line 971
    aget v26, p4, v24

    add-float v26, v26, v26

    aput v26, p7, v25

    add-int v23, v23, v0

    add-int v25, v25, v0

    add-int v24, v24, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_322

    :cond_33b
    add-int v21, v21, v4

    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x74

    goto :goto_316

    :cond_342
    const/4 v5, 0x1

    if-ne v0, v5, :cond_349

    :cond_345
    const/16 v7, 0x74

    goto/16 :goto_3ed

    :cond_349
    if-ge v10, v2, :cond_34e

    move v7, v6

    goto/16 :goto_3ed

    :cond_34e
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_351
    if-ge v5, v11, :cond_345

    add-int/2addr v6, v9

    sub-int/2addr v3, v9

    add-int/2addr v7, v4

    move/from16 v20, v3

    move/from16 v18, v6

    move/from16 v21, v7

    const/4 v15, 0x0

    :goto_35d
    if-ge v15, v2, :cond_3ab

    move/from16 v23, v3

    move/from16 v24, v18

    move/from16 v3, v19

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v27, v26

    :goto_36b
    if-ge v3, v0, :cond_3a0

    add-int/lit8 v24, v24, 0x2

    add-int/lit8 v25, v25, 0x2

    add-int/lit8 v26, v26, 0x2

    add-int/lit8 v27, v27, -0x2

    add-int/lit8 v28, v24, -0x1

    add-int/lit8 v29, v26, -0x1

    .line 1008
    aget v30, p4, v29

    add-int/lit8 v31, v27, -0x1

    aget v32, p4, v31

    add-float v30, v30, v32

    aput v30, p7, v28

    add-int/lit8 v28, v25, -0x1

    .line 1009
    aget v29, p4, v29

    aget v30, p4, v31

    sub-float v29, v29, v30

    aput v29, p7, v28

    .line 1010
    aget v28, p4, v26

    aget v29, p4, v27

    sub-float v28, v28, v29

    aput v28, p7, v24

    .line 1011
    aget v28, p4, v26

    aget v29, p4, v27

    add-float v28, v28, v29

    aput v28, p7, v25

    add-int/lit8 v3, v3, 0x2

    goto :goto_36b

    :cond_3a0
    add-int v18, v18, v0

    add-int v20, v20, v0

    add-int v21, v21, v12

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v23

    goto :goto_35d

    :cond_3ab
    move/from16 v23, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_351

    :cond_3b0
    mul-int v12, v1, v0

    mul-int v9, v2, v0

    .line 922
    sget v3, Lcom/jcraft/jorbis/Drft;->tpi:F

    int-to-float v5, v1

    div-float/2addr v3, v5

    float-to-double v5, v3

    .line 923
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v13, v7

    .line 924
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v14, v5

    add-int/lit8 v3, v0, -0x1

    const/4 v5, 0x1

    ushr-int/lit8 v10, v3, 0x1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v11, v3, 0x1

    if-ge v0, v2, :cond_3d1

    move v8, v1

    move v7, v4

    goto :goto_3ed

    :cond_3d1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3d4
    if-ge v3, v2, :cond_3eb

    move v8, v4

    move/from16 v18, v6

    const/4 v7, 0x0

    :goto_3da
    if-ge v7, v0, :cond_3e6

    .line 938
    aget v19, p4, v18

    aput v19, p7, v8

    add-int/2addr v8, v5

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3da

    :cond_3e6
    add-int/2addr v4, v0

    add-int/2addr v6, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d4

    :cond_3eb
    move v8, v1

    move v7, v15

    :goto_3ed
    move/from16 v3, p3

    const/16 v6, 0x64

    goto/16 :goto_12
.end method

.method static dradf2(II[F[F[FI)V
    .registers 27

    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    shl-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    move v7, v2

    move v5, v4

    move v6, v5

    :goto_c
    const/4 v8, 0x1

    if-ge v5, v1, :cond_26

    shl-int/lit8 v9, v6, 0x1

    .line 162
    aget v10, p2, v6

    aget v11, p2, v7

    add-float/2addr v10, v11

    aput v10, p3, v9

    add-int/2addr v9, v3

    sub-int/2addr v9, v8

    .line 163
    aget v8, p2, v6

    aget v10, p2, v7

    sub-float/2addr v8, v10

    aput v8, p3, v9

    add-int/2addr v6, v0

    add-int/2addr v7, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_26
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2a

    return-void

    :cond_2a
    if-eq v0, v5, :cond_86

    move v7, v2

    move v6, v4

    move v9, v6

    :goto_2f
    if-ge v6, v1, :cond_81

    shl-int/lit8 v10, v9, 0x1

    add-int/2addr v10, v3

    add-int v11, v9, v9

    move v12, v5

    move v13, v7

    move v14, v9

    :goto_39
    if-ge v12, v0, :cond_7c

    add-int/2addr v13, v5

    add-int/lit8 v10, v10, -0x2

    add-int/2addr v14, v5

    add-int/2addr v11, v5

    add-int v15, p5, v12

    add-int/lit8 v16, v15, -0x2

    .line 184
    aget v16, p4, v16

    add-int/lit8 v17, v13, -0x1

    aget v17, p2, v17

    mul-float v18, v16, v17

    sub-int/2addr v15, v8

    aget v15, p4, v15

    aget v19, p2, v13

    mul-float v20, v15, v19

    add-float v18, v18, v20

    mul-float v16, v16, v19

    mul-float v15, v15, v17

    sub-float v16, v16, v15

    .line 186
    aget v15, p2, v14

    add-float v15, v15, v16

    aput v15, p3, v11

    .line 187
    aget v15, p2, v14

    sub-float v16, v16, v15

    aput v16, p3, v10

    add-int/lit8 v15, v11, -0x1

    add-int/lit8 v16, v14, -0x1

    .line 188
    aget v17, p2, v16

    add-float v17, v17, v18

    aput v17, p3, v15

    add-int/lit8 v15, v10, -0x1

    .line 189
    aget v16, p2, v16

    sub-float v16, v16, v18

    aput v16, p3, v15

    add-int/lit8 v12, v12, 0x2

    goto :goto_39

    :cond_7c
    add-int/2addr v9, v0

    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 194
    :cond_81
    rem-int/lit8 v5, v0, 0x2

    if-ne v5, v8, :cond_86

    return-void

    :cond_86
    add-int/lit8 v5, v0, -0x1

    add-int/2addr v2, v5

    move v6, v0

    :goto_8a
    if-ge v4, v1, :cond_9d

    .line 201
    aget v7, p2, v2

    neg-float v7, v7

    aput v7, p3, v6

    add-int/lit8 v7, v6, -0x1

    .line 202
    aget v8, p2, v5

    aput v8, p3, v7

    add-int/2addr v6, v3

    add-int/2addr v2, v0

    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_9d
    return-void
.end method

.method static dradf4(II[F[F[FI[FI[FI)V
    .registers 33

    move/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, v0

    shl-int/lit8 v3, v2, 0x1

    add-int v4, v2, v3

    const/4 v5, 0x0

    move v7, v2

    move v9, v3

    move v6, v5

    move v8, v6

    :goto_f
    if-ge v6, v1, :cond_43

    .line 221
    aget v10, p2, v7

    aget v11, p2, v4

    add-float/2addr v10, v11

    .line 222
    aget v11, p2, v8

    aget v12, p2, v9

    add-float/2addr v11, v12

    shl-int/lit8 v12, v8, 0x2

    add-float v13, v10, v11

    .line 224
    aput v13, p3, v12

    shl-int/lit8 v13, v0, 0x2

    add-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x1

    sub-float/2addr v11, v10

    .line 225
    aput v11, p3, v13

    shl-int/lit8 v10, v0, 0x1

    add-int/2addr v12, v10

    add-int/lit8 v10, v12, -0x1

    .line 226
    aget v11, p2, v8

    aget v13, p2, v9

    sub-float/2addr v11, v13

    aput v11, p3, v10

    .line 227
    aget v10, p2, v4

    aget v11, p2, v7

    sub-float/2addr v10, v11

    aput v10, p3, v12

    add-int/2addr v7, v0

    add-int/2addr v4, v0

    add-int/2addr v8, v0

    add-int/2addr v9, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_43
    const/4 v4, 0x2

    if-ge v0, v4, :cond_47

    return-void

    :cond_47
    if-eq v0, v4, :cond_102

    move v6, v5

    move v7, v6

    :goto_4b
    if-ge v6, v1, :cond_fd

    shl-int/lit8 v8, v7, 0x2

    shl-int/lit8 v9, v0, 0x1

    add-int v10, v9, v8

    move v11, v4

    move v12, v7

    :goto_55
    if-ge v11, v0, :cond_f8

    add-int/2addr v12, v4

    add-int/2addr v8, v4

    add-int/lit8 v10, v10, -0x2

    add-int v13, v12, v2

    add-int v14, p5, v11

    add-int/lit8 v15, v14, -0x2

    .line 249
    aget v15, p4, v15

    add-int/lit8 v16, v13, -0x1

    aget v16, p2, v16

    mul-float v17, v15, v16

    add-int/lit8 v14, v14, -0x1

    aget v14, p4, v14

    aget v18, p2, v13

    mul-float v19, v14, v18

    add-float v17, v17, v19

    mul-float v15, v15, v18

    mul-float v14, v14, v16

    sub-float/2addr v15, v14

    add-int/2addr v13, v2

    add-int v14, p7, v11

    add-int/lit8 v16, v14, -0x2

    .line 252
    aget v16, p6, v16

    add-int/lit8 v18, v13, -0x1

    aget v18, p2, v18

    mul-float v19, v16, v18

    add-int/lit8 v14, v14, -0x1

    aget v14, p6, v14

    aget v20, p2, v13

    mul-float v21, v14, v20

    add-float v19, v19, v21

    mul-float v16, v16, v20

    mul-float v14, v14, v18

    sub-float v16, v16, v14

    add-int/2addr v13, v2

    add-int v14, p9, v11

    add-int/lit8 v18, v14, -0x2

    .line 255
    aget v18, p8, v18

    add-int/lit8 v20, v13, -0x1

    aget v20, p2, v20

    mul-float v21, v18, v20

    add-int/lit8 v14, v14, -0x1

    aget v14, p8, v14

    aget v13, p2, v13

    mul-float v22, v14, v13

    add-float v21, v21, v22

    mul-float v18, v18, v13

    mul-float v14, v14, v20

    sub-float v18, v18, v14

    add-float v13, v17, v21

    sub-float v21, v21, v17

    add-float v14, v15, v18

    sub-float v15, v15, v18

    .line 263
    aget v17, p2, v12

    add-float v18, v17, v16

    sub-float v17, v17, v16

    add-int/lit8 v16, v12, -0x1

    .line 265
    aget v16, p2, v16

    add-float v20, v16, v19

    sub-float v16, v16, v19

    add-int/lit8 v19, v8, -0x1

    add-float v22, v13, v20

    .line 268
    aput v22, p3, v19

    add-float v19, v14, v18

    .line 269
    aput v19, p3, v8

    add-int/lit8 v19, v10, -0x1

    sub-float v22, v16, v15

    .line 271
    aput v22, p3, v19

    sub-float v19, v21, v17

    .line 272
    aput v19, p3, v10

    add-int v19, v8, v9

    add-int/lit8 v22, v19, -0x1

    add-float v15, v15, v16

    .line 274
    aput v15, p3, v22

    add-float v21, v21, v17

    .line 275
    aput v21, p3, v19

    add-int v15, v10, v9

    add-int/lit8 v16, v15, -0x1

    sub-float v20, v20, v13

    .line 277
    aput v20, p3, v16

    sub-float v14, v14, v18

    .line 278
    aput v14, p3, v15

    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_55

    :cond_f8
    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4b

    :cond_fd
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_102

    return-void

    :cond_102
    add-int v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    shl-int/lit8 v6, v0, 0x2

    shl-int/lit8 v7, v0, 0x1

    move v8, v0

    move v9, v8

    :goto_10d
    if-ge v5, v1, :cond_141

    .line 293
    sget v10, Lcom/jcraft/jorbis/Drft;->hsqt2:F

    neg-float v11, v10

    aget v12, p2, v4

    aget v13, p2, v3

    add-float v14, v12, v13

    mul-float/2addr v11, v14

    sub-float/2addr v12, v13

    mul-float/2addr v10, v12

    add-int/lit8 v12, v8, -0x1

    add-int/lit8 v13, v9, -0x1

    .line 296
    aget v14, p2, v13

    add-float/2addr v14, v10

    aput v14, p3, v12

    add-int v12, v8, v7

    add-int/lit8 v14, v12, -0x1

    .line 297
    aget v13, p2, v13

    sub-float/2addr v13, v10

    aput v13, p3, v14

    add-int v10, v4, v2

    .line 299
    aget v13, p2, v10

    sub-float v13, v11, v13

    aput v13, p3, v8

    .line 300
    aget v10, p2, v10

    add-float/2addr v11, v10

    aput v11, p3, v12

    add-int/2addr v4, v0

    add-int/2addr v3, v0

    add-int/2addr v8, v6

    add-int/2addr v9, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_10d

    :cond_141
    return-void
.end method

.method static dradfg(IIII[F[F[F[F[F[FI)V
    .registers 11

    .line 318
    sget p0, Lcom/jcraft/jorbis/Drft;->tpi:F

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 319
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 320
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    :goto_b
    nop

    goto :goto_b
.end method

.method static drftb1(I[F[F[FI[I)V
    .registers 32

    move/from16 v0, p0

    const/4 v1, 0x1

    .line 1249
    aget v2, p5, v1

    move/from16 v16, v1

    move/from16 v17, v16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_f
    if-ge v4, v2, :cond_183

    const/16 v15, 0x64

    move v14, v6

    move v13, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move v6, v15

    :goto_1a
    const/16 v7, 0x67

    const/16 v12, 0x73

    if-eq v6, v15, :cond_116

    const/16 v8, 0x6a

    if-eq v6, v7, :cond_dd

    const/16 v7, 0x6d

    if-eq v6, v8, :cond_91

    if-eq v6, v7, :cond_34

    if-eq v6, v12, :cond_30

    move/from16 v24, v15

    goto/16 :goto_17f

    :cond_30
    move/from16 v21, v14

    move v14, v13

    goto :goto_7e

    :cond_34
    if-eqz v5, :cond_57

    add-int v6, p4, v17

    add-int/lit8 v20, v6, -0x1

    move v6, v13

    move v7, v14

    move/from16 v8, v16

    move/from16 v9, v18

    move-object/from16 v10, p2

    move-object/from16 v11, p2

    move-object/from16 v12, p2

    move v15, v13

    move-object/from16 v13, p1

    move/from16 v21, v14

    move-object/from16 v14, p1

    move/from16 v22, v15

    move-object/from16 v15, p3

    move/from16 v16, v20

    .line 1309
    invoke-static/range {v6 .. v16}, Lcom/jcraft/jorbis/Drft;->dradbg(IIII[F[F[F[F[F[FI)V

    goto :goto_78

    :cond_57
    move/from16 v22, v13

    move/from16 v21, v14

    add-int v6, p4, v17

    add-int/lit8 v20, v6, -0x1

    move/from16 v6, v22

    move/from16 v7, v21

    move/from16 v8, v16

    move/from16 v9, v18

    move-object/from16 v10, p1

    move-object/from16 v11, p1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v20

    .line 1311
    invoke-static/range {v6 .. v16}, Lcom/jcraft/jorbis/Drft;->dradbg(IIII[F[F[F[F[F[FI)V

    :goto_78
    move/from16 v14, v22

    if-ne v14, v1, :cond_7e

    rsub-int/lit8 v5, v5, 0x1

    :cond_7e
    :goto_7e
    move/from16 v13, v21

    add-int/lit8 v6, v13, -0x1

    mul-int/2addr v6, v14

    add-int v17, v17, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v13

    move v7, v14

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v16, v9

    goto/16 :goto_f

    :cond_91
    move/from16 v25, v14

    move v14, v13

    move/from16 v13, v25

    const/4 v6, 0x3

    if-eq v13, v6, :cond_a3

    move v6, v7

    move/from16 v24, v15

    move/from16 v25, v14

    move v14, v13

    move/from16 v13, v25

    goto/16 :goto_17f

    :cond_a3
    add-int v6, v17, v14

    if-eqz v5, :cond_c3

    add-int v7, p4, v17

    add-int/lit8 v11, v7, -0x1

    add-int v6, p4, v6

    add-int/lit8 v20, v6, -0x1

    move v6, v14

    move/from16 v7, v16

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v21, v12

    move-object/from16 v12, p3

    move v3, v13

    move/from16 v13, v20

    .line 1301
    invoke-static/range {v6 .. v13}, Lcom/jcraft/jorbis/Drft;->dradb3(II[F[F[FI[FI)V

    goto :goto_10e

    :cond_c3
    move/from16 v21, v12

    move v3, v13

    add-int v7, p4, v17

    add-int/lit8 v11, v7, -0x1

    add-int v6, p4, v6

    add-int/lit8 v13, v6, -0x1

    move v6, v14

    move/from16 v7, v16

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p3

    .line 1303
    invoke-static/range {v6 .. v13}, Lcom/jcraft/jorbis/Drft;->dradb3(II[F[F[FI[FI)V

    goto :goto_10e

    :cond_dd
    move/from16 v21, v12

    move v3, v14

    move v14, v13

    const/4 v6, 0x2

    if-eq v3, v6, :cond_eb

    move v6, v8

    move v13, v14

    move/from16 v24, v15

    :goto_e8
    move v14, v3

    goto/16 :goto_17f

    :cond_eb
    if-eqz v5, :cond_fe

    add-int v6, p4, v17

    add-int/lit8 v11, v6, -0x1

    move v6, v14

    move/from16 v7, v16

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 1286
    invoke-static/range {v6 .. v11}, Lcom/jcraft/jorbis/Drft;->dradb2(II[F[F[FI)V

    goto :goto_10e

    :cond_fe
    add-int v6, p4, v17

    add-int/lit8 v11, v6, -0x1

    move v6, v14

    move/from16 v7, v16

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1288
    invoke-static/range {v6 .. v11}, Lcom/jcraft/jorbis/Drft;->dradb2(II[F[F[FI)V

    :goto_10e
    rsub-int/lit8 v5, v5, 0x1

    move v13, v14

    move/from16 v24, v15

    move/from16 v6, v21

    goto :goto_e8

    :cond_116
    move/from16 v21, v12

    add-int/lit8 v3, v4, 0x2

    .line 1259
    aget v3, p5, v3

    mul-int v18, v3, v16

    .line 1261
    div-int v19, v0, v18

    mul-int v20, v19, v16

    const/4 v6, 0x4

    if-eq v3, v6, :cond_130

    move v14, v3

    move v6, v7

    move/from16 v24, v15

    move/from16 v13, v19

    :goto_12b
    move/from16 v19, v18

    move/from16 v18, v20

    goto :goto_17f

    :cond_130
    add-int v6, v17, v19

    add-int v7, v6, v19

    if-eqz v5, :cond_158

    add-int v8, p4, v17

    add-int/lit8 v11, v8, -0x1

    add-int v6, p4, v6

    add-int/lit8 v13, v6, -0x1

    add-int v6, p4, v7

    add-int/lit8 v23, v6, -0x1

    move/from16 v6, v19

    move/from16 v7, v16

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v12, p3

    move-object/from16 v14, p3

    move/from16 v24, v15

    move/from16 v15, v23

    .line 1271
    invoke-static/range {v6 .. v15}, Lcom/jcraft/jorbis/Drft;->dradb4(II[F[F[FI[FI[FI)V

    goto :goto_177

    :cond_158
    move/from16 v24, v15

    add-int v8, p4, v17

    add-int/lit8 v11, v8, -0x1

    add-int v6, p4, v6

    add-int/lit8 v13, v6, -0x1

    add-int v6, p4, v7

    add-int/lit8 v15, v6, -0x1

    move/from16 v6, v19

    move/from16 v7, v16

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p3

    move-object/from16 v14, p3

    .line 1274
    invoke-static/range {v6 .. v15}, Lcom/jcraft/jorbis/Drft;->dradb4(II[F[F[FI[FI[FI)V

    :goto_177
    rsub-int/lit8 v5, v5, 0x1

    move v14, v3

    move/from16 v13, v19

    move/from16 v6, v21

    goto :goto_12b

    :goto_17f
    move/from16 v15, v24

    goto/16 :goto_1a

    :cond_183
    if-nez v5, :cond_186

    return-void

    :cond_186
    const/4 v3, 0x0

    :goto_187
    if-ge v3, v0, :cond_190

    .line 1325
    aget v1, p2, v3

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_187

    :cond_190
    return-void
.end method

.method static drftf1(I[F[F[F[I)V
    .registers 29

    move/from16 v0, p0

    const/4 v1, 0x1

    .line 631
    aget v2, p4, v1

    const/4 v3, 0x0

    move v6, v0

    move v7, v6

    move v5, v1

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_f4

    sub-int v8, v2, v4

    add-int/2addr v8, v1

    .line 638
    aget v8, p4, v8

    .line 639
    div-int v20, v6, v8

    .line 640
    div-int v6, v0, v6

    mul-int v21, v6, v20

    add-int/lit8 v9, v8, -0x1

    mul-int/2addr v9, v6

    sub-int/2addr v7, v9

    rsub-int/lit8 v5, v5, 0x1

    const/16 v15, 0x64

    move v9, v15

    :goto_20
    const/16 v14, 0x6e

    if-eq v9, v15, :cond_b2

    const/16 v13, 0x6d

    if-eq v9, v13, :cond_94

    if-eq v9, v14, :cond_ac

    packed-switch v9, :pswitch_data_102

    move/from16 v23, v15

    goto/16 :goto_f0

    :pswitch_31
    move/from16 v17, v13

    move/from16 v22, v14

    goto :goto_4a

    :pswitch_36
    add-int/lit8 v16, v7, -0x1

    move v9, v6

    move/from16 v10, v20

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move/from16 v17, v13

    move-object/from16 v13, p3

    move/from16 v22, v14

    move/from16 v14, v16

    .line 675
    invoke-static/range {v9 .. v14}, Lcom/jcraft/jorbis/Drft;->dradf2(II[F[F[FI)V

    :goto_4a
    if-ne v6, v1, :cond_4e

    rsub-int/lit8 v5, v5, 0x1

    :cond_4e
    if-eqz v5, :cond_56

    move/from16 v23, v15

    move/from16 v9, v17

    goto/16 :goto_f0

    :cond_56
    add-int/lit8 v19, v7, -0x1

    move v9, v6

    move v10, v8

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, p1

    move-object/from16 v14, p1

    move/from16 v23, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    .line 683
    invoke-static/range {v9 .. v19}, Lcom/jcraft/jorbis/Drft;->dradfg(IIII[F[F[F[F[F[FI)V

    move v5, v1

    :goto_70
    move/from16 v9, v22

    goto/16 :goto_f0

    :pswitch_74
    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7f

    const/16 v9, 0x68

    goto/16 :goto_f0

    :cond_7f
    if-eqz v5, :cond_85

    const/16 v9, 0x67

    goto/16 :goto_f0

    :cond_85
    add-int/lit8 v14, v7, -0x1

    move v9, v6

    move/from16 v10, v20

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 671
    invoke-static/range {v9 .. v14}, Lcom/jcraft/jorbis/Drft;->dradf2(II[F[F[FI)V

    goto :goto_70

    :cond_94
    add-int/lit8 v19, v7, -0x1

    move v9, v6

    move v10, v8

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, p2

    move-object/from16 v14, p2

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    move-object/from16 v17, p1

    move-object/from16 v18, p3

    .line 688
    invoke-static/range {v9 .. v19}, Lcom/jcraft/jorbis/Drft;->dradfg(IIII[F[F[F[F[F[FI)V

    move v5, v3

    :cond_ac
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v20

    goto/16 :goto_a

    :cond_b2
    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v9, 0x4

    if-eq v8, v9, :cond_bc

    const/16 v9, 0x66

    goto :goto_f0

    :cond_bc
    add-int v9, v7, v6

    add-int v10, v9, v6

    if-eqz v5, :cond_d9

    add-int/lit8 v14, v7, -0x1

    add-int/lit8 v16, v9, -0x1

    add-int/lit8 v18, v10, -0x1

    move v9, v6

    move/from16 v10, v20

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v15, p3

    move-object/from16 v17, p3

    .line 657
    invoke-static/range {v9 .. v18}, Lcom/jcraft/jorbis/Drft;->dradf4(II[F[F[FI[FI[FI)V

    goto :goto_70

    :cond_d9
    add-int/lit8 v14, v7, -0x1

    add-int/lit8 v16, v9, -0x1

    add-int/lit8 v18, v10, -0x1

    move v9, v6

    move/from16 v10, v20

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p3

    move-object/from16 v17, p3

    .line 659
    invoke-static/range {v9 .. v18}, Lcom/jcraft/jorbis/Drft;->dradf4(II[F[F[FI[FI[FI)V

    goto :goto_70

    :goto_f0
    move/from16 v15, v23

    goto/16 :goto_20

    :cond_f4
    if-ne v5, v1, :cond_f7

    return-void

    :cond_f7
    :goto_f7
    if-ge v3, v0, :cond_100

    .line 699
    aget v1, p2, v3

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f7

    :cond_100
    return-void

    nop

    :pswitch_data_102
    .packed-switch 0x66
        :pswitch_74
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method static drfti1(I[FI[I)V
    .registers 25

    move/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x65

    move v6, v0

    move v5, v1

    move v7, v5

    :goto_9
    move v4, v3

    :goto_a
    const/16 v8, 0x68

    const/16 v9, 0x6b

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v4, v3, :cond_17

    if-eq v4, v8, :cond_23

    if-eq v4, v9, :cond_4c

    goto :goto_a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x4

    if-ge v2, v4, :cond_21

    .line 77
    sget-object v4, Lcom/jcraft/jorbis/Drft;->ntryh:[I

    aget v5, v4, v2

    goto :goto_23

    :cond_21
    add-int/lit8 v5, v5, 0x2

    .line 81
    :cond_23
    :goto_23
    div-int v4, v6, v5

    mul-int v12, v5, v4

    sub-int v12, v6, v12

    if-eqz v12, :cond_2c

    goto :goto_9

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v7, 0x1

    .line 88
    aput v5, p3, v6

    if-eq v5, v10, :cond_37

    :goto_34
    move v6, v4

    move v4, v9

    goto :goto_a

    :cond_37
    if-ne v7, v11, :cond_3a

    goto :goto_34

    :cond_3a
    move v6, v11

    :goto_3b
    if-ge v6, v7, :cond_49

    sub-int v9, v7, v6

    add-int/2addr v9, v11

    add-int/lit8 v12, v9, 0x1

    .line 101
    aget v9, p3, v9

    aput v9, p3, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 103
    :cond_49
    aput v10, p3, v10

    move v6, v4

    :cond_4c
    if-eq v6, v11, :cond_50

    move v4, v8

    goto :goto_a

    .line 109
    :cond_50
    aput v0, p3, v1

    .line 110
    aput v7, p3, v11

    .line 111
    sget v2, Lcom/jcraft/jorbis/Drft;->tpi:F

    int-to-float v3, v0

    div-float/2addr v2, v3

    sub-int/2addr v7, v11

    if-nez v7, :cond_5c

    return-void

    :cond_5c
    move v3, v1

    move v5, v3

    move v4, v11

    :goto_5f
    if-ge v3, v7, :cond_b7

    add-int/lit8 v6, v3, 0x2

    .line 120
    aget v6, p3, v6

    mul-int v8, v4, v6

    .line 123
    div-int v9, v0, v8

    sub-int/2addr v6, v11

    move v12, v1

    move v13, v12

    :goto_6c
    if-ge v12, v6, :cond_af

    add-int/2addr v13, v4

    int-to-float v14, v13

    mul-float/2addr v14, v2

    const/4 v15, 0x0

    move/from16 v16, v5

    move v1, v10

    :goto_75
    if-ge v1, v9, :cond_a3

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v15, v15, v17

    mul-float v10, v15, v14

    add-int/lit8 v18, v16, 0x1

    add-int v16, p2, v16

    move/from16 v19, v12

    float-to-double v11, v10

    move/from16 v20, v6

    move v10, v7

    .line 134
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, p1, v16

    add-int/lit8 v16, v18, 0x1

    add-int v6, p2, v18

    .line 135
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v7, v11

    aput v7, p1, v6

    add-int/lit8 v1, v1, 0x2

    move v7, v10

    move/from16 v12, v19

    move/from16 v6, v20

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_75

    :cond_a3
    move/from16 v20, v6

    move v10, v7

    move/from16 v19, v12

    add-int/2addr v5, v9

    add-int/lit8 v12, v19, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_6c

    :cond_af
    move v10, v7

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_5f

    :cond_b7
    return-void
.end method

.method static fdrffti(I[F[I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return-void

    .line 149
    :cond_4
    invoke-static {p0, p1, p0, p2}, Lcom/jcraft/jorbis/Drft;->drfti1(I[FI[I)V

    return-void
.end method


# virtual methods
.method backward([F)V
    .registers 8

    .line 35
    iget v4, p0, Lcom/jcraft/jorbis/Drft;->n:I

    const/4 v0, 0x1

    if-ne v4, v0, :cond_6

    return-void

    .line 37
    :cond_6
    iget-object v3, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    iget-object v5, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    move v0, v4

    move-object v1, p1

    move-object v2, v3

    invoke-static/range {v0 .. v5}, Lcom/jcraft/jorbis/Drft;->drftb1(I[F[F[FI[I)V

    return-void
.end method

.method clear()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 49
    iput-object v1, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    if-eqz v0, :cond_d

    .line 51
    iput-object v1, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    :cond_d
    return-void
.end method

.method init(I)V
    .registers 4

    .line 41
    iput p1, p0, Lcom/jcraft/jorbis/Drft;->n:I

    mul-int/lit8 v0, p1, 0x3

    .line 42
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcraft/jorbis/Drft;->trigcache:[F

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 43
    iput-object v1, p0, Lcom/jcraft/jorbis/Drft;->splitcache:[I

    .line 44
    invoke-static {p1, v0, v1}, Lcom/jcraft/jorbis/Drft;->fdrffti(I[F[I)V

    return-void
.end method
