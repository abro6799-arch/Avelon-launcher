###### Class defpackage.es (es)
.class public Les;
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
.method public bridge synthetic a(Lls;DDDFF)V
    .registers 10

    .line 7
    check-cast p1, Lxt;

    invoke-virtual/range {p0 .. p9}, Les;->a(Lxt;DDDFF)V

    return-void
.end method

.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 7
    check-cast p1, Lxt;

    invoke-virtual {p0, p1, p2}, Les;->a(Lxt;F)V

    return-void
.end method

.method protected bridge synthetic a(Lls;FFF)V
    .registers 5

    .line 7
    check-cast p1, Lxt;

    invoke-virtual {p0, p1, p2, p3, p4}, Les;->a(Lxt;FFF)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 7
    check-cast p1, Lxt;

    invoke-virtual/range {p0 .. p9}, Les;->a(Lxt;DDDFF)V

    return-void
.end method

.method public a(Lxt;DDDFF)V
    .registers 10

    .line 13
    invoke-super/range {p0 .. p9}, Lgv;->a(Lls;DDDFF)V

    return-void
.end method

.method protected a(Lxt;F)V
    .registers 3

    return-void
.end method

.method protected a(Lxt;FFF)V
    .registers 7

    .line 18
    iget p2, p1, Lxt;->b:F

    iget v0, p1, Lxt;->a:F

    iget v1, p1, Lxt;->b:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p4

    add-float/2addr p2, v0

    .line 19
    iget v0, p1, Lxt;->f:F

    iget v1, p1, Lxt;->c:F

    iget p1, p1, Lxt;->f:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    const/high16 p1, 0x3f000000    # 0.5f

    const/4 p4, 0x0

    .line 21
    invoke-static {p4, p1, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 p1, 0x43340000    # 180.0f

    sub-float/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 22
    invoke-static {p1, p4, p3, p4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 23
    invoke-static {p2, p3, p4, p4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 24
    invoke-static {v0, p4, p3, p4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const p1, -0x40666666    # -1.2f

    .line 25
    invoke-static {p4, p1, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    return-void
.end method

.method protected b(Lxt;F)F
    .registers 5

    .line 36
    iget v0, p1, Lxt;->j:F

    iget v1, p1, Lxt;->i:F

    iget p1, p1, Lxt;->j:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic c(Lls;F)F
    .registers 3

    .line 7
    check-cast p1, Lxt;

    invoke-virtual {p0, p1, p2}, Les;->b(Lxt;F)F

    move-result p1

    return p1
.end method
