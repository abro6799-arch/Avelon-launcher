###### Class defpackage.qr (qr)
.class public Lqr;
.super Lck;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Lck;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 2

    const/4 p1, 0x7

    return p1
.end method
