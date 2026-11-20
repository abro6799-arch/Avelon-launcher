###### Class defpackage.vq (vq)
.class public Lvq;
.super Lgp;
.source "SourceFile"


# instance fields
.field private d:Lgs;


# direct methods
.method public constructor <init>(Lgs;Llw;III)V
    .registers 6

    .line 14
    invoke-direct {p0, p2, p3, p4, p5}, Lgp;-><init>(Llw;III)V

    .line 16
    iput-object p1, p0, Lvq;->d:Lgs;

    return-void
.end method


# virtual methods
.method public a(Liz;)V
    .registers 5

    .line 25
    iget-object v0, p0, Lvq;->d:Lgs;

    iget-object v0, v0, Lgs;->aI:Lfd;

    iget-object v1, p0, Lvq;->d:Lgs;

    invoke-virtual {p1, v0, v1}, Liz;->b(Lfd;Lgs;)V

    .line 26
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->m:Lgm;

    iget v1, v1, Lgm;->bf:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lvq;->d:Lgs;

    sget-object v1, Lep;->k:Lny;

    invoke-virtual {v0, v1, v2}, Lgs;->a(Lvr;I)V

    .line 27
    :cond_19
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->aT:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lvq;->d:Lgs;

    sget-object v1, Lep;->p:Lny;

    invoke-virtual {v0, v1, v2}, Lgs;->a(Lvr;I)V

    .line 28
    :cond_28
    invoke-super {p0, p1}, Lgp;->a(Liz;)V

    return-void
.end method

.method public b(Liz;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
