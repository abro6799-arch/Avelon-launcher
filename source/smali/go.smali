###### Class defpackage.go (go)
.class public Lgo;
.super Lck;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Lck;-><init>(I)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lgo;->e(I)Lgm;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lgo;->a(Z)Lgm;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .line 16
    sget-object v0, Luu;->K:Luu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Luu;->a(II)I

    move-result p1

    return p1
.end method

.method public b(I)I
    .registers 2

    return p1
.end method
