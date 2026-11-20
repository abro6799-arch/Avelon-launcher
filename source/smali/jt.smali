###### Class defpackage.jt (jt)
.class public final Ljt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lyp;


# direct methods
.method constructor <init>(Lyp;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ljt;->a:Lyp;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Ljt;->a:Lyp;

    invoke-interface {v0}, Lyp;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljt;)Ljt;
    .registers 4

    .line 68
    new-instance v0, Ljt;

    new-instance v1, Lj;

    invoke-direct {v1, p0, p1}, Lj;-><init>(Ljt;Ljt;)V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3

    .line 41
    iget-object v0, p0, Ljt;->a:Lyp;

    invoke-interface {v0, p1}, Lyp;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 52
    iget-object v0, p0, Ljt;->a:Lyp;

    invoke-interface {v0, p1}, Lyp;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Ljt;->a:Lyp;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
