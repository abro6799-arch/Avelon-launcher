###### Class defpackage.wl (wl)
.class public Lwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field private a:[Liz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Liz;

    .line 8
    iput-object v0, p0, Lwl;->a:[Liz;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(II)Liz;
    .registers 5

    .line 23
    iget-object p2, p0, Lwl;->a:[Liz;

    aget-object v0, p2, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 25
    aput-object v1, p2, p1

    return-object v0

    :cond_a
    return-object v1
.end method

.method public a(ILiz;)V
    .registers 4

    .line 32
    iget-object v0, p0, Lwl;->a:[Liz;

    aput-object p2, v0, p1

    return-void
.end method

.method public a_(Lgs;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Result"

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public f_(I)Liz;
    .registers 3

    .line 15
    iget-object v0, p0, Lwl;->a:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public y_()V
    .registers 1

    return-void
.end method
