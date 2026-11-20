###### Class defpackage.mb (mb)
.class public Lmb;
.super Lbw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lbw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsn;DDDFF)V
    .registers 12

    .line 12
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 13
    iget-object p8, p1, Lsn;->aW:Leq;

    iget-wide v0, p1, Lsn;->bl:D

    sub-double/2addr p2, v0

    iget-wide v0, p1, Lsn;->bm:D

    sub-double/2addr p4, v0

    iget-wide v0, p1, Lsn;->bn:D

    sub-double/2addr p6, v0

    move-object p1, p8

    invoke-static/range {p1 .. p7}, Lmb;->a(Leq;DDD)V

    .line 14
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method
