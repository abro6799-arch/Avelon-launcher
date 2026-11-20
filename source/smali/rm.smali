###### Class defpackage.rm (rm)
.class public Lrm;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:F

.field public e:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 69
    iget-object v0, p0, Lrm;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 12

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lrm;->a:D

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lrm;->b:D

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lrm;->c:D

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lrm;->d:F

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 31
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lrm;->e:Ljava/util/Set;

    .line 33
    iget-wide v1, p0, Lrm;->a:D

    double-to-int v1, v1

    .line 34
    iget-wide v2, p0, Lrm;->b:D

    double-to-int v2, v2

    .line 35
    iget-wide v3, p0, Lrm;->c:D

    double-to-int v3, v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v0, :cond_4b

    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    add-int/2addr v5, v1

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    add-int/2addr v6, v2

    .line 39
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    add-int/2addr v7, v3

    .line 40
    iget-object v8, p0, Lrm;->e:Ljava/util/Set;

    new-instance v9, Lwf;

    invoke-direct {v9, v5, v6, v7}, Lwf;-><init>(III)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_4b
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 9

    .line 45
    iget-wide v0, p0, Lrm;->a:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 46
    iget-wide v0, p0, Lrm;->b:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 47
    iget-wide v0, p0, Lrm;->c:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 48
    iget v0, p0, Lrm;->d:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    iget-object v0, p0, Lrm;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 51
    iget-wide v0, p0, Lrm;->a:D

    double-to-int v0, v0

    .line 52
    iget-wide v1, p0, Lrm;->b:D

    double-to-int v1, v1

    .line 53
    iget-wide v2, p0, Lrm;->c:D

    double-to-int v2, v2

    .line 54
    iget-object v3, p0, Lrm;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwf;

    .line 55
    iget v5, v4, Lwf;->a:I

    sub-int/2addr v5, v0

    .line 56
    iget v6, v4, Lwf;->b:I

    sub-int/2addr v6, v1

    .line 57
    iget v4, v4, Lwf;->c:I

    sub-int/2addr v4, v2

    .line 58
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 60
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2c

    :cond_4b
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 65
    invoke-virtual {p1, p0}, Lti;->a(Lrm;)V

    return-void
.end method
