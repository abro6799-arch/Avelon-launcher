###### Class defpackage.dh (dh)
.class public Ldh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field private final b:[Ld;

.field private c:I


# direct methods
.method public constructor <init>([Ld;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ldh;->b:[Ld;

    .line 13
    array-length p1, p1

    iput p1, p0, Ldh;->a:I

    return-void
.end method


# virtual methods
.method public a(Lsn;)Lbt;
    .registers 16

    .line 40
    iget-object v0, p0, Ldh;->b:[Ld;

    iget v1, p0, Ldh;->c:I

    aget-object v0, v0, v1

    iget v0, v0, Ld;->a:I

    int-to-double v0, v0

    iget v2, p1, Lsn;->bg:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double v8, v0, v4

    .line 41
    iget-object v0, p0, Ldh;->b:[Ld;

    iget v1, p0, Ldh;->c:I

    aget-object v0, v0, v1

    iget v0, v0, Ld;->b:I

    int-to-double v10, v0

    .line 42
    iget-object v0, p0, Ldh;->b:[Ld;

    iget v1, p0, Ldh;->c:I

    aget-object v0, v0, v1

    iget v0, v0, Ld;->c:I

    int-to-double v0, v0

    iget p1, p1, Lsn;->bg:F

    add-float/2addr p1, v3

    float-to-int p1, p1

    int-to-double v2, p1

    mul-double/2addr v2, v6

    add-double v12, v0, v2

    .line 43
    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 21
    iget v0, p0, Ldh;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldh;->c:I

    return-void
.end method

.method public b()Z
    .registers 3

    .line 25
    iget v0, p0, Ldh;->c:I

    iget-object v1, p0, Ldh;->b:[Ld;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public c()Ld;
    .registers 3

    .line 29
    iget v0, p0, Ldh;->a:I

    if-lez v0, :cond_b

    .line 30
    iget-object v1, p0, Ldh;->b:[Ld;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
