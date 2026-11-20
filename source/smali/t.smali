###### Class defpackage.t (t)
.class public Lt;
.super Lkd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 7
    invoke-direct {p0}, Lkd;-><init>()V

    .line 9
    iget-object v0, p0, Lt;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lt;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Lt;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lt;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lbp;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lt;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lya;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
