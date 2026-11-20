###### Class defpackage.pr (pr)
.class Lpr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Ldv;

.field final synthetic b:Lga;


# direct methods
.method constructor <init>(Lga;Ldv;)V
    .registers 3

    .line 534
    iput-object p1, p0, Lpr;->b:Lga;

    iput-object p2, p0, Lpr;->a:Ldv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltw;Ltw;)I
    .registers 6

    .line 536
    invoke-virtual {p1}, Ltw;->a()I

    move-result p1

    .line 537
    invoke-virtual {p2}, Ltw;->a()I

    move-result p2

    .line 541
    iget-object v0, p0, Lpr;->b:Lga;

    iget v0, v0, Lga;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    .line 542
    sget-object v0, Ljl;->C:[Lvr;

    aget-object v0, v0, p1

    .line 543
    sget-object v1, Ljl;->C:[Lvr;

    aget-object v1, v1, p2

    goto :goto_39

    .line 544
    :cond_19
    iget-object v0, p0, Lpr;->b:Lga;

    iget v0, v0, Lga;->e:I

    if-nez v0, :cond_28

    .line 545
    sget-object v0, Ljl;->D:[Lvr;

    aget-object v0, v0, p1

    .line 546
    sget-object v1, Ljl;->D:[Lvr;

    aget-object v1, v1, p2

    goto :goto_39

    .line 547
    :cond_28
    iget-object v0, p0, Lpr;->b:Lga;

    iget v0, v0, Lga;->e:I

    if-ne v0, v2, :cond_37

    .line 548
    sget-object v0, Ljl;->E:[Lvr;

    aget-object v0, v0, p1

    .line 549
    sget-object v1, Ljl;->E:[Lvr;

    aget-object v1, v1, p2

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    move-object v1, v0

    :goto_39
    if-nez v0, :cond_3d

    if-eqz v1, :cond_65

    :cond_3d
    if-nez v0, :cond_40

    return v2

    :cond_40
    if-nez v1, :cond_44

    const/4 p1, -0x1

    return p1

    .line 558
    :cond_44
    iget-object v2, p0, Lpr;->b:Lga;

    iget-object v2, v2, Lga;->a:Ldv;

    invoke-static {v2}, Ldv;->c(Ldv;)Lxi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lxi;->a(Lvr;)I

    move-result v0

    .line 559
    iget-object v2, p0, Lpr;->b:Lga;

    iget-object v2, v2, Lga;->a:Ldv;

    invoke-static {v2}, Ldv;->c(Ldv;)Lxi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lxi;->a(Lvr;)I

    move-result v1

    if-eq v0, v1, :cond_65

    sub-int/2addr v0, v1

    .line 561
    iget-object p1, p0, Lpr;->b:Lga;

    iget p1, p1, Lga;->f:I

    mul-int/2addr v0, p1

    return v0

    :cond_65
    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 534
    check-cast p1, Ltw;

    check-cast p2, Ltw;

    invoke-virtual {p0, p1, p2}, Lpr;->a(Ltw;Ltw;)I

    move-result p1

    return p1
.end method
