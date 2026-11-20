###### Class defpackage.nr (nr)
.class public Lnr;
.super Luu;
.source "SourceFile"


# instance fields
.field protected b:Z


# direct methods
.method protected constructor <init>(IILln;Z)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2, p3}, Luu;-><init>(IILln;)V

    .line 11
    iput-boolean p4, p0, Lnr;->b:Z

    return-void
.end method


# virtual methods
.method public b(Lxp;IIII)Z
    .registers 8

    .line 19
    invoke-interface {p1, p2, p3, p4}, Lxp;->a(III)I

    move-result v0

    .line 20
    iget-boolean v1, p0, Lnr;->b:Z

    if-nez v1, :cond_e

    iget v1, p0, Lnr;->bn:I

    if-ne v0, v1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_e
    invoke-super/range {p0 .. p5}, Luu;->b(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
