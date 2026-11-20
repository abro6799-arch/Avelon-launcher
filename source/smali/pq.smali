###### Class defpackage.pq (pq)
.class public Lpq;
.super Lgv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lgv;-><init>(Lko;F)V

    return-void
.end method


# virtual methods
.method protected a(Lbp;F)V
    .registers 6

    .line 15
    iget v0, p1, Lbp;->e:I

    int-to-float v0, v0

    iget v1, p1, Lbp;->f:I

    iget p1, p1, Lbp;->e:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/high16 p1, 0x41a00000    # 20.0f

    div-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_14

    move v0, p1

    :cond_14
    mul-float p1, v0, v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, v0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    div-float p1, v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    add-float v2, p1, v1

    div-float/2addr v2, p2

    div-float p1, v0, p1

    add-float/2addr p1, v1

    div-float/2addr p1, p2

    .line 20
    invoke-static {p1, v2, p1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 21
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    return-void
.end method

.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 7
    check-cast p1, Lbp;

    invoke-virtual {p0, p1, p2}, Lpq;->a(Lbp;F)V

    return-void
.end method
