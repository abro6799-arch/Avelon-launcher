###### Class defpackage.ny (ny)
.class public Lny;
.super Lvr;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lny;

.field public final d:Liz;

.field private final l:Ljava/lang/String;

.field private m:Lgt;

.field private n:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IILgm;Lny;)V
    .registers 14

    .line 17
    new-instance v5, Liz;

    invoke-direct {v5, p5}, Liz;-><init>(Lgm;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lny;-><init>(ILjava/lang/String;IILiz;Lny;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILiz;Lny;)V
    .registers 9

    const/high16 v0, 0x500000

    add-int/2addr p1, v0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "achievement."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lvr;-><init>(ILjava/lang/String;)V

    .line 26
    iput-object p5, p0, Lny;->d:Liz;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".desc"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lny;->l:Ljava/lang/String;

    .line 29
    iput p3, p0, Lny;->a:I

    .line 30
    iput p4, p0, Lny;->b:I

    .line 32
    sget p1, Lep;->a:I

    if-ge p3, p1, :cond_3b

    sput p3, Lep;->a:I

    .line 33
    :cond_3b
    sget p1, Lep;->b:I

    if-ge p4, p1, :cond_41

    sput p4, Lep;->b:I

    .line 34
    :cond_41
    sget p1, Lep;->c:I

    if-le p3, p1, :cond_47

    sput p3, Lep;->c:I

    .line 35
    :cond_47
    sget p1, Lep;->d:I

    if-le p4, p1, :cond_4d

    sput p4, Lep;->d:I

    .line 36
    :cond_4d
    iput-object p6, p0, Lny;->c:Lny;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILuu;Lny;)V
    .registers 14

    .line 21
    new-instance v5, Liz;

    invoke-direct {v5, p5}, Liz;-><init>(Luu;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lny;-><init>(ILjava/lang/String;IILiz;Lny;)V

    return-void
.end method


# virtual methods
.method public a()Lny;
    .registers 2

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lny;->g:Z

    return-object p0
.end method

.method public a(Lgt;)Lny;
    .registers 2

    .line 70
    iput-object p1, p0, Lny;->m:Lgt;

    return-object p0
.end method

.method public b()Lny;
    .registers 2

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lny;->n:Z

    return-object p0
.end method

.method public c()Lny;
    .registers 2

    .line 51
    invoke-super {p0}, Lvr;->g()Lvr;

    .line 53
    sget-object v0, Lep;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 63
    iget-object v0, p0, Lny;->m:Lgt;

    if-eqz v0, :cond_b

    .line 64
    iget-object v1, p0, Lny;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_b
    iget-object v0, p0, Lny;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lny;->n:Z

    return v0
.end method

.method public bridge synthetic g()Lvr;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lny;->c()Lny;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lvr;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lny;->a()Lny;

    move-result-object v0

    return-object v0
.end method
