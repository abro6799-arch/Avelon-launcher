###### Class defpackage.tz (tz)
.class public Ltz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lib;

.field public b:I

.field private c:Z


# direct methods
.method public constructor <init>([Lib;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ltz;->b:I

    .line 9
    iput-boolean v0, p0, Ltz;->c:Z

    .line 12
    iput-object p1, p0, Ltz;->a:[Lib;

    .line 13
    array-length p1, p1

    iput p1, p0, Ltz;->b:I

    return-void
.end method

.method public constructor <init>([Lib;IIII)V
    .registers 12

    .line 17
    invoke-direct {p0, p1}, Ltz;-><init>([Lib;)V

    const/4 v0, 0x0

    .line 21
    aget-object v1, p1, v0

    int-to-float p4, p4

    const/high16 v2, 0x42800000    # 64.0f

    div-float/2addr p4, v2

    const v3, 0x3acccccd    # 0.0015625f

    sub-float/2addr p4, v3

    int-to-float p3, p3

    const/high16 v4, 0x42000000    # 32.0f

    div-float/2addr p3, v4

    const v5, 0x3b4ccccd    # 0.003125f

    add-float/2addr p3, v5

    invoke-virtual {v1, p4, p3}, Lib;->a(FF)Lib;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 22
    aget-object v1, p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v2

    add-float/2addr p2, v3

    invoke-virtual {v1, p2, p3}, Lib;->a(FF)Lib;

    move-result-object p3

    aput-object p3, p1, v0

    const/4 p3, 0x2

    .line 23
    aget-object v0, p1, p3

    int-to-float p5, p5

    div-float/2addr p5, v4

    sub-float/2addr p5, v5

    invoke-virtual {v0, p2, p5}, Lib;->a(FF)Lib;

    move-result-object p2

    aput-object p2, p1, p3

    const/4 p2, 0x3

    .line 24
    aget-object p3, p1, p2

    invoke-virtual {p3, p4, p5}, Lib;->a(FF)Lib;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 37
    iget-object v0, p0, Ltz;->a:[Lib;

    array-length v0, v0

    new-array v0, v0, [Lib;

    const/4 v1, 0x0

    .line 38
    :goto_6
    iget-object v2, p0, Ltz;->a:[Lib;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 39
    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 40
    :cond_16
    iput-object v0, p0, Ltz;->a:[Lib;

    return-void
.end method

.method public a(Lnw;F)V
    .registers 17

    move-object v0, p0

    move-object v12, p1

    .line 44
    iget-object v1, v0, Ltz;->a:[Lib;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lib;->a:Lbt;

    iget-object v3, v0, Ltz;->a:[Lib;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lib;->a:Lbt;

    invoke-virtual {v1, v3}, Lbt;->a(Lbt;)Lbt;

    move-result-object v1

    .line 45
    iget-object v3, v0, Ltz;->a:[Lib;

    aget-object v2, v3, v2

    iget-object v2, v2, Lib;->a:Lbt;

    iget-object v3, v0, Ltz;->a:[Lib;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    iget-object v3, v3, Lib;->a:Lbt;

    invoke-virtual {v2, v3}, Lbt;->a(Lbt;)Lbt;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Lbt;->b(Lbt;)Lbt;

    move-result-object v1

    invoke-virtual {v1}, Lbt;->c()Lbt;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lnw;->b()V

    .line 49
    iget-boolean v2, v0, Ltz;->c:Z

    if-eqz v2, :cond_44

    .line 50
    iget-wide v2, v1, Lbt;->a:D

    double-to-float v2, v2

    neg-float v2, v2

    iget-wide v5, v1, Lbt;->b:D

    double-to-float v3, v5

    neg-float v3, v3

    iget-wide v5, v1, Lbt;->c:D

    double-to-float v1, v5

    neg-float v1, v1

    invoke-virtual {p1, v2, v3, v1}, Lnw;->b(FFF)V

    goto :goto_50

    .line 52
    :cond_44
    iget-wide v2, v1, Lbt;->a:D

    double-to-float v2, v2

    iget-wide v5, v1, Lbt;->b:D

    double-to-float v3, v5

    iget-wide v5, v1, Lbt;->c:D

    double-to-float v1, v5

    invoke-virtual {p1, v2, v3, v1}, Lnw;->b(FFF)V

    :goto_50
    move v13, v4

    :goto_51
    const/4 v1, 0x4

    if-ge v13, v1, :cond_7d

    .line 56
    iget-object v1, v0, Ltz;->a:[Lib;

    aget-object v1, v1, v13

    .line 57
    iget-object v2, v1, Lib;->a:Lbt;

    iget-wide v2, v2, Lbt;->a:D

    double-to-float v2, v2

    mul-float v2, v2, p2

    float-to-double v2, v2

    iget-object v4, v1, Lib;->a:Lbt;

    iget-wide v4, v4, Lbt;->b:D

    double-to-float v4, v4

    mul-float v4, v4, p2

    float-to-double v4, v4

    iget-object v6, v1, Lib;->a:Lbt;

    iget-wide v6, v6, Lbt;->c:D

    double-to-float v6, v6

    mul-float v6, v6, p2

    float-to-double v6, v6

    iget v8, v1, Lib;->b:F

    float-to-double v8, v8

    iget v1, v1, Lib;->c:F

    float-to-double v10, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_51

    .line 59
    :cond_7d
    invoke-virtual {p1}, Lnw;->a()V

    return-void
.end method
