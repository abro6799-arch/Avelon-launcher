###### Class defpackage.ev (ev)
.class public Lev;
.super Lig;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lig;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lev;->i:Z

    .line 9
    iput-boolean v0, p0, Lev;->h:Z

    return-void
.end method

.method public constructor <init>(DDDDFFZ)V
    .registers 12

    .line 12
    invoke-direct {p0}, Lig;-><init>()V

    .line 13
    iput-wide p1, p0, Lev;->a:D

    .line 14
    iput-wide p3, p0, Lev;->b:D

    .line 15
    iput-wide p5, p0, Lev;->d:D

    .line 16
    iput-wide p7, p0, Lev;->c:D

    .line 17
    iput p9, p0, Lev;->e:F

    .line 18
    iput p10, p0, Lev;->f:F

    .line 19
    iput-boolean p11, p0, Lev;->g:Z

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lev;->i:Z

    .line 21
    iput-boolean p1, p0, Lev;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x29

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 4

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lev;->a:D

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lev;->b:D

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lev;->d:D

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lev;->c:D

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lev;->e:F

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lev;->f:F

    .line 31
    invoke-super {p0, p1}, Lig;->a(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 35
    iget-wide v0, p0, Lev;->a:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 36
    iget-wide v0, p0, Lev;->b:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 37
    iget-wide v0, p0, Lev;->d:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 38
    iget-wide v0, p0, Lev;->c:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 39
    iget v0, p0, Lev;->e:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 40
    iget v0, p0, Lev;->f:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 41
    invoke-super {p0, p1}, Lig;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method
