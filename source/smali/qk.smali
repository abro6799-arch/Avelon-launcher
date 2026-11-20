###### Class defpackage.qk (qk)
.class public Lqk;
.super Lyw;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIZI)V
    .registers 5

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lyw;-><init>(IIZ)V

    .line 7
    iput p4, p0, Lqk;->bg:I

    return-void
.end method
