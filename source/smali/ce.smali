###### Class defpackage.ce (ce)
.class public Lce;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private i:Ljava/lang/String;


# virtual methods
.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    iget v3, p0, Lce;->c:I

    iget v4, p0, Lce;->d:I

    const v5, -0xbfdfe0

    const v6, -0xafeff0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lce;->a(IIIIII)V

    .line 23
    iget-object v1, p0, Lce;->g:Lsj;

    iget-object v2, p0, Lce;->a:Ljava/lang/String;

    iget v0, p0, Lce;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x5a

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lce;->a(Lsj;Ljava/lang/String;III)V

    .line 24
    iget-object v1, p0, Lce;->g:Lsj;

    iget-object v2, p0, Lce;->i:Ljava/lang/String;

    iget v0, p0, Lce;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x6e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lce;->a(Lsj;Ljava/lang/String;III)V

    .line 26
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
