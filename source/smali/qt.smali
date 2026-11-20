###### Class defpackage.qt (qt)
.class public Lqt;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Lda;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method public constructor <init>(Lda;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 24
    invoke-direct {p0}, Lda;-><init>()V

    .line 25
    iput-object p1, p0, Lqt;->a:Lda;

    .line 26
    iput-object p2, p0, Lqt;->i:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lqt;->j:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lqt;->l:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lqt;->m:Ljava/lang/String;

    .line 30
    iput p6, p0, Lqt;->n:I

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 16

    .line 43
    invoke-virtual {p0}, Lqt;->i()V

    .line 45
    iget-object v1, p0, Lqt;->g:Lsj;

    iget-object v2, p0, Lqt;->i:Ljava/lang/String;

    iget v0, p0, Lqt;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x46

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lqt;->a(Lsj;Ljava/lang/String;III)V

    .line 46
    iget-object v7, p0, Lqt;->g:Lsj;

    iget-object v8, p0, Lqt;->j:Ljava/lang/String;

    iget v0, p0, Lqt;->c:I

    div-int/lit8 v9, v0, 0x2

    const/16 v10, 0x5a

    const v11, 0xffffff

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lqt;->a(Lsj;Ljava/lang/String;III)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lqt;->a:Lda;

    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iget v1, p0, Lqt;->n:I

    invoke-virtual {v0, p1, v1}, Lda;->a(ZI)V

    return-void
.end method

.method public b()V
    .registers 7

    .line 34
    iget-object v0, p0, Lqt;->e:Ljava/util/List;

    new-instance v1, Lab;

    iget v2, p0, Lqt;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, -0x9b

    const/4 v3, 0x0

    add-int/2addr v2, v3

    iget v4, p0, Lqt;->d:I

    div-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x60

    iget-object v5, p0, Lqt;->l:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Lab;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lqt;->e:Ljava/util/List;

    new-instance v1, Lab;

    iget v2, p0, Lqt;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, -0x9b

    add-int/lit16 v2, v2, 0xa0

    iget v3, p0, Lqt;->d:I

    div-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x60

    iget-object v4, p0, Lqt;->m:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lab;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
