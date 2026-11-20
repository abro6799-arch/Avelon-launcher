###### Class defpackage.os (os)
.class public Los;
.super Lob;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:I


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lob;-><init>(Lnet/minecraft/client/Minecraft;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Los;->c:I

    .line 12
    iput p1, p0, Los;->d:I

    .line 13
    iput p1, p0, Los;->e:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Los;->f:F

    .line 15
    iput p1, p0, Los;->g:F

    .line 16
    iput p1, p0, Los;->h:F

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Los;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Los;->f:F

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Los;->i:I

    return-void
.end method

.method public a(F)V
    .registers 5

    .line 112
    iget v0, p0, Los;->f:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_14

    .line 113
    iget-object p1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->v:Luq;

    iput v1, p1, Luq;->b:F

    .line 114
    iget-object p1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->g:Ln;

    iput v1, p1, Ln;->i:F

    goto :goto_25

    .line 116
    :cond_14
    iget v1, p0, Los;->g:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 117
    iget-object p1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->v:Luq;

    iput v1, p1, Luq;->b:F

    .line 118
    iget-object p1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->g:Ln;

    iput v1, p1, Ln;->i:F

    :goto_25
    return-void
.end method

.method public a(IIII)V
    .registers 13

    .line 61
    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Lgs;IIII)V

    .line 62
    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_32

    .line 63
    iget v1, p0, Los;->f:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_32

    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v7, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Luu;->b(Lfd;IIILgs;)V

    :cond_32
    if-lez v0, :cond_49

    .line 64
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v1}, Luu;->a(Lgs;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_49

    .line 65
    invoke-virtual {p0, p1, p2, p3, p4}, Los;->b(IIII)Z

    :cond_49
    return-void
.end method

.method public a(Lfd;)V
    .registers 2

    .line 127
    invoke-super {p0, p1}, Lob;->a(Lfd;)V

    return-void
.end method

.method public a(Lgs;)V
    .registers 3

    const/high16 v0, -0x3ccc0000    # -180.0f

    .line 30
    iput v0, p1, Lgs;->aS:F

    return-void
.end method

.method public b()F
    .registers 2

    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public b(IIII)Z
    .registers 15

    .line 37
    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    .line 38
    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v1, p1, p2, p3}, Lfd;->e(III)I

    move-result v8

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lob;->b(IIII)Z

    move-result p4

    .line 41
    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->G()Liz;

    move-result-object v7

    .line 42
    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    sget-object v2, Luu;->m:[Luu;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ldc;->b(Luu;)Z

    move-result v9

    if-eqz v7, :cond_48

    .line 44
    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v6, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move-object v1, v7

    move v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Liz;->a(IIIILgs;)V

    .line 45
    iget v1, v7, Liz;->a:I

    if-nez v1, :cond_48

    .line 46
    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v7, v1}, Liz;->a(Lgs;)V

    .line 47
    iget-object v1, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->H()V

    :cond_48
    if-eqz p4, :cond_5e

    if-eqz v9, :cond_5e

    .line 50
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Luu;->a(Lfd;Lgs;IIII)V

    :cond_5e
    return p4
.end method

.method public c()V
    .registers 2

    .line 131
    iget v0, p0, Los;->f:F

    iput v0, p0, Los;->g:F

    .line 132
    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0}, Lyo;->c()V

    return-void
.end method

.method public c(IIII)V
    .registers 16

    .line 75
    iget v0, p0, Los;->i:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 76
    iput v0, p0, Los;->i:I

    return-void

    .line 79
    :cond_9
    iget v0, p0, Los;->c:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7f

    iget v0, p0, Los;->d:I

    if-ne p2, v0, :cond_7f

    iget v0, p0, Los;->e:I

    if-ne p3, v0, :cond_7f

    .line 80
    iget-object v0, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 82
    :cond_21
    sget-object v2, Luu;->m:[Luu;

    aget-object v0, v2, v0

    .line 84
    iget v2, p0, Los;->f:F

    iget-object v3, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v3}, Luu;->a(Lgs;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Los;->f:F

    .line 86
    iget v2, p0, Los;->h:F

    const/high16 v3, 0x40800000    # 4.0f

    rem-float/2addr v2, v3

    cmpl-float v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_67

    if-eqz v0, :cond_67

    .line 88
    iget-object v2, p0, Los;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v2, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v2, v0, Luu;->by:Lct;

    invoke-virtual {v2}, Lct;->d()Ljava/lang/String;

    move-result-object v5

    int-to-float v2, p1

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    int-to-float v7, p2

    add-float/2addr v7, v6

    int-to-float v8, p3

    add-float/2addr v8, v6

    iget-object v9, v0, Luu;->by:Lct;

    invoke-virtual {v9}, Lct;->b()F

    move-result v9

    add-float/2addr v9, v3

    const/high16 v10, 0x41000000    # 8.0f

    div-float/2addr v9, v10

    iget-object v0, v0, Luu;->by:Lct;

    invoke-virtual {v0}, Lct;->c()F

    move-result v0

    mul-float v10, v0, v6

    move v6, v2

    invoke-virtual/range {v4 .. v10}, Lyo;->b(Ljava/lang/String;FFFFF)V

    .line 92
    :cond_67
    iget v0, p0, Los;->h:F

    add-float/2addr v0, v3

    iput v0, p0, Los;->h:F

    .line 94
    iget v0, p0, Los;->f:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_8b

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Los;->b(IIII)Z

    .line 96
    iput v1, p0, Los;->f:F

    .line 97
    iput v1, p0, Los;->g:F

    .line 98
    iput v1, p0, Los;->h:F

    const/4 p1, 0x5

    .line 99
    iput p1, p0, Los;->i:I

    goto :goto_8b

    .line 102
    :cond_7f
    iput v1, p0, Los;->f:F

    .line 103
    iput v1, p0, Los;->g:F

    .line 104
    iput v1, p0, Los;->h:F

    .line 105
    iput p1, p0, Los;->c:I

    .line 106
    iput p2, p0, Los;->d:I

    .line 107
    iput p3, p0, Los;->e:I

    :cond_8b
    :goto_8b
    return-void
.end method
