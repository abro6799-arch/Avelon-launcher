###### Class defpackage.nz (nz)
.class public Lnz;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Lki;-><init>()V

    .line 17
    iput-object p1, p0, Lnz;->b:Ljava/lang/String;

    .line 18
    iput p2, p0, Lnz;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 47
    iget-object v0, p0, Lnz;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 4

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnz;->a:I

    const/16 v0, 0x10

    .line 30
    invoke-static {p1, v0}, Lnz;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnz;->c:J

    .line 32
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lnz;->d:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 36
    iget v0, p0, Lnz;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lnz;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lnz;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 38
    iget-wide v0, p0, Lnz;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 39
    iget-byte v0, p0, Lnz;->d:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 43
    invoke-virtual {p1, p0}, Lti;->a(Lnz;)V

    return-void
.end method
