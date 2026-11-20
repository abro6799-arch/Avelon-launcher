###### Class defpackage.yx (yx)
.class public Lyx;
.super Lgv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lgv;-><init>(Lko;F)V

    .line 10
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    invoke-virtual {p0, v0}, Lyx;->a(Lko;)V

    return-void
.end method


# virtual methods
.method protected a(Lcn;)F
    .registers 2

    const/high16 p1, 0x43340000    # 180.0f

    return p1
.end method

.method protected bridge synthetic a(Lls;)F
    .registers 2

    .line 7
    check-cast p1, Lcn;

    invoke-virtual {p0, p1}, Lyx;->a(Lcn;)F

    move-result p1

    return p1
.end method

.method protected a(Lcn;IF)Z
    .registers 5

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    return p3

    :cond_4
    if-eqz p2, :cond_7

    return p3

    :cond_7
    const-string p2, "/mob/spider_eyes.png"

    .line 20
    invoke-virtual {p0, p2}, Lyx;->a(Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    invoke-virtual {p1, p2}, Lcn;->a(F)F

    move-result p1

    sub-float p1, p2, p1

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p1, p3

    const/16 p3, 0xbe2

    .line 22
    invoke-static {p3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 p3, 0xbc0

    .line 23
    invoke-static {p3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 p3, 0x302

    const/16 v0, 0x303

    .line 24
    invoke-static {p3, v0}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 25
    invoke-static {p2, p2, p2, p1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic a(Lls;IF)Z
    .registers 4

    .line 7
    check-cast p1, Lcn;

    invoke-virtual {p0, p1, p2, p3}, Lyx;->a(Lcn;IF)Z

    move-result p1

    return p1
.end method
