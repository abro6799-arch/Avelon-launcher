###### Class defpackage.wi (wi)
.class public Lwi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 p1, p1, 0x1

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Lwi;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lwi;->a:[B

    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 4

    shl-int/lit8 p1, p1, 0xb

    shl-int/lit8 p3, p3, 0x7

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_13

    .line 20
    iget-object p1, p0, Lwi;->a:[B

    aget-byte p1, p1, p2

    :goto_10
    and-int/lit8 p1, p1, 0xf

    return p1

    .line 22
    :cond_13
    iget-object p1, p0, Lwi;->a:[B

    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    goto :goto_10
.end method

.method public a(IIII)V
    .registers 5

    shl-int/lit8 p1, p1, 0xb

    shl-int/lit8 p3, p3, 0x7

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_19

    .line 33
    iget-object p1, p0, Lwi;->a:[B

    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xf0

    and-int/lit8 p4, p4, 0xf

    or-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    goto :goto_27

    .line 35
    :cond_19
    iget-object p1, p0, Lwi;->a:[B

    aget-byte p3, p1, p2

    and-int/lit8 p3, p3, 0xf

    and-int/lit8 p4, p4, 0xf

    shl-int/lit8 p4, p4, 0x4

    or-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :goto_27
    return-void
.end method

.method public a()Z
    .registers 2

    .line 40
    iget-object v0, p0, Lwi;->a:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
