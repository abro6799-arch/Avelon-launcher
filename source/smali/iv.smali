###### Class defpackage.iv (iv)
.class abstract Liv;
.super Llg;
.source "SourceFile"


# instance fields
.field protected b:I

.field protected c:Ljava/util/List;

.field protected d:Ljava/util/Comparator;

.field protected e:I

.field protected f:I

.field final synthetic g:Ldv;


# direct methods
.method protected constructor <init>(Ldv;)V
    .registers 9

    .line 215
    iput-object p1, p0, Liv;->g:Ldv;

    .line 216
    invoke-static {p1}, Ldv;->f(Ldv;)Lnet/minecraft/client/Minecraft;

    move-result-object v1

    iget v2, p1, Ldv;->c:I

    iget v3, p1, Ldv;->d:I

    const/16 v4, 0x20

    iget p1, p1, Ldv;->d:I

    add-int/lit8 v5, p1, -0x40

    const/16 v6, 0x14

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Llg;-><init>(Lnet/minecraft/client/Minecraft;IIIII)V

    const/4 p1, -0x1

    .line 208
    iput p1, p0, Liv;->b:I

    .line 212
    iput p1, p0, Liv;->e:I

    const/4 p1, 0x0

    .line 213
    iput p1, p0, Liv;->f:I

    .line 218
    invoke-virtual {p0, p1}, Liv;->a(Z)V

    const/4 p1, 0x1

    const/16 v0, 0x14

    .line 219
    invoke-virtual {p0, p1, v0}, Liv;->a(ZI)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 298
    iget-object v0, p0, Liv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract a(I)Ljava/lang/String;
.end method

.method protected a(II)V
    .registers 4

    const/4 p2, -0x1

    .line 281
    iput p2, p0, Liv;->b:I

    const/16 p2, 0x4f

    if-lt p1, p2, :cond_f

    const/16 p2, 0x73

    if-ge p1, p2, :cond_f

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Liv;->b:I

    goto :goto_26

    :cond_f
    const/16 p2, 0x81

    if-lt p1, p2, :cond_1b

    const/16 p2, 0xa5

    if-ge p1, p2, :cond_1b

    const/4 p1, 0x1

    .line 285
    iput p1, p0, Liv;->b:I

    goto :goto_26

    :cond_1b
    const/16 p2, 0xb3

    if-lt p1, p2, :cond_26

    const/16 p2, 0xd7

    if-ge p1, p2, :cond_26

    const/4 p1, 0x2

    .line 287
    iput p1, p0, Liv;->b:I

    .line 290
    :cond_26
    :goto_26
    iget p1, p0, Liv;->b:I

    if-ltz p1, :cond_3c

    .line 291
    invoke-virtual {p0, p1}, Liv;->c(I)V

    .line 292
    iget-object p1, p0, Liv;->g:Ldv;

    invoke-static {p1}, Ldv;->g(Ldv;)Lnet/minecraft/client/Minecraft;

    move-result-object p1

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->B:Lyo;

    const-string p2, "random.click"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0, v0}, Lyo;->a(Ljava/lang/String;FF)V

    :cond_3c
    return-void
.end method

.method protected a(IILnw;)V
    .registers 11

    const/4 p3, 0x0

    .line 239
    invoke-static {p3}, Lorg/lwjgl/input/Mouse;->isButtonDown(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 240
    iput v1, p0, Liv;->b:I

    .line 243
    :cond_a
    iget v0, p0, Liv;->b:I

    const/16 v2, 0x12

    if-nez v0, :cond_1b

    .line 244
    iget-object v0, p0, Liv;->g:Ldv;

    add-int/lit8 v3, p1, 0x73

    sub-int/2addr v3, v2

    add-int/lit8 v4, p2, 0x1

    invoke-static {v0, v3, v4, p3, p3}, Ldv;->a(Ldv;IIII)V

    goto :goto_25

    .line 246
    :cond_1b
    iget-object v0, p0, Liv;->g:Ldv;

    add-int/lit8 v3, p1, 0x73

    sub-int/2addr v3, v2

    add-int/lit8 v4, p2, 0x1

    invoke-static {v0, v3, v4, p3, v2}, Ldv;->a(Ldv;IIII)V

    .line 249
    :goto_25
    iget v0, p0, Liv;->b:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_35

    .line 250
    iget-object v0, p0, Liv;->g:Ldv;

    add-int/lit16 v4, p1, 0xa5

    sub-int/2addr v4, v2

    add-int/lit8 v5, p2, 0x1

    invoke-static {v0, v4, v5, p3, p3}, Ldv;->a(Ldv;IIII)V

    goto :goto_3f

    .line 252
    :cond_35
    iget-object v0, p0, Liv;->g:Ldv;

    add-int/lit16 v4, p1, 0xa5

    sub-int/2addr v4, v2

    add-int/lit8 v5, p2, 0x1

    invoke-static {v0, v4, v5, p3, v2}, Ldv;->a(Ldv;IIII)V

    .line 255
    :goto_3f
    iget v0, p0, Liv;->b:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4f

    .line 256
    iget-object v0, p0, Liv;->g:Ldv;

    add-int/lit16 v5, p1, 0xd7

    sub-int/2addr v5, v2

    add-int/lit8 v6, p2, 0x1

    invoke-static {v0, v5, v6, p3, p3}, Ldv;->a(Ldv;IIII)V

    goto :goto_59

    .line 258
    :cond_4f
    iget-object v0, p0, Liv;->g:Ldv;

    add-int/lit16 v5, p1, 0xd7

    sub-int/2addr v5, v2

    add-int/lit8 v6, p2, 0x1

    invoke-static {v0, v5, v6, p3, v2}, Ldv;->a(Ldv;IIII)V

    .line 261
    :goto_59
    iget v0, p0, Liv;->e:I

    if-eq v0, v1, :cond_76

    if-ne v0, v3, :cond_62

    const/16 v0, 0x81

    goto :goto_69

    :cond_62
    if-ne v0, v4, :cond_67

    const/16 v0, 0xb3

    goto :goto_69

    :cond_67
    const/16 v0, 0x4f

    .line 271
    :goto_69
    iget v1, p0, Liv;->f:I

    if-ne v1, v3, :cond_6f

    const/16 v2, 0x24

    .line 274
    :cond_6f
    iget-object v1, p0, Liv;->g:Ldv;

    add-int/2addr p1, v0

    add-int/2addr p2, v3

    invoke-static {v1, p1, p2, v2, p3}, Ldv;->a(Ldv;IIII)V

    :cond_76
    return-void
.end method

.method protected a(IZ)V
    .registers 3

    return-void
.end method

.method protected a(Ltw;II)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 366
    :cond_3
    sget-object v0, Lgm;->c:[Lgm;

    invoke-virtual {p1}, Ltw;->a()I

    move-result p1

    aget-object p1, v0, p1

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v1

    invoke-virtual {p1}, Lgm;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5b

    add-int/lit8 p2, p2, 0xc

    add-int/lit8 p3, p3, -0xc

    .line 373
    iget-object v0, p0, Liv;->g:Ldv;

    invoke-static {v0}, Ldv;->n(Ldv;)Lsj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    .line 374
    iget-object v1, p0, Liv;->g:Ldv;

    add-int/lit8 v2, p2, -0x3

    add-int/lit8 v3, p3, -0x3

    add-int/2addr v0, p2

    add-int/lit8 v4, v0, 0x3

    add-int/lit8 v0, p3, 0x8

    add-int/lit8 v5, v0, 0x3

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static/range {v1 .. v7}, Ldv;->b(Ldv;IIIIII)V

    .line 376
    iget-object v0, p0, Liv;->g:Ldv;

    invoke-static {v0}, Ldv;->o(Ldv;)Lsj;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lsj;->a(Ljava/lang/String;III)V

    :cond_5b
    return-void
.end method

.method protected a(Ltw;IIZ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0xffffff

    const v3, 0x909090

    if-eqz v1, :cond_37

    .line 310
    iget-object v4, v0, Liv;->g:Ldv;

    invoke-static {v4}, Ldv;->c(Ldv;)Lxi;

    move-result-object v4

    invoke-virtual {v4, v1}, Lxi;->a(Lvr;)I

    move-result v4

    invoke-virtual {v1, v4}, Ltw;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 311
    iget-object v5, v0, Liv;->g:Ldv;

    invoke-static {v5}, Ldv;->h(Ldv;)Lsj;

    move-result-object v6

    iget-object v1, v0, Liv;->g:Ldv;

    invoke-static {v1}, Ldv;->i(Ldv;)Lsj;

    move-result-object v1

    invoke-virtual {v1, v7}, Lsj;->a(Ljava/lang/String;)I

    move-result v1

    sub-int v8, p2, v1

    add-int/lit8 v9, p3, 0x5

    if-eqz p4, :cond_32

    move v10, v2

    goto :goto_33

    :cond_32
    move v10, v3

    :goto_33
    invoke-virtual/range {v5 .. v10}, Ldv;->b(Lsj;Ljava/lang/String;III)V

    goto :goto_57

    :cond_37
    const-string v13, "-"

    .line 314
    iget-object v11, v0, Liv;->g:Ldv;

    invoke-static {v11}, Ldv;->j(Ldv;)Lsj;

    move-result-object v12

    iget-object v1, v0, Liv;->g:Ldv;

    invoke-static {v1}, Ldv;->k(Ldv;)Lsj;

    move-result-object v1

    invoke-virtual {v1, v13}, Lsj;->a(Ljava/lang/String;)I

    move-result v1

    sub-int v14, p2, v1

    add-int/lit8 v15, p3, 0x5

    if-eqz p4, :cond_52

    move/from16 v16, v2

    goto :goto_54

    :cond_52
    move/from16 v16, v3

    :goto_54
    invoke-virtual/range {v11 .. v16}, Ldv;->b(Lsj;Ljava/lang/String;III)V

    :goto_57
    return-void
.end method

.method protected final b(I)Ltw;
    .registers 3

    .line 302
    iget-object v0, p0, Liv;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltw;

    return-object p1
.end method

.method protected b(II)V
    .registers 12

    .line 322
    iget v0, p0, Liv;->h:I

    if-lt p2, v0, :cond_a1

    iget v0, p0, Liv;->i:I

    if-le p2, v0, :cond_a

    goto/16 :goto_a1

    .line 326
    :cond_a
    invoke-virtual {p0, p1, p2}, Liv;->c(II)I

    move-result v0

    .line 327
    iget-object v1, p0, Liv;->g:Ldv;

    iget v1, v1, Ldv;->c:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x5c

    add-int/lit8 v1, v1, -0x10

    if-ltz v0, :cond_2d

    add-int/lit8 v1, v1, 0x28

    if-lt p1, v1, :cond_2c

    add-int/lit8 v1, v1, 0x14

    if-le p1, v1, :cond_23

    goto :goto_2c

    .line 333
    :cond_23
    invoke-virtual {p0, v0}, Liv;->b(I)Ltw;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0, p1, p2}, Liv;->a(Ltw;II)V

    goto/16 :goto_a1

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    add-int/lit8 v0, v1, 0x73

    add-int/lit8 v3, v0, -0x12

    if-lt p1, v3, :cond_3b

    if-gt p1, v0, :cond_3b

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, v0}, Liv;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_3b
    add-int/lit16 v0, v1, 0xa5

    add-int/lit8 v3, v0, -0x12

    if-lt p1, v3, :cond_49

    if-gt p1, v0, :cond_49

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, v0}, Liv;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_49
    add-int/lit16 v1, v1, 0xd7

    add-int/lit8 v0, v1, -0x12

    if-lt p1, v0, :cond_a1

    if-gt p1, v1, :cond_a1

    .line 342
    invoke-virtual {p0, v2}, Liv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a1

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p2, p2, -0xc

    .line 352
    iget-object v1, p0, Liv;->g:Ldv;

    invoke-static {v1}, Ldv;->l(Ldv;)Lsj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsj;->a(Ljava/lang/String;)I

    move-result v1

    .line 353
    iget-object v2, p0, Liv;->g:Ldv;

    add-int/lit8 v3, p1, -0x3

    add-int/lit8 v4, p2, -0x3

    add-int/2addr v1, p1

    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v1, p2, 0x8

    add-int/lit8 v6, v1, 0x3

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, -0x40000000    # -2.0f

    invoke-static/range {v2 .. v8}, Ldv;->a(Ldv;IIIIII)V

    .line 355
    iget-object v1, p0, Liv;->g:Ldv;

    invoke-static {v1}, Ldv;->m(Ldv;)Lsj;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p1, p2, v2}, Lsj;->a(Ljava/lang/String;III)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method protected c()V
    .registers 2

    .line 233
    iget-object v0, p0, Liv;->g:Ldv;

    invoke-virtual {v0}, Ldv;->i()V

    return-void
.end method

.method protected c(I)V
    .registers 4

    .line 382
    iget v0, p0, Liv;->e:I

    const/4 v1, -0x1

    if-eq p1, v0, :cond_a

    .line 383
    iput p1, p0, Liv;->e:I

    .line 384
    iput v1, p0, Liv;->f:I

    goto :goto_17

    .line 385
    :cond_a
    iget p1, p0, Liv;->f:I

    if-ne p1, v1, :cond_12

    const/4 p1, 0x1

    .line 386
    iput p1, p0, Liv;->f:I

    goto :goto_17

    .line 388
    :cond_12
    iput v1, p0, Liv;->e:I

    const/4 p1, 0x0

    .line 389
    iput p1, p0, Liv;->f:I

    .line 392
    :goto_17
    iget-object p1, p0, Liv;->c:Ljava/util/List;

    iget-object v0, p0, Liv;->d:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected c_(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
