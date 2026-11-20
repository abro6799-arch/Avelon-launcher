###### Class defpackage.ee (ee)
.class public Lee;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x40

    .line 10
    sget-object v1, Lln;->l:Lln;

    const/16 v2, 0x23

    invoke-direct {p0, v2, v0, v1}, Luu;-><init>(IILln;)V

    return-void
.end method

.method public static d(I)I
    .registers 1

    not-int p0, p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static e(I)I
    .registers 1

    not-int p0, p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method


# virtual methods
.method public a(II)I
    .registers 3

    if-nez p2, :cond_5

    .line 17
    iget p1, p0, Lee;->bm:I

    return p1

    :cond_5
    and-int/lit8 p1, p2, 0xf

    not-int p1, p1

    and-int/lit8 p2, p1, 0x8

    shr-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x71

    and-int/lit8 p1, p1, 0x7

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p2, p1

    return p2
.end method

.method protected b_(I)I
    .registers 2

    return p1
.end method
