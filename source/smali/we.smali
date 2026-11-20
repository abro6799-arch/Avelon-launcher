###### Class defpackage.we (we)
.class public Lwe;
.super Lgv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lko;F)V
    .registers 3

    .line 8
    invoke-direct {p0, p1, p2}, Lgv;-><init>(Lko;F)V

    return-void
.end method


# virtual methods
.method protected a(Lgi;F)F
    .registers 3

    .line 17
    invoke-virtual {p1}, Lgi;->z()F

    move-result p1

    return p1
.end method

.method public a(Lgi;DDDFF)V
    .registers 10

    .line 12
    invoke-super/range {p0 .. p9}, Lgv;->a(Lls;DDDFF)V

    return-void
.end method

.method public bridge synthetic a(Lls;DDDFF)V
    .registers 10

    .line 6
    check-cast p1, Lgi;

    invoke-virtual/range {p0 .. p9}, Lwe;->a(Lgi;DDDFF)V

    return-void
.end method

.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 6
    check-cast p1, Lgi;

    invoke-virtual {p0, p1, p2}, Lwe;->b(Lgi;F)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 6
    check-cast p1, Lgi;

    invoke-virtual/range {p0 .. p9}, Lwe;->a(Lgi;DDDFF)V

    return-void
.end method

.method protected b(Lgi;F)V
    .registers 3

    return-void
.end method

.method protected bridge synthetic c(Lls;F)F
    .registers 3

    .line 6
    check-cast p1, Lgi;

    invoke-virtual {p0, p1, p2}, Lwe;->a(Lgi;F)F

    move-result p1

    return p1
.end method
