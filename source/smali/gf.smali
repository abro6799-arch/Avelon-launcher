###### Class defpackage.gf (gf)
.class Lgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Ldv;

.field final synthetic b:Lci;


# direct methods
.method constructor <init>(Lci;Ldv;)V
    .registers 3

    .line 423
    iput-object p1, p0, Lgf;->b:Lci;

    iput-object p2, p0, Lgf;->a:Ldv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltw;Ltw;)I
    .registers 6

    .line 425
    invoke-virtual {p1}, Ltw;->a()I

    move-result p1

    .line 426
    invoke-virtual {p2}, Ltw;->a()I

    move-result p2

    .line 430
    iget-object v0, p0, Lgf;->b:Lci;

    iget v0, v0, Lci;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 431
    sget-object v0, Ljl;->F:[Lvr;

    aget-object v0, v0, p1

    .line 432
    sget-object v2, Ljl;->F:[Lvr;

    aget-object v2, v2, p2

    goto :goto_39

    .line 433
    :cond_18
    iget-object v0, p0, Lgf;->b:Lci;

    iget v0, v0, Lci;->e:I

    if-ne v0, v1, :cond_27

    .line 434
    sget-object v0, Ljl;->D:[Lvr;

    aget-object v0, v0, p1

    .line 435
    sget-object v2, Ljl;->D:[Lvr;

    aget-object v2, v2, p2

    goto :goto_39

    .line 436
    :cond_27
    iget-object v0, p0, Lgf;->b:Lci;

    iget v0, v0, Lci;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_37

    .line 437
    sget-object v0, Ljl;->E:[Lvr;

    aget-object v0, v0, p1

    .line 438
    sget-object v2, Ljl;->E:[Lvr;

    aget-object v2, v2, p2

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    move-object v2, v0

    :goto_39
    if-nez v0, :cond_3d

    if-eqz v2, :cond_65

    :cond_3d
    if-nez v0, :cond_40

    return v1

    :cond_40
    if-nez v2, :cond_44

    const/4 p1, -0x1

    return p1

    .line 447
    :cond_44
    iget-object v1, p0, Lgf;->b:Lci;

    iget-object v1, v1, Lci;->a:Ldv;

    invoke-static {v1}, Ldv;->c(Ldv;)Lxi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxi;->a(Lvr;)I

    move-result v0

    .line 448
    iget-object v1, p0, Lgf;->b:Lci;

    iget-object v1, v1, Lci;->a:Ldv;

    invoke-static {v1}, Ldv;->c(Ldv;)Lxi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lxi;->a(Lvr;)I

    move-result v1

    if-eq v0, v1, :cond_65

    sub-int/2addr v0, v1

    .line 450
    iget-object p1, p0, Lgf;->b:Lci;

    iget p1, p1, Lci;->f:I

    mul-int/2addr v0, p1

    return v0

    :cond_65
    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 423
    check-cast p1, Ltw;

    check-cast p2, Ltw;

    invoke-virtual {p0, p1, p2}, Lgf;->a(Ltw;Ltw;)I

    move-result p1

    return p1
.end method
