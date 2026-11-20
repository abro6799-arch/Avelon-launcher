###### Class defpackage.d (d)
.class public Ld;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field d:I

.field e:F

.field f:F

.field g:F

.field h:Ld;

.field public i:Z

.field private final j:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ld;->d:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Ld;->i:Z

    .line 15
    iput p1, p0, Ld;->a:I

    .line 16
    iput p2, p0, Ld;->b:I

    .line 17
    iput p3, p0, Ld;->c:I

    .line 19
    invoke-static {p1, p2, p3}, Ld;->a(III)I

    move-result p1

    iput p1, p0, Ld;->j:I

    return-void
.end method

.method public static a(III)I
    .registers 4

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 v0, p0, 0x7fff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 v0, p2, 0x7fff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p0, :cond_12

    const/high16 p0, -0x80000000

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    or-int/2addr p0, p1

    if-gez p2, :cond_19

    const v0, 0x8000

    :cond_19
    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a(Ld;)F
    .registers 5

    .line 27
    iget v0, p1, Ld;->a:I

    iget v1, p0, Ld;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 28
    iget v1, p1, Ld;->b:I

    iget v2, p0, Ld;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 29
    iget p1, p1, Ld;->c:I

    iget v2, p0, Ld;->c:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    .line 30
    invoke-static {v0}, Lin;->c(F)F

    move-result p1

    return p1
.end method

.method public a()Z
    .registers 2

    .line 46
    iget v0, p0, Ld;->d:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 34
    instance-of v0, p1, Ld;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 35
    check-cast p1, Ld;

    .line 36
    iget v0, p0, Ld;->j:I

    iget v2, p1, Ld;->j:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Ld;->a:I

    iget v2, p1, Ld;->a:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Ld;->b:I

    iget v2, p1, Ld;->b:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Ld;->c:I

    iget p1, p1, Ld;->c:I

    if-ne v0, p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 42
    iget v0, p0, Ld;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ld;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ld;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
