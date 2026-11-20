###### Class defpackage.mn (mn)
.class public Lmn;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lki;-><init>()V

    .line 12
    iput p1, p0, Lmn;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 2

    .line 20
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lmn;->a:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 24
    iget v0, p0, Lmn;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 16
    invoke-virtual {p1, p0}, Lti;->a(Lmn;)V

    return-void
.end method
