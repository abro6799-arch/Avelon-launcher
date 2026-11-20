###### Class defpackage.rv (rv)
.class public Lrv;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 2

    .line 18
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lrv;->a:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 22
    iget v0, p0, Lrv;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 26
    invoke-virtual {p1, p0}, Lti;->a(Lrv;)V

    return-void
.end method
