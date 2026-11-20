###### Class defpackage.gg (gg)
.class public Lgg;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Lnb;

.field private i:I


# direct methods
.method public constructor <init>(Lnb;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lgg;->i:I

    .line 13
    iput-object p1, p0, Lgg;->a:Lnb;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 24
    iget v0, p0, Lgg;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgg;->i:I

    .line 25
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_14

    .line 26
    iget-object v0, p0, Lgg;->a:Lnb;

    new-instance v1, Llz;

    invoke-direct {v1}, Llz;-><init>()V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    .line 28
    :cond_14
    iget-object v0, p0, Lgg;->a:Lnb;

    if-eqz v0, :cond_1b

    .line 29
    invoke-virtual {v0}, Lnb;->a()V

    :cond_1b
    return-void
.end method

.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 11

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lgg;->b(I)V

    .line 39
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 41
    iget-object v2, p0, Lgg;->g:Lsj;

    const-string v1, "multiplayer.downloadingTerrain"

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lgg;->c:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lgg;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v5, v0, -0x32

    const v6, 0xffffff

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lgg;->a(Lsj;Ljava/lang/String;III)V

    .line 43
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 2

    .line 20
    iget-object v0, p0, Lgg;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
