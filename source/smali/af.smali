###### Class defpackage.af (af)
.class public Laf;
.super Lig;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lig;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Laf;->h:Z

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .registers 10

    .line 54
    invoke-direct {p0}, Lig;-><init>()V

    .line 55
    iput-wide p1, p0, Laf;->a:D

    .line 56
    iput-wide p3, p0, Laf;->b:D

    .line 57
    iput-wide p5, p0, Laf;->d:D

    .line 58
    iput-wide p7, p0, Laf;->c:D

    .line 59
    iput-boolean p9, p0, Laf;->g:Z

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Laf;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x21

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 4

    .line 64
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Laf;->a:D

    .line 65
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Laf;->b:D

    .line 66
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Laf;->d:D

    .line 67
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Laf;->c:D

    .line 68
    invoke-super {p0, p1}, Lig;->a(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 72
    iget-wide v0, p0, Laf;->a:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 73
    iget-wide v0, p0, Laf;->b:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 74
    iget-wide v0, p0, Laf;->d:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 75
    iget-wide v0, p0, Laf;->c:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 76
    invoke-super {p0, p1}, Lig;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method
