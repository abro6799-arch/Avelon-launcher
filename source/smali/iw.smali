###### Class defpackage.iw (iw)
.class public Liw;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 47
    iget-object v0, p0, Liw;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Liw;->a:I

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Liw;->b:I

    .line 35
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liw;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Liw;->d:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 40
    iget v0, p0, Liw;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 41
    iget v0, p0, Liw;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    iget-object v0, p0, Liw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Liw;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 29
    invoke-virtual {p1, p0}, Lti;->a(Liw;)V

    return-void
.end method
