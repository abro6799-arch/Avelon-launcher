###### Class defpackage.ro (ro)
.class public Lro;
.super Lub;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field private final c:Lsj;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private l:Lda;


# direct methods
.method public constructor <init>(Lda;Lsj;IIIILjava/lang/String;)V
    .registers 9

    .line 22
    invoke-direct {p0}, Lub;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lro;->a:Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lro;->b:Z

    .line 23
    iput-object p1, p0, Lro;->l:Lda;

    .line 24
    iput-object p2, p0, Lro;->c:Lsj;

    .line 25
    iput p3, p0, Lro;->d:I

    .line 26
    iput p4, p0, Lro;->e:I

    .line 27
    iput p5, p0, Lro;->f:I

    .line 28
    iput p6, p0, Lro;->g:I

    .line 29
    invoke-virtual {p0, p7}, Lro;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lro;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(CI)V
    .registers 8

    .line 45
    iget-boolean v0, p0, Lro;->b:Z

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lro;->a:Z

    if-nez v0, :cond_a

    goto/16 :goto_8c

    :cond_a
    const/16 v0, 0x9

    if-ne p1, v0, :cond_13

    .line 51
    iget-object v0, p0, Lro;->l:Lda;

    invoke-virtual {v0}, Lda;->j()V

    :cond_13
    const/16 v0, 0x16

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4b

    .line 54
    invoke-static {}, Lda;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, ""

    .line 56
    :cond_20
    iget-object v2, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_32
    if-lez v2, :cond_4b

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lro;->h:Ljava/lang/String;

    :cond_4b
    const/16 v0, 0xe

    if-ne p2, v0, :cond_65

    .line 63
    iget-object p2, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_65

    .line 64
    iget-object p2, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lro;->h:Ljava/lang/String;

    .line 66
    :cond_65
    sget-object p2, Lfp;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_8c

    iget-object p2, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget v0, p0, Lro;->i:I

    if-lt p2, v0, :cond_79

    if-nez v0, :cond_8c

    .line 67
    :cond_79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lro;->h:Ljava/lang/String;

    :cond_8c
    :goto_8c
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 97
    iput p1, p0, Lro;->i:I

    return-void
.end method

.method public a(III)V
    .registers 5

    .line 72
    iget-boolean p3, p0, Lro;->b:Z

    if-eqz p3, :cond_18

    iget p3, p0, Lro;->d:I

    if-lt p1, p3, :cond_18

    iget v0, p0, Lro;->f:I

    add-int/2addr p3, v0

    if-ge p1, p3, :cond_18

    iget p1, p0, Lro;->e:I

    if-lt p2, p1, :cond_18

    iget p3, p0, Lro;->g:I

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 73
    :goto_19
    invoke-virtual {p0, p1}, Lro;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lro;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 77
    iget-boolean v0, p0, Lro;->a:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lro;->j:I

    .line 81
    :cond_9
    iput-boolean p1, p0, Lro;->a:Z

    return-void
.end method

.method public b()V
    .registers 2

    .line 41
    iget v0, p0, Lro;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lro;->j:I

    return-void
.end method

.method public c()V
    .registers 15

    .line 85
    iget v0, p0, Lro;->d:I

    add-int/lit8 v2, v0, -0x1

    iget v1, p0, Lro;->e:I

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lro;->f:I

    add-int/2addr v0, v4

    const/4 v7, 0x1

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lro;->g:I

    add-int/2addr v1, v0

    add-int/lit8 v5, v1, 0x1

    const v6, -0x5f5f60

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lro;->a(IIIII)V

    .line 86
    iget v9, p0, Lro;->d:I

    iget v10, p0, Lro;->e:I

    iget v0, p0, Lro;->f:I

    add-int v11, v9, v0

    iget v0, p0, Lro;->g:I

    add-int v12, v10, v0

    const/high16 v13, -0x1000000

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lro;->a(IIIII)V

    .line 88
    iget-boolean v0, p0, Lro;->b:Z

    if-eqz v0, :cond_6d

    .line 89
    iget-boolean v0, p0, Lro;->a:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lro;->j:I

    div-int/lit8 v0, v0, 0x6

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x0

    .line 90
    :goto_3e
    iget-object v1, p0, Lro;->c:Lsj;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lro;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_4f

    const-string v2, "_"

    goto :goto_51

    :cond_4f
    const-string v2, ""

    :goto_51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lro;->d:I

    add-int/lit8 v3, v0, 0x4

    iget v0, p0, Lro;->e:I

    iget v4, p0, Lro;->g:I

    add-int/lit8 v4, v4, -0x8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    const v5, 0xe0e0e0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lro;->b(Lsj;Ljava/lang/String;III)V

    goto :goto_86

    .line 92
    :cond_6d
    iget-object v7, p0, Lro;->c:Lsj;

    iget-object v8, p0, Lro;->h:Ljava/lang/String;

    iget v0, p0, Lro;->d:I

    add-int/lit8 v9, v0, 0x4

    iget v0, p0, Lro;->e:I

    iget v1, p0, Lro;->g:I

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    const v11, 0x707070

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lro;->b(Lsj;Ljava/lang/String;III)V

    :goto_86
    return-void
.end method
