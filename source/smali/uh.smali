###### Class defpackage.uh (uh)
.class public Luh;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Luh;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 2

    .line 115
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Luh;->a:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 119
    iget v0, p0, Luh;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 123
    invoke-virtual {p1, p0}, Lti;->a(Luh;)V

    return-void
.end method
