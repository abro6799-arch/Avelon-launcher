###### Class defpackage.ox (ox)
.class public Lox;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lki;-><init>()V

    .line 14
    iput-byte p1, p0, Lox;->a:B

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

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lox;->a:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 26
    iget-byte v0, p0, Lox;->a:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 18
    invoke-virtual {p1, p0}, Lti;->a(Lox;)V

    return-void
.end method
