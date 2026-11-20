###### Class defpackage.ci (ci)
.class Lci;
.super Liv;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldv;


# direct methods
.method public constructor <init>(Ldv;)V
    .registers 8

    .line 403
    iput-object p1, p0, Lci;->a:Ldv;

    .line 404
    invoke-direct {p0, p1}, Liv;-><init>(Ldv;)V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lci;->c:Ljava/util/List;

    .line 407
    sget-object v0, Ljl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw;

    .line 409
    invoke-virtual {v1}, Ltw;->a()I

    move-result v2

    .line 411
    invoke-static {p1}, Ldv;->c(Ldv;)Lxi;

    move-result-object v3

    invoke-virtual {v3, v1}, Lxi;->a(Lvr;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2e

    goto :goto_59

    .line 413
    :cond_2e
    sget-object v3, Ljl;->F:[Lvr;

    aget-object v3, v3, v2

    if-eqz v3, :cond_43

    invoke-static {p1}, Ldv;->c(Ldv;)Lxi;

    move-result-object v3

    sget-object v5, Ljl;->F:[Lvr;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lxi;->a(Lvr;)I

    move-result v3

    if-lez v3, :cond_43

    goto :goto_59

    .line 415
    :cond_43
    sget-object v3, Ljl;->D:[Lvr;

    aget-object v3, v3, v2

    if-eqz v3, :cond_58

    invoke-static {p1}, Ldv;->c(Ldv;)Lxi;

    move-result-object v3

    sget-object v5, Ljl;->D:[Lvr;

    aget-object v2, v5, v2

    invoke-virtual {v3, v2}, Lxi;->a(Lvr;)I

    move-result v2

    if-lez v2, :cond_58

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    if-eqz v4, :cond_12

    .line 419
    iget-object v2, p0, Lci;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 423
    :cond_61
    new-instance v0, Lgf;

    invoke-direct {v0, p0, p1}, Lgf;-><init>(Lci;Ldv;)V

    iput-object v0, p0, Lci;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "stat.crafted"

    return-object p1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const-string p1, "stat.used"

    return-object p1

    :cond_c
    const-string p1, "stat.depleted"

    return-object p1
.end method

.method protected a(IIIILnw;)V
    .registers 11

    .line 485
    invoke-virtual {p0, p1}, Lci;->b(I)Ltw;

    move-result-object p4

    .line 486
    invoke-virtual {p4}, Ltw;->a()I

    move-result p5

    .line 488
    iget-object v0, p0, Lci;->a:Ldv;

    add-int/lit8 v1, p2, 0x28

    invoke-static {v0, v1, p3, p5}, Ldv;->a(Ldv;III)V

    .line 490
    sget-object v0, Ljl;->F:[Lvr;

    aget-object v0, v0, p5

    check-cast v0, Ltw;

    add-int/lit8 v1, p2, 0x73

    rem-int/lit8 p1, p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1f

    move v4, v2

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    invoke-virtual {p0, v0, v1, p3, v4}, Lci;->a(Ltw;IIZ)V

    .line 491
    sget-object v0, Ljl;->D:[Lvr;

    aget-object p5, v0, p5

    check-cast p5, Ltw;

    add-int/lit16 v0, p2, 0xa5

    if-nez p1, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    invoke-virtual {p0, p5, v0, p3, v1}, Lci;->a(Ltw;IIZ)V

    add-int/lit16 p2, p2, 0xd7

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    move v2, v3

    .line 492
    :goto_39
    invoke-virtual {p0, p4, p2, p3, v2}, Lci;->a(Ltw;IIZ)V

    return-void
.end method

.method protected a(IILnw;)V
    .registers 9

    .line 463
    invoke-super {p0, p1, p2, p3}, Liv;->a(IILnw;)V

    .line 465
    iget p3, p0, Lci;->b:I

    const/16 v0, 0x48

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-nez p3, :cond_19

    .line 466
    iget-object p3, p0, Lci;->a:Ldv;

    add-int/lit8 v3, p1, 0x73

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x1

    add-int/2addr v4, v1

    invoke-static {p3, v3, v4, v0, v2}, Ldv;->a(Ldv;IIII)V

    goto :goto_23

    .line 468
    :cond_19
    iget-object p3, p0, Lci;->a:Ldv;

    add-int/lit8 v3, p1, 0x73

    sub-int/2addr v3, v2

    add-int/lit8 v4, p2, 0x1

    invoke-static {p3, v3, v4, v0, v2}, Ldv;->a(Ldv;IIII)V

    .line 470
    :goto_23
    iget p3, p0, Lci;->b:I

    if-ne p3, v1, :cond_34

    .line 471
    iget-object p3, p0, Lci;->a:Ldv;

    add-int/lit16 v0, p1, 0xa5

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/lit8 v3, p2, 0x1

    add-int/2addr v3, v1

    invoke-static {p3, v0, v3, v2, v2}, Ldv;->a(Ldv;IIII)V

    goto :goto_3e

    .line 473
    :cond_34
    iget-object p3, p0, Lci;->a:Ldv;

    add-int/lit16 v0, p1, 0xa5

    sub-int/2addr v0, v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {p3, v0, v3, v2, v2}, Ldv;->a(Ldv;IIII)V

    .line 475
    :goto_3e
    iget p3, p0, Lci;->b:I

    const/4 v0, 0x2

    const/16 v3, 0x24

    if-ne p3, v0, :cond_51

    .line 476
    iget-object p3, p0, Lci;->a:Ldv;

    add-int/lit16 p1, p1, 0xd7

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    add-int/2addr p2, v1

    invoke-static {p3, p1, p2, v3, v2}, Ldv;->a(Ldv;IIII)V

    goto :goto_5a

    .line 478
    :cond_51
    iget-object p3, p0, Lci;->a:Ldv;

    add-int/lit16 p1, p1, 0xd7

    sub-int/2addr p1, v2

    add-int/2addr p2, v1

    invoke-static {p3, p1, p2, v3, v2}, Ldv;->a(Ldv;IIII)V

    :goto_5a
    return-void
.end method
