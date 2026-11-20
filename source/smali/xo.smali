###### Class defpackage.xo (xo)
.class public Lxo;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lpg;-><init>()V

    .line 12
    iput p1, p0, Lxo;->a:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 20

    move-object v0, p0

    move-object v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    add-int/lit8 v1, v4, 0x1

    .line 16
    invoke-virtual {p1, v3, v1, v5}, Lfd;->a(III)I

    move-result v1

    sget-object v2, Luu;->u:Luu;

    iget v2, v2, Luu;->bn:I

    const/4 v8, 0x0

    if-eq v1, v2, :cond_16

    return v8

    :cond_16
    add-int/lit8 v1, v4, -0x1

    .line 17
    invoke-virtual {p1, v3, v1, v5}, Lfd;->a(III)I

    move-result v1

    sget-object v2, Luu;->u:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v1, v2, :cond_23

    return v8

    .line 19
    :cond_23
    invoke-virtual {p1, v3, v4, v5}, Lfd;->a(III)I

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p1, v3, v4, v5}, Lfd;->a(III)I

    move-result v1

    sget-object v2, Luu;->u:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v1, v2, :cond_34

    return v8

    :cond_34
    add-int/lit8 v1, v3, -0x1

    .line 22
    invoke-virtual {p1, v1, v4, v5}, Lfd;->a(III)I

    move-result v2

    sget-object v6, Luu;->u:Luu;

    iget v6, v6, Luu;->bn:I

    const/4 v9, 0x1

    if-ne v2, v6, :cond_43

    move v2, v9

    goto :goto_44

    :cond_43
    move v2, v8

    :goto_44
    add-int/lit8 v6, v3, 0x1

    .line 23
    invoke-virtual {p1, v6, v4, v5}, Lfd;->a(III)I

    move-result v10

    sget-object v11, Luu;->u:Luu;

    iget v11, v11, Luu;->bn:I

    if-ne v10, v11, :cond_52

    add-int/lit8 v2, v2, 0x1

    :cond_52
    add-int/lit8 v10, v5, -0x1

    .line 24
    invoke-virtual {p1, v3, v4, v10}, Lfd;->a(III)I

    move-result v11

    sget-object v12, Luu;->u:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v11, v12, :cond_60

    add-int/lit8 v2, v2, 0x1

    :cond_60
    add-int/lit8 v11, v5, 0x1

    .line 25
    invoke-virtual {p1, v3, v4, v11}, Lfd;->a(III)I

    move-result v12

    sget-object v13, Luu;->u:Luu;

    iget v13, v13, Luu;->bn:I

    if-ne v12, v13, :cond_6e

    add-int/lit8 v2, v2, 0x1

    .line 28
    :cond_6e
    invoke-virtual {p1, v1, v4, v5}, Lfd;->d(III)Z

    move-result v1

    .line 29
    invoke-virtual {p1, v6, v4, v5}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_7a

    add-int/lit8 v1, v1, 0x1

    .line 30
    :cond_7a
    invoke-virtual {p1, v3, v4, v10}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_82

    add-int/lit8 v1, v1, 0x1

    .line 31
    :cond_82
    invoke-virtual {p1, v3, v4, v11}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_8a

    add-int/lit8 v1, v1, 0x1

    :cond_8a
    const/4 v6, 0x3

    if-ne v2, v6, :cond_aa

    if-ne v1, v9, :cond_aa

    .line 34
    iget v1, v0, Lxo;->a:I

    invoke-virtual {p1, v3, v4, v5, v1}, Lfd;->f(IIII)Z

    .line 35
    iput-boolean v9, v7, Lfd;->a:Z

    .line 36
    sget-object v1, Luu;->m:[Luu;

    iget v2, v0, Lxo;->a:I

    aget-object v1, v1, v2

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Luu;->a(Lfd;IIILjava/util/Random;)V

    .line 37
    iput-boolean v8, v7, Lfd;->a:Z

    :cond_aa
    return v9
.end method
