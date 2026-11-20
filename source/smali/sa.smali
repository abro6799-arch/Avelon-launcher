###### Class defpackage.sa (sa)
.class public Lsa;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lsa;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lls;)V
    .registers 4

    .line 13
    instance-of v0, p2, Lwh;

    if-eqz v0, :cond_15

    .line 14
    check-cast p2, Lwh;

    .line 15
    invoke-virtual {p2}, Lwh;->v()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p2, v0}, Lwh;->a(Z)V

    .line 17
    iget p2, p1, Liz;->a:I

    sub-int/2addr p2, v0

    iput p2, p1, Liz;->a:I

    :cond_15
    return-void
.end method

.method public a(Liz;Lls;Lls;)Z
    .registers 4

    .line 23
    invoke-virtual {p0, p1, p2}, Lsa;->a(Liz;Lls;)V

    const/4 p1, 0x1

    return p1
.end method
