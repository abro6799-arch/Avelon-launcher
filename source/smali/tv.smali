###### Class defpackage.tv (tv)
.class public Ltv;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ltv;->k:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ltv;->a:I

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Ltv;->b:I

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ltv;->c:I

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Ltv;->d:I

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Ltv;->e:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 33
    iget v0, p0, Ltv;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    iget v0, p0, Ltv;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 35
    iget v0, p0, Ltv;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    iget v0, p0, Ltv;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 37
    iget v0, p0, Ltv;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 41
    invoke-virtual {p1, p0}, Lti;->a(Ltv;)V

    return-void
.end method
