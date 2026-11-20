###### Class defpackage.xf (xf)
.class public Lxf;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 12
    sget-object v0, Lln;->k:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    const/16 p1, 0x30

    .line 13
    iput p1, p0, Lxf;->bm:I

    return-void
.end method


# virtual methods
.method public b(Lfd;III)V
    .registers 9

    add-int/lit8 v0, p2, -0x2

    :goto_2
    add-int/lit8 v1, p2, 0x2

    if-gt v0, v1, :cond_22

    add-int/lit8 v1, p3, -0x2

    :goto_8
    add-int/lit8 v2, p3, 0x2

    if-gt v1, v2, :cond_1f

    add-int/lit8 v2, p4, -0x2

    :goto_e
    add-int/lit8 v3, p4, 0x2

    if-gt v2, v3, :cond_1c

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lfd;->a(III)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lfd;->i(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    return-void
.end method

.method public c(Lfd;III)V
    .registers 9

    add-int/lit8 v0, p2, -0x2

    :goto_2
    add-int/lit8 v1, p2, 0x2

    if-gt v0, v1, :cond_20

    add-int/lit8 v1, p3, -0x2

    :goto_8
    add-int/lit8 v2, p3, 0x2

    if-gt v1, v2, :cond_1d

    add-int/lit8 v2, p4, -0x2

    :goto_e
    add-int/lit8 v3, p4, 0x2

    if-gt v2, v3, :cond_1a

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Lfd;->f(III)Lln;

    sget-object v3, Lln;->g:Lln;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method
