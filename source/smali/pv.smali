###### Class defpackage.pv (pv)
.class Lpv;
.super Lgp;
.source "SourceFile"


# instance fields
.field final synthetic d:I

.field final synthetic e:Laa;


# direct methods
.method constructor <init>(Laa;Llw;IIII)V
    .registers 7

    .line 41
    iput-object p1, p0, Lpv;->e:Laa;

    iput p6, p0, Lpv;->d:I

    invoke-direct {p0, p2, p3, p4, p5}, Lgp;-><init>(Llw;III)V

    return-void
.end method


# virtual methods
.method public b(Liz;)Z
    .registers 5

    .line 47
    invoke-virtual {p1}, Liz;->a()Lgm;

    move-result-object v0

    instance-of v0, v0, Lwa;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 48
    invoke-virtual {p1}, Liz;->a()Lgm;

    move-result-object p1

    check-cast p1, Lwa;

    iget p1, p1, Lwa;->bk:I

    iget v0, p0, Lpv;->d:I

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 50
    :cond_19
    invoke-virtual {p1}, Liz;->a()Lgm;

    move-result-object p1

    iget p1, p1, Lgm;->bf:I

    sget-object v0, Luu;->bb:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_2c

    .line 51
    iget p1, p0, Lpv;->d:I

    if-nez p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1

    :cond_2c
    return v2
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
