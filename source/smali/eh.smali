###### Class defpackage.eh (eh)
.class public Leh;
.super Lnn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lnn;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x6

    .line 12
    invoke-direct {p0, v0, p1}, Lnn;-><init>(IF)V

    return-void
.end method
