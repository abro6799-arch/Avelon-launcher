###### Class defpackage.xy (xy)
.class public Lxy;
.super Lgv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lko;Lko;F)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p3}, Lgv;-><init>(Lko;F)V

    .line 10
    invoke-virtual {p0, p2}, Lxy;->a(Lko;)V

    return-void
.end method


# virtual methods
.method protected a(Ldl;IF)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_31

    .line 14
    invoke-virtual {p1}, Ldl;->s()Z

    move-result p2

    if-nez p2, :cond_31

    const-string p2, "/mob/sheep_fur.png"

    .line 15
    invoke-virtual {p0, p2}, Lxy;->a(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p3}, Ldl;->a(F)F

    move-result p2

    .line 17
    invoke-virtual {p1}, Ldl;->r()I

    move-result p1

    .line 18
    sget-object p3, Ldl;->a:[[F

    aget-object p3, p3, p1

    aget p3, p3, v0

    mul-float/2addr p3, p2

    sget-object v0, Ldl;->a:[[F

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, p2

    sget-object v2, Ldl;->a:[[F

    aget-object p1, v2, p1

    const/4 v2, 0x2

    aget p1, p1, v2

    mul-float/2addr p2, p1

    invoke-static {p3, v0, p2}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    return v1

    :cond_31
    return v0
.end method

.method protected bridge synthetic a(Lls;IF)Z
    .registers 4

    .line 7
    check-cast p1, Ldl;

    invoke-virtual {p0, p1, p2, p3}, Lxy;->a(Ldl;IF)Z

    move-result p1

    return p1
.end method
