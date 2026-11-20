###### Class defpackage.ar (ar)
.class public Lar;
.super Lii;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lii;-><init>(Lfd;)V

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lii;->a(Lnu;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lii;->b(Lnu;)V

    return-void
.end method

.method public d()Z
    .registers 3

    .line 40
    iget-object v0, p0, Lar;->aI:Lfd;

    iget-object v1, p0, Lar;->aW:Leq;

    invoke-virtual {v0, v1}, Lfd;->a(Leq;)Z

    move-result v0

    return v0
.end method

.method public d_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x78

    return v0
.end method
