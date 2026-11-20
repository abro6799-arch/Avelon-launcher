###### Class defpackage.ts (ts)
.class public Lts;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsn;I)V
    .registers 3

    .line 18
    invoke-direct {p0}, Lki;-><init>()V

    .line 19
    iget p1, p1, Lsn;->aD:I

    iput p1, p0, Lts;->a:I

    .line 20
    iput p2, p0, Lts;->b:I

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

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lts;->a:I

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lts;->b:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 29
    iget v0, p0, Lts;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    iget v0, p0, Lts;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 34
    invoke-virtual {p1, p0}, Lti;->a(Lts;)V

    return-void
.end method
