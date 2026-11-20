###### Class defpackage.yy (yy)
.class public Lyy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lyy;->a:I

    .line 10
    iput p2, p0, Lyy;->b:I

    return-void
.end method

.method public static a(II)I
    .registers 4

    const/4 v0, 0x0

    if-gez p0, :cond_6

    const/high16 v1, -0x80000000

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    and-int/lit16 p0, p0, 0x7fff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    if-gez p1, :cond_11

    const v0, 0x8000

    :cond_11
    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0x7fff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 22
    check-cast p1, Lyy;

    .line 23
    iget v0, p1, Lyy;->a:I

    iget v1, p0, Lyy;->a:I

    if-ne v0, v1, :cond_10

    iget p1, p1, Lyy;->b:I

    iget v0, p0, Lyy;->b:I

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 18
    iget v0, p0, Lyy;->a:I

    iget v1, p0, Lyy;->b:I

    invoke-static {v0, v1}, Lyy;->a(II)I

    move-result v0

    return v0
.end method
