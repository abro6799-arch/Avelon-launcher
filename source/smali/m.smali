###### Class defpackage.m (m)
.class public Lm;
.super Lgv;
.source "SourceFile"


# instance fields
.field private a:Lko;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    new-instance v0, Lil;

    invoke-direct {v0}, Lil;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lgv;-><init>(Lko;F)V

    .line 10
    new-instance v0, Lil;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Lil;-><init>(F)V

    iput-object v0, p0, Lm;->a:Lko;

    return-void
.end method


# virtual methods
.method protected a(Lgb;FF)I
    .registers 4

    .line 34
    invoke-virtual {p1, p3}, Lgb;->a_(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 36
    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x0

    if-nez p2, :cond_e

    return p3

    :cond_e
    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    if-gez p1, :cond_19

    goto :goto_1a

    :cond_19
    move p3, p1

    :goto_1a
    const/16 p1, 0xff

    if-le p3, p1, :cond_1f

    move p3, p1

    :cond_1f
    shl-int/lit8 p2, p3, 0x18

    const/high16 p3, 0xff0000

    or-int/2addr p2, p3

    const p3, 0xff00

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method protected bridge synthetic a(Lls;FF)I
    .registers 4

    .line 9
    check-cast p1, Lgb;

    invoke-virtual {p0, p1, p2, p3}, Lm;->a(Lgb;FF)I

    move-result p1

    return p1
.end method

.method protected a(Lgb;F)V
    .registers 6

    .line 19
    invoke-virtual {p1, p2}, Lgb;->a_(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    .line 21
    invoke-static {p2}, Lin;->a(F)F

    move-result p2

    mul-float/2addr p2, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_19

    move p1, v1

    :cond_19
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1e

    move p1, v0

    :cond_1e
    mul-float/2addr p1, p1

    mul-float/2addr p1, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    mul-float/2addr v1, p2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    div-float/2addr p1, p2

    .line 28
    invoke-static {v1, p1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    return-void
.end method

.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 9
    check-cast p1, Lgb;

    invoke-virtual {p0, p1, p2}, Lm;->a(Lgb;F)V

    return-void
.end method

.method protected a(Lgb;IF)Z
    .registers 9

    .line 50
    invoke-virtual {p1}, Lgb;->s()Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0xb50

    const/16 v1, 0xbe2

    const/16 v2, 0x1700

    const/16 v3, 0x1702

    const/4 v4, 0x1

    if-ne p2, v4, :cond_41

    .line 52
    iget p1, p1, Lgb;->bt:I

    int-to-float p1, p1

    add-float/2addr p1, p3

    const-string p2, "/armor/power.png"

    .line 53
    invoke-virtual {p0, p2}, Lm;->a(Ljava/lang/String;)V

    .line 54
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 55
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const p2, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    .line 58
    invoke-static {p1, p1, p2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 59
    iget-object p1, p0, Lm;->a:Lko;

    invoke-virtual {p0, p1}, Lm;->a(Lko;)V

    .line 60
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 61
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 63
    invoke-static {p1, p1, p1, p2}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 64
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 65
    invoke-static {v4, v4}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    return v4

    :cond_41
    const/4 p1, 0x2

    if-ne p2, p1, :cond_53

    .line 69
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 70
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    .line 71
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 72
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 73
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    :cond_53
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic a(Lls;IF)Z
    .registers 4

    .line 9
    check-cast p1, Lgb;

    invoke-virtual {p0, p1, p2, p3}, Lm;->a(Lgb;IF)Z

    move-result p1

    return p1
.end method

.method protected b(Lgb;IF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic b(Lls;IF)Z
    .registers 4

    .line 9
    check-cast p1, Lgb;

    invoke-virtual {p0, p1, p2, p3}, Lm;->b(Lgb;IF)Z

    move-result p1

    return p1
.end method
