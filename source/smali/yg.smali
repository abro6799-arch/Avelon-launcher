###### Class defpackage.yg (yg)
.class public Lyg;
.super Lgv;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Lko;FF)V
    .registers 4

    mul-float/2addr p2, p3

    .line 11
    invoke-direct {p0, p1, p2}, Lgv;-><init>(Lko;F)V

    .line 12
    iput p3, p0, Lyg;->a:F

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lls;F)V
    .registers 3

    .line 7
    check-cast p1, Lnt;

    invoke-virtual {p0, p1, p2}, Lyg;->a(Lnt;F)V

    return-void
.end method

.method protected a(Lnt;F)V
    .registers 3

    .line 16
    iget p1, p0, Lyg;->a:F

    invoke-static {p1, p1, p1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    return-void
.end method
