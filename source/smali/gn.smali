###### Class defpackage.gn (gn)
.class public Lgn;
.super Lbw;
.source "SourceFile"


# instance fields
.field private a:Lcv;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lbw;-><init>()V

    .line 12
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lgn;->a:Lcv;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 15
    iput v0, p0, Lgn;->c:F

    return-void
.end method


# virtual methods
.method public a(Lju;DDDFF)V
    .registers 12

    .line 19
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    double-to-float p2, p2

    double-to-float p3, p4

    double-to-float p4, p6

    .line 20
    invoke-static {p2, p3, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const-string p2, "/terrain.png"

    .line 22
    invoke-virtual {p0, p2}, Lgn;->a(Ljava/lang/String;)V

    .line 23
    sget-object p2, Luu;->m:[Luu;

    iget p3, p1, Lju;->a:I

    aget-object p5, p2, p3

    .line 25
    invoke-virtual {p1}, Lju;->k()Lfd;

    move-result-object p6

    const/16 p2, 0xb50

    .line 27
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 28
    iget-object p4, p0, Lgn;->a:Lcv;

    iget-wide p7, p1, Lju;->aM:D

    invoke-static {p7, p8}, Lin;->b(D)I

    move-result p7

    iget-wide p8, p1, Lju;->aN:D

    invoke-static {p8, p9}, Lin;->b(D)I

    move-result p8

    iget-wide v0, p1, Lju;->aO:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p9

    invoke-virtual/range {p4 .. p9}, Lcv;->a(Luu;Lfd;III)V

    .line 29
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 30
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 11
    check-cast p1, Lju;

    invoke-virtual/range {p0 .. p9}, Lgn;->a(Lju;DDDFF)V

    return-void
.end method
