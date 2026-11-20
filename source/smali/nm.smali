###### Class defpackage.nm (nm)
.class public Lnm;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsn;I)V
    .registers 3

    .line 19
    invoke-direct {p0}, Lki;-><init>()V

    .line 20
    iget p1, p1, Lsn;->aD:I

    iput p1, p0, Lnm;->a:I

    .line 21
    iput p2, p0, Lnm;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnm;->a:I

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lnm;->b:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 30
    iget v0, p0, Lnm;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    iget v0, p0, Lnm;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 35
    invoke-virtual {p1, p0}, Lti;->a(Lnm;)V

    return-void
.end method
