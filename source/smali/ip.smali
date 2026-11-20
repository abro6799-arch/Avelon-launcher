###### Class defpackage.ip (ip)
.class public Lip;
.super Lgv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lko;F)V
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lgv;-><init>(Lko;F)V

    return-void
.end method


# virtual methods
.method protected a(Lww;F)F
    .registers 6

    .line 17
    iget v0, p1, Lww;->g:F

    iget v1, p1, Lww;->b:F

    iget v2, p1, Lww;->g:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 18
    iget v1, p1, Lww;->f:F

    iget v2, p1, Lww;->c:F

    iget p1, p1, Lww;->f:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 20
    invoke-static {v0}, Lin;->a(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    mul-float/2addr p1, v1

    return p1
.end method

.method public bridge synthetic a(Lls;DDDFF)V
    .registers 10

    .line 7
    check-cast p1, Lww;

    invoke-virtual/range {p0 .. p9}, Lip;->a(Lww;DDDFF)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 7
    check-cast p1, Lww;

    invoke-virtual/range {p0 .. p9}, Lip;->a(Lww;DDDFF)V

    return-void
.end method

.method public a(Lww;DDDFF)V
    .registers 10

    .line 13
    invoke-super/range {p0 .. p9}, Lgv;->a(Lls;DDDFF)V

    return-void
.end method

.method protected bridge synthetic c(Lls;F)F
    .registers 3

    .line 7
    check-cast p1, Lww;

    invoke-virtual {p0, p1, p2}, Lip;->a(Lww;F)F

    move-result p1

    return p1
.end method
