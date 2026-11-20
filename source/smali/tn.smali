###### Class defpackage.tn (tn)
.class public Ltn;
.super Low;
.source "SourceFile"


# instance fields
.field public a:B

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Low;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Ltn;->a:B

    .line 10
    iput-boolean v0, p0, Ltn;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 25
    iget-byte v0, p0, Ltn;->a:B

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p0, Ltn;->a:B

    .line 26
    invoke-virtual {p0}, Ltn;->y_()V

    return-void
.end method

.method public a(Lfd;III)V
    .registers 13

    add-int/lit8 v0, p3, 0x1

    .line 30
    invoke-virtual {p1, p2, v0, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    sget-object v1, Lln;->a:Lln;

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    add-int/lit8 v0, p3, -0x1

    .line 32
    invoke-virtual {p1, p2, v0, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    .line 35
    sget-object v1, Lln;->e:Lln;

    if-ne v0, v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 36
    :goto_18
    sget-object v2, Lln;->n:Lln;

    if-ne v0, v2, :cond_1d

    const/4 v1, 0x2

    .line 37
    :cond_1d
    sget-object v2, Lln;->p:Lln;

    if-ne v0, v2, :cond_22

    const/4 v1, 0x3

    .line 38
    :cond_22
    sget-object v2, Lln;->d:Lln;

    if-ne v0, v2, :cond_27

    const/4 v1, 0x4

    :cond_27
    move v6, v1

    .line 40
    iget-byte v7, p0, Ltn;->a:B

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lfd;->d(IIIII)V

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    .line 18
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    const-string v0, "note"

    .line 19
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Ltn;->a:B

    if-gez p1, :cond_10

    const/4 p1, 0x0

    .line 20
    iput-byte p1, p0, Ltn;->a:B

    .line 21
    :cond_10
    iget-byte p1, p0, Ltn;->a:B

    const/16 v0, 0x18

    if-le p1, v0, :cond_18

    iput-byte v0, p0, Ltn;->a:B

    :cond_18
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 13
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    const-string v0, "note"

    .line 14
    iget-byte v1, p0, Ltn;->a:B

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method
