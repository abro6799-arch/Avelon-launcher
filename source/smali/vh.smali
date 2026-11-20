###### Class defpackage.vh (vh)
.class public Lvh;
.super Lig;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Lig;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lvh;->i:Z

    return-void
.end method

.method public constructor <init>(FFZ)V
    .registers 4

    .line 89
    invoke-direct {p0}, Lig;-><init>()V

    .line 90
    iput p1, p0, Lvh;->e:F

    .line 91
    iput p2, p0, Lvh;->f:F

    .line 92
    iput-boolean p3, p0, Lvh;->g:Z

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lvh;->i:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 97
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lvh;->e:F

    .line 98
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lvh;->f:F

    .line 99
    invoke-super {p0, p1}, Lig;->a(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 103
    iget v0, p0, Lvh;->e:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 104
    iget v0, p0, Lvh;->f:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 105
    invoke-super {p0, p1}, Lig;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method
