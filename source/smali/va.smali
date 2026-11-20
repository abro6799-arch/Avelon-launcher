###### Class defpackage.va (va)
.class public Lva;
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
.method public a(Lbx;DDDFF)V
    .registers 10

    .line 12
    invoke-super/range {p0 .. p9}, Lgv;->a(Lls;DDDFF)V

    return-void
.end method

.method public bridge synthetic a(Lls;DDDFF)V
    .registers 10

    .line 6
    check-cast p1, Lbx;

    invoke-virtual/range {p0 .. p9}, Lva;->a(Lbx;DDDFF)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 6
    check-cast p1, Lbx;

    invoke-virtual/range {p0 .. p9}, Lva;->a(Lbx;DDDFF)V

    return-void
.end method
