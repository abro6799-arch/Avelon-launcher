###### Class defpackage.yv (yv)
.class public Lyv;
.super Lgp;
.source "SourceFile"


# instance fields
.field private final d:Llw;

.field private e:Lgs;


# direct methods
.method public constructor <init>(Lgs;Llw;Llw;III)V
    .registers 7

    .line 15
    invoke-direct {p0, p3, p4, p5, p6}, Lgp;-><init>(Llw;III)V

    .line 16
    iput-object p1, p0, Lyv;->e:Lgs;

    .line 17
    iput-object p2, p0, Lyv;->d:Llw;

    return-void
.end method


# virtual methods
.method public a(Liz;)V
    .registers 6

    .line 25
    iget-object v0, p0, Lyv;->e:Lgs;

    iget-object v0, v0, Lgs;->aI:Lfd;

    iget-object v1, p0, Lyv;->e:Lgs;

    invoke-virtual {p1, v0, v1}, Liz;->b(Lfd;Lgs;)V

    .line 27
    iget v0, p1, Liz;->c:I

    sget-object v1, Luu;->az:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->h:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto/16 :goto_8a

    .line 28
    :cond_1b
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->r:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_2b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->i:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto :goto_8a

    .line 29
    :cond_2b
    iget v0, p1, Liz;->c:I

    sget-object v1, Luu;->aC:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_3b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->j:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto :goto_8a

    .line 30
    :cond_3b
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->L:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_4b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->l:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto :goto_8a

    .line 31
    :cond_4b
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->S:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_5b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->m:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto :goto_8a

    .line 32
    :cond_5b
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->aX:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_6b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->n:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto :goto_8a

    .line 33
    :cond_6b
    iget v0, p1, Liz;->c:I

    sget-object v1, Lgm;->v:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_7b

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->o:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    goto :goto_8a

    .line 34
    :cond_7b
    iget p1, p1, Liz;->c:I

    sget-object v0, Lgm;->p:Lgm;

    iget v0, v0, Lgm;->bf:I

    if-ne p1, v0, :cond_8a

    iget-object p1, p0, Lyv;->e:Lgs;

    sget-object v0, Lep;->r:Lny;

    invoke-virtual {p1, v0, v2}, Lgs;->a(Lvr;I)V

    :cond_8a
    :goto_8a
    const/4 p1, 0x0

    .line 36
    :goto_8b
    iget-object v0, p0, Lyv;->d:Llw;

    invoke-interface {v0}, Llw;->a()I

    move-result v0

    if-ge p1, v0, :cond_bf

    .line 37
    iget-object v0, p0, Lyv;->d:Llw;

    invoke-interface {v0, p1}, Llw;->f_(I)Liz;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 39
    iget-object v1, p0, Lyv;->d:Llw;

    invoke-interface {v1, p1, v2}, Llw;->a(II)Liz;

    .line 41
    invoke-virtual {v0}, Liz;->a()Lgm;

    move-result-object v1

    invoke-virtual {v1}, Lgm;->j()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 43
    iget-object v1, p0, Lyv;->d:Llw;

    new-instance v3, Liz;

    invoke-virtual {v0}, Liz;->a()Lgm;

    move-result-object v0

    invoke-virtual {v0}, Lgm;->i()Lgm;

    move-result-object v0

    invoke-direct {v3, v0}, Liz;-><init>(Lgm;)V

    invoke-interface {v1, p1, v3}, Llw;->a(ILiz;)V

    :cond_bc
    add-int/lit8 p1, p1, 0x1

    goto :goto_8b

    :cond_bf
    return-void
.end method

.method public b(Liz;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
