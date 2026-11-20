###### Class defpackage.mj (mj)
.class public Lmj;
.super Lgv;
.source "SourceFile"


# instance fields
.field private a:Lko;


# direct methods
.method public constructor <init>(Lko;Lko;F)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p3}, Lgv;-><init>(Lko;F)V

    .line 20
    iput-object p2, p0, Lmj;->a:Lko;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 15
    check-cast p1, Luw;

    invoke-virtual {p0, p1, p2}, Lmj;->a(Luw;F)V

    return-void
.end method

.method protected a(Luw;F)V
    .registers 6

    .line 41
    invoke-virtual {p1}, Luw;->v()I

    move-result v0

    .line 42
    iget v1, p1, Luw;->b:F

    iget v2, p1, Luw;->a:F

    iget p1, p1, Luw;->b:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    int-to-float p1, v0

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p2, p1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    div-float/2addr v1, p2

    add-float/2addr v1, v0

    div-float p2, v0, v1

    mul-float v1, p2, p1

    div-float/2addr v0, p2

    mul-float/2addr v0, p1

    .line 45
    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    return-void
.end method

.method protected bridge synthetic a(Lls;IF)Z
    .registers 4

    .line 15
    check-cast p1, Luw;

    invoke-virtual {p0, p1, p2, p3}, Lmj;->a(Luw;IF)Z

    move-result p1

    return p1
.end method

.method protected a(Luw;IF)Z
    .registers 4

    const/16 p1, 0xbe2

    const/4 p3, 0x1

    if-nez p2, :cond_1a

    .line 25
    iget-object p2, p0, Lmj;->a:Lko;

    invoke-virtual {p0, p2}, Lmj;->a(Lko;)V

    const/16 p2, 0xba1

    .line 27
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 28
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 29
    invoke-static {p1, p2}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    return p3

    :cond_1a
    if-ne p2, p3, :cond_24

    .line 34
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    invoke-static {p1, p1, p1, p1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    :cond_24
    const/4 p1, 0x0

    return p1
.end method
