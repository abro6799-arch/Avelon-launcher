###### Class defpackage.sg (sg)
.class public Lsg;
.super Lln;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ldx;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lln;-><init>(Ldx;)V

    .line 6
    invoke-virtual {p0}, Lsg;->f()Lln;

    .line 7
    invoke-virtual {p0}, Lsg;->k()Lln;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
