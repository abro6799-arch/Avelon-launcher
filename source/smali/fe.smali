###### Class defpackage.fe (fe)
.class public Lfe;
.super Lbw;
.source "SourceFile"


# instance fields
.field protected a:Lko;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lbw;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    iput v0, p0, Lfe;->c:F

    .line 13
    new-instance v0, Lez;

    invoke-direct {v0}, Lez;-><init>()V

    iput-object v0, p0, Lfe;->a:Lko;

    return-void
.end method


# virtual methods
.method public a(Lfz;DDDFF)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    .line 17
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide v2, p2

    double-to-float v2, v2

    move-wide v3, p4

    double-to-float v3, v3

    move-wide v4, p6

    double-to-float v4, v4

    .line 19
    invoke-static {v2, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v2, v2, p8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v2, v3, v4, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 22
    iget v2, v1, Lfz;->b:I

    int-to-float v2, v2

    sub-float v2, v2, p9

    .line 23
    iget v5, v1, Lfz;->a:I

    int-to-float v5, v5

    sub-float v5, v5, p9

    cmpg-float v6, v5, v3

    if-gez v6, :cond_27

    move v5, v3

    :cond_27
    cmpl-float v6, v2, v3

    if-lez v6, :cond_3b

    .line 26
    invoke-static {v2}, Lin;->a(F)F

    move-result v6

    mul-float/2addr v6, v2

    mul-float/2addr v6, v5

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v6, v2

    iget v1, v1, Lfz;->c:I

    int-to-float v1, v1

    mul-float/2addr v6, v1

    invoke-static {v6, v4, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    :cond_3b
    const-string v1, "/terrain.png"

    .line 29
    invoke-virtual {p0, v1}, Lfe;->a(Ljava/lang/String;)V

    const/high16 v1, 0x3f400000    # 0.75f

    .line 31
    invoke-static {v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const v1, 0x3faaaaab

    .line 33
    invoke-static {v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const-string v1, "/item/boat.png"

    .line 35
    invoke-virtual {p0, v1}, Lfe;->a(Ljava/lang/String;)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 36
    invoke-static {v1, v1, v4}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 39
    iget-object v1, v0, Lfe;->a:Lko;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, -0x42333333    # -0.1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3d800000    # 0.0625f

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    move p7, v7

    invoke-virtual/range {p1 .. p7}, Lko;->a(FFFFFF)V

    .line 40
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 8
    check-cast p1, Lfz;

    invoke-virtual/range {p0 .. p9}, Lfe;->a(Lfz;DDDFF)V

    return-void
.end method
