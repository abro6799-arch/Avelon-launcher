###### Class defpackage.kb (kb)
.class public Lkb;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Liz;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 59
    iget-object v0, p0, Lkb;->b:[Liz;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 9

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lkb;->a:I

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 29
    new-array v1, v0, [Liz;

    iput-object v1, p0, Lkb;->b:[Liz;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2b

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    if-ltz v2, :cond_28

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 35
    iget-object v5, p0, Lkb;->b:[Liz;

    new-instance v6, Liz;

    invoke-direct {v6, v2, v3, v4}, Liz;-><init>(III)V

    aput-object v6, v5, v1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2b
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 5

    .line 41
    iget v0, p0, Lkb;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    iget-object v0, p0, Lkb;->b:[Liz;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    .line 43
    :goto_c
    iget-object v1, p0, Lkb;->b:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_39

    .line 44
    aget-object v1, v1, v0

    if-nez v1, :cond_1a

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_36

    .line 47
    :cond_1a
    iget v1, v1, Liz;->c:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 48
    iget-object v1, p0, Lkb;->b:[Liz;

    aget-object v1, v1, v0

    iget v1, v1, Liz;->a:I

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 49
    iget-object v1, p0, Lkb;->b:[Liz;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Liz;->i()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_39
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 55
    invoke-virtual {p1, p0}, Lti;->a(Lkb;)V

    return-void
.end method
