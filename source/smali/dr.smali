###### Class defpackage.dr (dr)
.class public Ldr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[[F

.field public b:[F

.field public c:[F

.field public d:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 23
    filled-new-array {v0, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Ldr;->a:[[F

    new-array v1, v0, [F

    .line 24
    iput-object v1, p0, Ldr;->b:[F

    new-array v1, v0, [F

    .line 25
    iput-object v1, p0, Ldr;->c:[F

    new-array v0, v0, [F

    .line 26
    iput-object v0, p0, Ldr;->d:[F

    return-void
.end method


# virtual methods
.method public a(DDDDDD)Z
    .registers 26

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ge v1, v2, :cond_a8

    move-object v2, p0

    .line 80
    iget-object v4, v2, Ldr;->a:[[F

    aget-object v4, v4, v1

    aget v5, v4, v0

    float-to-double v6, v5

    mul-double/2addr v6, p1

    aget v3, v4, v3

    float-to-double v8, v3

    mul-double v8, v8, p3

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget v8, v4, v8

    float-to-double v9, v8

    mul-double v9, v9, p5

    add-double/2addr v6, v9

    const/4 v9, 0x3

    aget v4, v4, v9

    float-to-double v9, v4

    add-double/2addr v6, v9

    const-wide/16 v9, 0x0

    cmpl-double v6, v6, v9

    if-lez v6, :cond_29

    goto/16 :goto_a3

    :cond_29
    float-to-double v6, v5

    mul-double v6, v6, p7

    float-to-double v11, v3

    mul-double v11, v11, p3

    add-double/2addr v6, v11

    float-to-double v11, v8

    mul-double v11, v11, p5

    add-double/2addr v6, v11

    float-to-double v11, v4

    add-double/2addr v6, v11

    cmpl-double v6, v6, v9

    if-lez v6, :cond_3b

    goto :goto_a3

    :cond_3b
    float-to-double v6, v5

    mul-double/2addr v6, p1

    float-to-double v11, v3

    mul-double v11, v11, p9

    add-double/2addr v6, v11

    float-to-double v11, v8

    mul-double v11, v11, p5

    add-double/2addr v6, v11

    float-to-double v11, v4

    add-double/2addr v6, v11

    cmpl-double v6, v6, v9

    if-lez v6, :cond_4c

    goto :goto_a3

    :cond_4c
    float-to-double v6, v5

    mul-double v6, v6, p7

    float-to-double v11, v3

    mul-double v11, v11, p9

    add-double/2addr v6, v11

    float-to-double v11, v8

    mul-double v11, v11, p5

    add-double/2addr v6, v11

    float-to-double v11, v4

    add-double/2addr v6, v11

    cmpl-double v6, v6, v9

    if-lez v6, :cond_5e

    goto :goto_a3

    :cond_5e
    float-to-double v6, v5

    mul-double/2addr v6, p1

    float-to-double v11, v3

    mul-double v11, v11, p3

    add-double/2addr v6, v11

    float-to-double v11, v8

    mul-double v11, v11, p11

    add-double/2addr v6, v11

    float-to-double v11, v4

    add-double/2addr v6, v11

    cmpl-double v6, v6, v9

    if-lez v6, :cond_6f

    goto :goto_a3

    :cond_6f
    float-to-double v6, v5

    mul-double v6, v6, p7

    float-to-double v11, v3

    mul-double v11, v11, p3

    add-double/2addr v6, v11

    float-to-double v11, v8

    mul-double v11, v11, p11

    add-double/2addr v6, v11

    float-to-double v11, v4

    add-double/2addr v6, v11

    cmpl-double v6, v6, v9

    if-lez v6, :cond_81

    goto :goto_a3

    :cond_81
    float-to-double v6, v5

    mul-double/2addr v6, p1

    float-to-double v11, v3

    mul-double v11, v11, p9

    add-double/2addr v6, v11

    float-to-double v11, v8

    mul-double v11, v11, p11

    add-double/2addr v6, v11

    float-to-double v11, v4

    add-double/2addr v6, v11

    cmpl-double v6, v6, v9

    if-lez v6, :cond_92

    goto :goto_a3

    :cond_92
    float-to-double v5, v5

    mul-double v5, v5, p7

    float-to-double v11, v3

    mul-double v11, v11, p9

    add-double/2addr v5, v11

    float-to-double v7, v8

    mul-double v7, v7, p11

    add-double/2addr v5, v7

    float-to-double v3, v4

    add-double/2addr v5, v3

    cmpl-double v3, v5, v9

    if-lez v3, :cond_a7

    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_a7
    return v0

    :cond_a8
    move-object v2, p0

    return v3
.end method
