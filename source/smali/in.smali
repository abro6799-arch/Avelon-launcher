###### Class defpackage.in (in)
.class public Lin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/high16 v0, 0x10000

    new-array v1, v0, [F

    .line 18
    sput-object v1, Lin;->a:[F

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 20
    sget-object v2, Lin;->a:[F

    int-to-double v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x40f0000000000000L    # 65536.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .registers 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_7

    neg-double p0, p0

    :cond_7
    cmpg-double v0, p2, v0

    if-gez v0, :cond_c

    neg-double p2, p2

    :cond_c
    cmpl-double v0, p0, p2

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    move-wide p0, p2

    :goto_12
    return-wide p0
.end method

.method public static final a(D)F
    .registers 2

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final a(F)F
    .registers 3

    .line 25
    sget-object v0, Lin;->a:[F

    const v1, 0x4622f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    const v1, 0xffff

    and-int/2addr p0, v1

    aget p0, v0, p0

    return p0
.end method

.method public static a(II)I
    .registers 2

    if-gez p0, :cond_a

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    .line 94
    div-int/2addr p0, p1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 95
    :cond_a
    div-int/2addr p0, p1

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static final b(F)F
    .registers 3

    .line 29
    sget-object v0, Lin;->a:[F

    const v1, 0x4622f983

    mul-float/2addr p0, v1

    const/high16 v1, 0x46800000    # 16384.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    const v1, 0xffff

    and-int/2addr p0, v1

    aget p0, v0, p0

    return p0
.end method

.method public static b(D)I
    .registers 5

    double-to-int v0, p0

    int-to-double v1, v0

    cmpg-double p0, p0, v1

    if-gez p0, :cond_8

    add-int/lit8 v0, v0, -0x1

    :cond_8
    return v0
.end method

.method public static final c(F)F
    .registers 3

    float-to-double v0, p0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static d(F)I
    .registers 3

    float-to-int v0, p0

    int-to-float v1, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_8

    add-int/lit8 v0, v0, -0x1

    :cond_8
    return v0
.end method

.method public static e(F)F
    .registers 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_6

    goto :goto_7

    :cond_6
    neg-float p0, p0

    :goto_7
    return p0
.end method
