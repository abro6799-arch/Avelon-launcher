###### Class defpackage.se (se)
.class public Lse;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lse;->k:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 21
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lse;->a:I

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lse;->b:I

    .line 23
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lse;->c:Z

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 27
    iget v0, p0, Lse;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 28
    iget v0, p0, Lse;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    iget-boolean v0, p0, Lse;->c:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 33
    invoke-virtual {p1, p0}, Lti;->a(Lse;)V

    return-void
.end method
