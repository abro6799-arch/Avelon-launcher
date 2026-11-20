###### Class defpackage.og (og)
.class public Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Llw;

.field private c:Llw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Llw;Llw;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Log;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Log;->b:Llw;

    .line 13
    iput-object p3, p0, Log;->c:Llw;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 17
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0}, Llw;->a()I

    move-result v0

    iget-object v1, p0, Log;->c:Llw;

    invoke-interface {v1}, Llw;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(II)Liz;
    .registers 5

    .line 30
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0}, Llw;->a()I

    move-result v0

    if-lt p1, v0, :cond_16

    iget-object v0, p0, Log;->c:Llw;

    iget-object v1, p0, Log;->b:Llw;

    invoke-interface {v1}, Llw;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Llw;->a(II)Liz;

    move-result-object p1

    return-object p1

    .line 31
    :cond_16
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0, p1, p2}, Llw;->a(II)Liz;

    move-result-object p1

    return-object p1
.end method

.method public a(ILiz;)V
    .registers 5

    .line 35
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0}, Llw;->a()I

    move-result v0

    if-lt p1, v0, :cond_15

    iget-object v0, p0, Log;->c:Llw;

    iget-object v1, p0, Log;->b:Llw;

    invoke-interface {v1}, Llw;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Llw;->a(ILiz;)V

    goto :goto_1a

    .line 36
    :cond_15
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0, p1, p2}, Llw;->a(ILiz;)V

    :goto_1a
    return-void
.end method

.method public a_(Lgs;)Z
    .registers 3

    .line 49
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0, p1}, Llw;->a_(Lgs;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Log;->c:Llw;

    invoke-interface {v0, p1}, Llw;->a_(Lgs;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Log;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 40
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0}, Llw;->d()I

    move-result v0

    return v0
.end method

.method public f_(I)Liz;
    .registers 4

    .line 25
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0}, Llw;->a()I

    move-result v0

    if-lt p1, v0, :cond_16

    iget-object v0, p0, Log;->c:Llw;

    iget-object v1, p0, Log;->b:Llw;

    invoke-interface {v1}, Llw;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Llw;->f_(I)Liz;

    move-result-object p1

    return-object p1

    .line 26
    :cond_16
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0, p1}, Llw;->f_(I)Liz;

    move-result-object p1

    return-object p1
.end method

.method public y_()V
    .registers 2

    .line 44
    iget-object v0, p0, Log;->b:Llw;

    invoke-interface {v0}, Llw;->y_()V

    .line 45
    iget-object v0, p0, Log;->c:Llw;

    invoke-interface {v0}, Llw;->y_()V

    return-void
.end method
