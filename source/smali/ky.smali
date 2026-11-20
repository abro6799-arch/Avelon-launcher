###### Class defpackage.ky (ky)
.class Lky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lhk;


# direct methods
.method constructor <init>(Lhk;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lky;->a:Lhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldt;Ldt;)I
    .registers 7

    .line 403
    instance-of v0, p1, Ltt;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    instance-of v0, p2, Lis;

    if-eqz v0, :cond_a

    return v1

    .line 406
    :cond_a
    instance-of v0, p2, Ltt;

    const/4 v2, -0x1

    if-eqz v0, :cond_14

    instance-of v0, p1, Lis;

    if-eqz v0, :cond_14

    return v2

    .line 410
    :cond_14
    invoke-interface {p2}, Ldt;->a()I

    move-result v0

    invoke-interface {p1}, Ldt;->a()I

    move-result v3

    if-ge v0, v3, :cond_1f

    return v2

    .line 411
    :cond_1f
    invoke-interface {p2}, Ldt;->a()I

    move-result p2

    invoke-interface {p1}, Ldt;->a()I

    move-result p1

    if-le p2, p1, :cond_2a

    return v1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 399
    check-cast p1, Ldt;

    check-cast p2, Ldt;

    invoke-virtual {p0, p1, p2}, Lky;->a(Ldt;Ldt;)I

    move-result p1

    return p1
.end method
