###### Class defpackage.mm (mm)
.class public Lmm;
.super Lfd;
.source "SourceFile"


# instance fields
.field private C:Ljava/util/LinkedList;

.field private D:Lnb;

.field private E:Luv;

.field private F:Ljx;

.field private G:Ljava/util/Set;

.field private H:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lnb;JI)V
    .registers 11

    .line 37
    new-instance v1, Lwy;

    invoke-direct {v1}, Lwy;-><init>()V

    const-string v2, "MpServer"

    invoke-static {p4}, Lxa;->a(I)Lxa;

    move-result-object v3

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lfd;-><init>(Lwt;Ljava/lang/String;Lxa;J)V

    .line 32
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lmm;->C:Ljava/util/LinkedList;

    .line 114
    new-instance p2, Ljx;

    invoke-direct {p2}, Ljx;-><init>()V

    iput-object p2, p0, Lmm;->F:Ljx;

    .line 115
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lmm;->G:Ljava/util/Set;

    .line 116
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lmm;->H:Ljava/util/Set;

    .line 39
    iput-object p1, p0, Lmm;->D:Lnb;

    .line 40
    new-instance p2, Lbr;

    const/16 p3, 0x8

    const/16 p4, 0x40

    invoke-direct {p2, p3, p4, p3}, Lbr;-><init>(III)V

    invoke-virtual {p0, p2}, Lmm;->a(Lbr;)V

    .line 41
    iget-object p1, p1, Lnb;->b:Lhc;

    iput-object p1, p0, Lmm;->z:Lhc;

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .registers 12

    if-eqz p3, :cond_8

    .line 107
    iget-object v0, p0, Lmm;->E:Luv;

    invoke-virtual {v0, p1, p2}, Luv;->c(II)Llm;

    goto :goto_d

    .line 108
    :cond_8
    iget-object v0, p0, Lmm;->E:Luv;

    invoke-virtual {v0, p1, p2}, Luv;->d(II)V

    :goto_d
    if-nez p3, :cond_1e

    mul-int/lit8 v2, p1, 0x10

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x10

    add-int/lit8 v5, v2, 0xf

    const/16 v6, 0x80

    add-int/lit8 v7, v4, 0xf

    move-object v1, p0

    .line 110
    invoke-virtual/range {v1 .. v7}, Lmm;->b(IIIIII)V

    :cond_1e
    return-void
.end method

.method public a(ILsn;)V
    .registers 4

    .line 149
    invoke-virtual {p0, p1}, Lmm;->b(I)Lsn;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {p0, v0}, Lmm;->e(Lsn;)V

    .line 154
    :cond_9
    iget-object v0, p0, Lmm;->G:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iput p1, p2, Lsn;->aD:I

    .line 156
    invoke-virtual {p0, p2}, Lmm;->b(Lsn;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 157
    iget-object v0, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_1b
    iget-object v0, p0, Lmm;->F:Ljx;

    invoke-virtual {v0, p1, p2}, Ljx;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IIIII)Z
    .registers 13

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lmm;->a(III)I

    move-result v5

    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lmm;->e(III)I

    move-result v6

    .line 188
    invoke-super/range {p0 .. p5}, Lfd;->a(IIIII)Z

    move-result p4

    if-eqz p4, :cond_1f

    .line 189
    iget-object p4, p0, Lmm;->C:Ljava/util/LinkedList;

    new-instance p5, Ltm;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ltm;-><init>(Lmm;IIIII)V

    invoke-virtual {p4, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public a(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected b()Lcl;
    .registers 2

    .line 82
    new-instance v0, Luv;

    invoke-direct {v0, p0}, Luv;-><init>(Lfd;)V

    iput-object v0, p0, Lmm;->E:Luv;

    return-object v0
.end method

.method public b(I)Lsn;
    .registers 3

    .line 163
    iget-object v0, p0, Lmm;->F:Ljx;

    invoke-virtual {v0, p1}, Ljx;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsn;

    return-object p1
.end method

.method public b(Lsn;)Z
    .registers 4

    .line 119
    invoke-super {p0, p1}, Lfd;->b(Lsn;)Z

    move-result v0

    .line 120
    iget-object v1, p0, Lmm;->G:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_10

    .line 123
    iget-object v1, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    return v0
.end method

.method public c(I)Lsn;
    .registers 3

    .line 167
    iget-object v0, p0, Lmm;->F:Ljx;

    invoke-virtual {v0, p1}, Ljx;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsn;

    if-eqz p1, :cond_12

    .line 169
    iget-object v0, p0, Lmm;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0, p1}, Lmm;->e(Lsn;)V

    :cond_12
    return-object p1
.end method

.method public c(IIIII)V
    .registers 6

    return-void
.end method

.method public c(IIIIII)V
    .registers 10

    const/4 v0, 0x0

    .line 72
    :goto_1
    iget-object v1, p0, Lmm;->C:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 73
    iget-object v1, p0, Lmm;->C:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltm;

    .line 74
    iget v2, v1, Ltm;->a:I

    if-lt v2, p1, :cond_31

    iget v2, v1, Ltm;->b:I

    if-lt v2, p2, :cond_31

    iget v2, v1, Ltm;->c:I

    if-lt v2, p3, :cond_31

    iget v2, v1, Ltm;->a:I

    if-gt v2, p4, :cond_31

    iget v2, v1, Ltm;->b:I

    if-gt v2, p5, :cond_31

    iget v1, v1, Ltm;->c:I

    if-gt v1, p6, :cond_31

    .line 75
    iget-object v1, p0, Lmm;->C:Ljava/util/LinkedList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    return-void
.end method

.method protected c(Lsn;)V
    .registers 3

    .line 135
    invoke-super {p0, p1}, Lfd;->c(Lsn;)V

    .line 136
    iget-object v0, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    iget-object v0, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public c(IIII)Z
    .registers 13

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lmm;->a(III)I

    move-result v5

    .line 197
    invoke-virtual {p0, p1, p2, p3}, Lmm;->e(III)I

    move-result v6

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Lfd;->c(IIII)Z

    move-result p4

    if-eqz p4, :cond_1f

    .line 199
    iget-object p4, p0, Lmm;->C:Ljava/util/LinkedList;

    new-instance v7, Ltm;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ltm;-><init>(Lmm;IIIII)V

    invoke-virtual {p4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .registers 4

    .line 87
    new-instance v0, Lbr;

    const/16 v1, 0x8

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v1}, Lbr;-><init>(III)V

    invoke-virtual {p0, v0}, Lmm;->a(Lbr;)V

    return-void
.end method

.method protected d(Lsn;)V
    .registers 3

    .line 142
    invoke-super {p0, p1}, Lfd;->d(Lsn;)V

    .line 143
    iget-object v0, p0, Lmm;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 144
    iget-object v0, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public e(Lsn;)V
    .registers 3

    .line 130
    invoke-super {p0, p1}, Lfd;->e(Lsn;)V

    .line 131
    iget-object v0, p0, Lmm;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(IIII)Z
    .registers 13

    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lmm;->a(III)I

    move-result v5

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lmm;->e(III)I

    move-result v6

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Lfd;->e(IIII)Z

    move-result p4

    if-eqz p4, :cond_1f

    .line 179
    iget-object p4, p0, Lmm;->C:Ljava/util/LinkedList;

    new-instance v7, Ltm;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ltm;-><init>(Lmm;IIIII)V

    invoke-virtual {p4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public f(IIIII)Z
    .registers 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    .line 206
    invoke-virtual/range {v0 .. v6}, Lmm;->c(IIIIII)V

    .line 207
    invoke-super/range {p0 .. p5}, Lfd;->a(IIIII)Z

    move-result p5

    if-eqz p5, :cond_15

    .line 210
    invoke-virtual {p0, p1, p2, p3, p4}, Lmm;->g(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public l()V
    .registers 10

    .line 45
    invoke-virtual {p0}, Lmm;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lmm;->a(J)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p0, v0}, Lmm;->a(F)I

    move-result v0

    .line 47
    iget v1, p0, Lmm;->f:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2e

    .line 48
    iput v0, p0, Lmm;->f:I

    move v0, v2

    .line 49
    :goto_18
    iget-object v1, p0, Lmm;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 50
    iget-object v1, p0, Lmm;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpm;

    invoke-interface {v1}, Lpm;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2e
    move v0, v2

    :goto_2f
    const/16 v1, 0xa

    if-ge v0, v1, :cond_55

    .line 54
    iget-object v1, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 55
    iget-object v1, p0, Lmm;->H:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsn;

    .line 56
    iget-object v3, p0, Lmm;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {p0, v1}, Lmm;->b(Lsn;)Z

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 59
    :cond_55
    iget-object v0, p0, Lmm;->D:Lnb;

    invoke-virtual {v0}, Lnb;->a()V

    .line 60
    :goto_5a
    iget-object v0, p0, Lmm;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_94

    .line 61
    iget-object v0, p0, Lmm;->C:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm;

    .line 62
    iget v1, v0, Ltm;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ltm;->d:I

    if-nez v1, :cond_91

    .line 63
    iget v4, v0, Ltm;->a:I

    iget v5, v0, Ltm;->b:I

    iget v6, v0, Ltm;->c:I

    iget v7, v0, Ltm;->e:I

    iget v8, v0, Ltm;->f:I

    move-object v3, p0

    invoke-super/range {v3 .. v8}, Lfd;->a(IIIII)Z

    .line 64
    iget v1, v0, Ltm;->a:I

    iget v3, v0, Ltm;->b:I

    iget v0, v0, Ltm;->c:I

    invoke-super {p0, v1, v3, v0}, Lfd;->j(III)V

    .line 65
    iget-object v0, p0, Lmm;->C:Ljava/util/LinkedList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_94
    return-void
.end method

.method protected m()V
    .registers 8

    .line 227
    iget-object v0, p0, Lmm;->t:Lxa;

    iget-boolean v0, v0, Lxa;->e:Z

    if-eqz v0, :cond_7

    return-void

    .line 229
    :cond_7
    iget v0, p0, Lmm;->m:I

    if-lez v0, :cond_11

    .line 230
    iget v0, p0, Lmm;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmm;->m:I

    .line 233
    :cond_11
    iget v0, p0, Lmm;->j:F

    iput v0, p0, Lmm;->i:F

    .line 234
    iget-object v0, p0, Lmm;->x:Lei;

    invoke-virtual {v0}, Lei;->o()Z

    move-result v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_2a

    .line 235
    iget v0, p0, Lmm;->j:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lmm;->j:F

    goto :goto_31

    .line 237
    :cond_2a
    iget v0, p0, Lmm;->j:F

    float-to-double v3, v0

    sub-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lmm;->j:F

    .line 239
    :goto_31
    iget v0, p0, Lmm;->j:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3a

    iput v3, p0, Lmm;->j:F

    .line 240
    :cond_3a
    iget v0, p0, Lmm;->j:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_44

    iput v4, p0, Lmm;->j:F

    .line 242
    :cond_44
    iget v0, p0, Lmm;->l:F

    iput v0, p0, Lmm;->k:F

    .line 243
    iget-object v0, p0, Lmm;->x:Lei;

    invoke-virtual {v0}, Lei;->m()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 244
    iget v0, p0, Lmm;->l:F

    float-to-double v5, v0

    add-double/2addr v5, v1

    double-to-float v0, v5

    iput v0, p0, Lmm;->l:F

    goto :goto_5f

    .line 246
    :cond_58
    iget v0, p0, Lmm;->l:F

    float-to-double v5, v0

    sub-double/2addr v5, v1

    double-to-float v0, v5

    iput v0, p0, Lmm;->l:F

    .line 248
    :goto_5f
    iget v0, p0, Lmm;->l:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_67

    iput v3, p0, Lmm;->l:F

    .line 249
    :cond_67
    iget v0, p0, Lmm;->l:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6f

    iput v4, p0, Lmm;->l:F

    :cond_6f
    return-void
.end method

.method protected n()V
    .registers 1

    return-void
.end method

.method public q()V
    .registers 4

    .line 223
    iget-object v0, p0, Lmm;->D:Lnb;

    new-instance v1, Lyr;

    const-string v2, "Quitting"

    invoke-direct {v1, v2}, Lyr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnb;->a(Lki;)V

    return-void
.end method
