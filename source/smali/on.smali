###### Class defpackage.on (on)
.class public Lon;
.super Lbw;
.source "SourceFile"


# instance fields
.field private a:Lcv;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lbw;-><init>()V

    .line 21
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lon;->a:Lcv;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    iput v0, p0, Lon;->c:F

    return-void
.end method


# virtual methods
.method public a(Lqw;DDDFF)V
    .registers 10

    .line 28
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    double-to-float p2, p2

    double-to-float p3, p4

    double-to-float p4, p6

    .line 29
    invoke-static {p2, p3, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 30
    iget p2, p1, Lqw;->a:I

    int-to-float p2, p2

    sub-float/2addr p2, p9

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    const/high16 p4, 0x41200000    # 10.0f

    cmpg-float p2, p2, p4

    if-gez p2, :cond_33

    .line 31
    iget p2, p1, Lqw;->a:I

    int-to-float p2, p2

    sub-float/2addr p2, p9

    add-float/2addr p2, p3

    div-float/2addr p2, p4

    sub-float p2, p3, p2

    const/4 p4, 0x0

    cmpg-float p5, p2, p4

    if-gez p5, :cond_24

    move p2, p4

    :cond_24
    cmpl-float p4, p2, p3

    if-lez p4, :cond_29

    move p2, p3

    :cond_29
    mul-float/2addr p2, p2

    mul-float/2addr p2, p2

    const p4, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p4

    add-float/2addr p2, p3

    .line 37
    invoke-static {p2, p2, p2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 40
    :cond_33
    iget p2, p1, Lqw;->a:I

    int-to-float p2, p2

    sub-float/2addr p2, p9

    add-float/2addr p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    sub-float p2, p3, p2

    const p4, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, p4

    const-string p4, "/terrain.png"

    .line 41
    invoke-virtual {p0, p4}, Lon;->a(Ljava/lang/String;)V

    .line 42
    iget-object p4, p0, Lon;->a:Lcv;

    sget-object p5, Luu;->an:Luu;

    invoke-virtual {p1, p9}, Lqw;->a(F)F

    move-result p6

    const/4 p7, 0x0

    invoke-virtual {p4, p5, p7, p6}, Lcv;->a(Luu;IF)V

    .line 43
    iget p1, p1, Lqw;->a:I

    div-int/lit8 p1, p1, 0x5

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_86

    const/16 p1, 0xde1

    .line 44
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 p4, 0xb50

    .line 45
    invoke-static {p4}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 p5, 0xbe2

    .line 46
    invoke-static {p5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 p6, 0x302

    const/16 p8, 0x304

    .line 47
    invoke-static {p6, p8}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 48
    invoke-static {p3, p3, p3, p2}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 49
    iget-object p2, p0, Lon;->a:Lcv;

    sget-object p6, Luu;->an:Luu;

    invoke-virtual {p2, p6, p7, p3}, Lcv;->a(Luu;IF)V

    .line 50
    invoke-static {p3, p3, p3, p3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 51
    invoke-static {p5}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 52
    invoke-static {p4}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 53
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 55
    :cond_86
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 20
    check-cast p1, Lqw;

    invoke-virtual/range {p0 .. p9}, Lon;->a(Lqw;DDDFF)V

    return-void
.end method
