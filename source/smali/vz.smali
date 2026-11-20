###### Class defpackage.vz (vz)
.class public Lvz;
.super Lke;
.source "SourceFile"


# instance fields
.field public i:F

.field public j:Z

.field private l:Lht;


# direct methods
.method public constructor <init>(IIILht;Ljava/lang/String;F)V
    .registers 14

    const/16 v4, 0x96

    const/16 v5, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p5

    .line 13
    invoke-direct/range {v0 .. v6}, Lke;-><init>(IIIIILjava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lvz;->j:Z

    .line 14
    iput-object p4, p0, Lvz;->l:Lht;

    .line 15
    iput p6, p0, Lvz;->i:F

    return-void
.end method


# virtual methods
.method protected a(Z)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(II)V
    .registers 3

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lvz;->j:Z

    return-void
.end method

.method protected b(Lnet/minecraft/client/Minecraft;II)V
    .registers 11

    .line 23
    iget-boolean p3, p0, Lvz;->h:Z

    if-nez p3, :cond_5

    return-void

    .line 24
    :cond_5
    iget-boolean p3, p0, Lvz;->j:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3b

    .line 25
    iget p3, p0, Lvz;->c:I

    add-int/lit8 p3, p3, 0x4

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lvz;->a:I

    add-int/lit8 p3, p3, -0x8

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lvz;->i:F

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_20

    .line 26
    iput p3, p0, Lvz;->i:F

    .line 27
    :cond_20
    iget p2, p0, Lvz;->i:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_28

    iput v0, p0, Lvz;->i:F

    .line 28
    :cond_28
    iget-object p2, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p3, p0, Lvz;->l:Lht;

    iget v1, p0, Lvz;->i:F

    invoke-virtual {p2, p3, v1}, Lkv;->a(Lht;F)V

    .line 29
    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p2, p0, Lvz;->l:Lht;

    invoke-virtual {p1, p2}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvz;->e:Ljava/lang/String;

    .line 31
    :cond_3b
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 32
    iget p1, p0, Lvz;->c:I

    iget p2, p0, Lvz;->i:F

    iget p3, p0, Lvz;->a:I

    add-int/lit8 p3, p3, -0x8

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    add-int v1, p1, p2

    iget v2, p0, Lvz;->d:I

    const/4 v3, 0x0

    const/16 v4, 0x42

    const/4 v5, 0x4

    const/16 v6, 0x14

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lvz;->b(IIIIII)V

    .line 33
    iget p1, p0, Lvz;->c:I

    iget p2, p0, Lvz;->i:F

    iget p3, p0, Lvz;->a:I

    add-int/lit8 p3, p3, -0x8

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    add-int/lit8 v1, p1, 0x4

    iget v2, p0, Lvz;->d:I

    const/16 v3, 0xc4

    invoke-virtual/range {v0 .. v6}, Lvz;->b(IIIIII)V

    return-void
.end method

.method public c(Lnet/minecraft/client/Minecraft;II)Z
    .registers 5

    .line 37
    invoke-super {p0, p1, p2, p3}, Lke;->c(Lnet/minecraft/client/Minecraft;II)Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 38
    iget p3, p0, Lvz;->c:I

    add-int/lit8 p3, p3, 0x4

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lvz;->a:I

    add-int/lit8 p3, p3, -0x8

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lvz;->i:F

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1b

    .line 39
    iput p3, p0, Lvz;->i:F

    .line 40
    :cond_1b
    iget p2, p0, Lvz;->i:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_25

    iput p3, p0, Lvz;->i:F

    .line 41
    :cond_25
    iget-object p2, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p3, p0, Lvz;->l:Lht;

    iget v0, p0, Lvz;->i:F

    invoke-virtual {p2, p3, v0}, Lkv;->a(Lht;F)V

    .line 42
    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p2, p0, Lvz;->l:Lht;

    invoke-virtual {p1, p2}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvz;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lvz;->j:Z

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method
