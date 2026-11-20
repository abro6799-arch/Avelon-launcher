###### Class defpackage.md (md)
.class public Lmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:Lls;


# direct methods
.method public constructor <init>(Lls;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmd;->a:Lls;

    return-void
.end method


# virtual methods
.method public a(Ldk;Ldk;)I
    .registers 10

    .line 16
    iget-boolean v0, p1, Ldk;->o:Z

    .line 17
    iget-boolean v1, p2, Ldk;->o:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    return v2

    :cond_a
    const/4 v3, -0x1

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    return v3

    .line 21
    :cond_10
    iget-object v0, p0, Lmd;->a:Lls;

    invoke-virtual {p1, v0}, Ldk;->a(Lsn;)F

    move-result v0

    float-to-double v0, v0

    .line 22
    iget-object v4, p0, Lmd;->a:Lls;

    invoke-virtual {p2, v4}, Ldk;->a(Lsn;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v6, v0, v4

    if-gez v6, :cond_23

    return v2

    :cond_23
    cmpl-double v0, v0, v4

    if-lez v0, :cond_28

    return v3

    .line 27
    :cond_28
    iget p1, p1, Ldk;->w:I

    iget p2, p2, Ldk;->w:I

    if-ge p1, p2, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 8
    check-cast p1, Ldk;

    check-cast p2, Ldk;

    invoke-virtual {p0, p1, p2}, Lmd;->a(Ldk;Ldk;)I

    move-result p1

    return p1
.end method
