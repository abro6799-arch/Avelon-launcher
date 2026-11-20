###### Class defpackage.st (st)
.class public Lst;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leb;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Leb;IIIIII)V
    .registers 8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lst;->a:Leb;

    .line 13
    iput p2, p0, Lst;->b:I

    .line 14
    iput p3, p0, Lst;->c:I

    .line 15
    iput p4, p0, Lst;->d:I

    .line 16
    iput p5, p0, Lst;->e:I

    .line 17
    iput p6, p0, Lst;->f:I

    .line 18
    iput p7, p0, Lst;->g:I

    return-void
.end method


# virtual methods
.method public a(Lfd;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 22
    iget v1, v0, Lst;->e:I

    iget v2, v0, Lst;->b:I

    sub-int/2addr v1, v2

    const/4 v8, 0x1

    add-int/2addr v1, v8

    .line 23
    iget v3, v0, Lst;->f:I

    iget v4, v0, Lst;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v8

    .line 24
    iget v4, v0, Lst;->g:I

    iget v5, v0, Lst;->d:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v8

    mul-int/2addr v1, v3

    mul-int/2addr v1, v4

    const v3, 0x8000

    if-le v1, v3, :cond_26

    .line 27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Light too large, skipping!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_26
    move v9, v2

    .line 37
    :goto_27
    iget v1, v0, Lst;->e:I

    if-gt v9, v1, :cond_14b

    .line 38
    iget v1, v0, Lst;->d:I

    move v10, v1

    :goto_2e
    iget v1, v0, Lst;->g:I

    if-gt v10, v1, :cond_146

    shr-int/lit8 v1, v9, 0x4

    shr-int/lit8 v2, v10, 0x4

    const/4 v11, 0x0

    .line 46
    invoke-virtual {v7, v9, v11, v10, v8}, Lfd;->b(IIII)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 48
    invoke-virtual {v7, v1, v2}, Lfd;->c(II)Llm;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Llm;->h()Z

    move-result v1

    if-eqz v1, :cond_48

    move v3, v11

    :cond_48
    if-eqz v3, :cond_141

    .line 58
    iget v1, v0, Lst;->c:I

    if-gez v1, :cond_50

    iput v11, v0, Lst;->c:I

    .line 59
    :cond_50
    iget v1, v0, Lst;->f:I

    const/16 v2, 0x80

    if-lt v1, v2, :cond_5a

    const/16 v1, 0x7f

    iput v1, v0, Lst;->f:I

    .line 61
    :cond_5a
    iget v1, v0, Lst;->c:I

    move v12, v1

    :goto_5d
    iget v1, v0, Lst;->f:I

    if-gt v12, v1, :cond_141

    .line 62
    iget-object v1, v0, Lst;->a:Leb;

    invoke-virtual {v7, v1, v9, v12, v10}, Lfd;->a(Leb;III)I

    move-result v1

    .line 65
    invoke-virtual {v7, v9, v12, v10}, Lfd;->a(III)I

    move-result v2

    .line 66
    sget-object v3, Luu;->q:[I

    aget v3, v3, v2

    if-nez v3, :cond_72

    move v3, v8

    .line 69
    :cond_72
    iget-object v4, v0, Lst;->a:Leb;

    sget-object v5, Leb;->a:Leb;

    const/16 v6, 0xf

    if-ne v4, v5, :cond_82

    .line 70
    invoke-virtual {v7, v9, v12, v10}, Lfd;->o(III)Z

    move-result v2

    if-eqz v2, :cond_8d

    move v2, v6

    goto :goto_8e

    .line 71
    :cond_82
    iget-object v4, v0, Lst;->a:Leb;

    sget-object v5, Leb;->b:Leb;

    if-ne v4, v5, :cond_8d

    .line 72
    sget-object v4, Luu;->s:[I

    aget v2, v4, v2

    goto :goto_8e

    :cond_8d
    move v2, v11

    :goto_8e
    if-lt v3, v6, :cond_94

    if-nez v2, :cond_94

    move v8, v11

    goto :goto_de

    .line 79
    :cond_94
    iget-object v4, v0, Lst;->a:Leb;

    add-int/lit8 v5, v9, -0x1

    invoke-virtual {v7, v4, v5, v12, v10}, Lfd;->a(Leb;III)I

    move-result v4

    .line 80
    iget-object v5, v0, Lst;->a:Leb;

    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v7, v5, v6, v12, v10}, Lfd;->a(Leb;III)I

    move-result v5

    .line 81
    iget-object v6, v0, Lst;->a:Leb;

    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v7, v6, v9, v13, v10}, Lfd;->a(Leb;III)I

    move-result v6

    .line 82
    iget-object v13, v0, Lst;->a:Leb;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v7, v13, v9, v14, v10}, Lfd;->a(Leb;III)I

    move-result v13

    .line 83
    iget-object v14, v0, Lst;->a:Leb;

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v7, v14, v9, v12, v15}, Lfd;->a(Leb;III)I

    move-result v14

    .line 84
    iget-object v15, v0, Lst;->a:Leb;

    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v7, v15, v9, v12, v8}, Lfd;->a(Leb;III)I

    move-result v8

    if-le v5, v4, :cond_c7

    move v4, v5

    :cond_c7
    if-le v6, v4, :cond_ca

    goto :goto_cb

    :cond_ca
    move v6, v4

    :goto_cb
    if-le v13, v6, :cond_ce

    goto :goto_cf

    :cond_ce
    move v13, v6

    :goto_cf
    if-le v14, v13, :cond_d2

    goto :goto_d3

    :cond_d2
    move v14, v13

    :goto_d3
    if-le v8, v14, :cond_d6

    goto :goto_d7

    :cond_d6
    move v8, v14

    :goto_d7
    sub-int/2addr v8, v3

    if-gez v8, :cond_db

    move v8, v11

    :cond_db
    if-le v2, v8, :cond_de

    move v8, v2

    :cond_de
    :goto_de
    if-eq v1, v8, :cond_13c

    .line 100
    iget-object v2, v0, Lst;->a:Leb;

    move-object/from16 v1, p1

    move v3, v9

    move v4, v12

    move v5, v10

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lfd;->b(Leb;IIII)V

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_f0

    move v8, v11

    .line 103
    :cond_f0
    iget-object v2, v0, Lst;->a:Leb;

    add-int/lit8 v3, v9, -0x1

    move-object/from16 v1, p1

    move v4, v12

    move v5, v10

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Leb;IIII)V

    .line 104
    iget-object v2, v0, Lst;->a:Leb;

    add-int/lit8 v4, v12, -0x1

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Leb;IIII)V

    .line 105
    iget-object v2, v0, Lst;->a:Leb;

    add-int/lit8 v5, v10, -0x1

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Leb;IIII)V

    add-int/lit8 v3, v9, 0x1

    .line 107
    iget v1, v0, Lst;->e:I

    if-lt v3, v1, :cond_11c

    iget-object v2, v0, Lst;->a:Leb;

    move-object/from16 v1, p1

    move v4, v12

    move v5, v10

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Leb;IIII)V

    :cond_11c
    add-int/lit8 v4, v12, 0x1

    .line 108
    iget v1, v0, Lst;->f:I

    if-lt v4, v1, :cond_12c

    iget-object v2, v0, Lst;->a:Leb;

    move-object/from16 v1, p1

    move v3, v9

    move v5, v10

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Leb;IIII)V

    :cond_12c
    add-int/lit8 v5, v10, 0x1

    .line 109
    iget v1, v0, Lst;->g:I

    if-lt v5, v1, :cond_13c

    iget-object v2, v0, Lst;->a:Leb;

    move-object/from16 v1, p1

    move v3, v9

    move v4, v12

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Leb;IIII)V

    :cond_13c
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto/16 :goto_5d

    :cond_141
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2e

    :cond_146
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto/16 :goto_27

    :cond_14b
    return-void
.end method

.method public a(IIIIII)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 123
    iget v7, v0, Lst;->b:I

    const/4 v8, 0x1

    if-lt v1, v7, :cond_28

    iget v9, v0, Lst;->c:I

    if-lt v2, v9, :cond_28

    iget v9, v0, Lst;->d:I

    if-lt v3, v9, :cond_28

    iget v9, v0, Lst;->e:I

    if-gt v4, v9, :cond_28

    iget v9, v0, Lst;->f:I

    if-gt v5, v9, :cond_28

    iget v9, v0, Lst;->g:I

    if-gt v6, v9, :cond_28

    return v8

    :cond_28
    add-int/lit8 v9, v7, -0x1

    if-lt v1, v9, :cond_83

    .line 126
    iget v9, v0, Lst;->c:I

    add-int/lit8 v10, v9, -0x1

    if-lt v2, v10, :cond_83

    iget v10, v0, Lst;->d:I

    add-int/lit8 v11, v10, -0x1

    if-lt v3, v11, :cond_83

    iget v11, v0, Lst;->e:I

    add-int/lit8 v12, v11, 0x1

    if-gt v4, v12, :cond_83

    iget v12, v0, Lst;->f:I

    add-int/lit8 v13, v12, 0x1

    if-gt v5, v13, :cond_83

    iget v13, v0, Lst;->g:I

    add-int/lit8 v14, v13, 0x1

    if-gt v6, v14, :cond_83

    sub-int v14, v11, v7

    sub-int v15, v12, v9

    sub-int v16, v13, v10

    if-le v1, v7, :cond_53

    move v1, v7

    :cond_53
    if-le v2, v9, :cond_56

    goto :goto_57

    :cond_56
    move v9, v2

    :goto_57
    if-le v3, v10, :cond_5a

    goto :goto_5b

    :cond_5a
    move v10, v3

    :goto_5b
    if-ge v4, v11, :cond_5e

    goto :goto_5f

    :cond_5e
    move v11, v4

    :goto_5f
    if-ge v5, v12, :cond_62

    goto :goto_63

    :cond_62
    move v12, v5

    :goto_63
    if-ge v6, v13, :cond_66

    goto :goto_67

    :cond_66
    move v13, v6

    :goto_67
    sub-int v2, v11, v1

    sub-int v3, v12, v9

    sub-int v4, v13, v10

    mul-int/2addr v14, v15

    mul-int v14, v14, v16

    mul-int/2addr v2, v3

    mul-int/2addr v2, v4

    sub-int/2addr v2, v14

    const/4 v3, 0x2

    if-gt v2, v3, :cond_83

    .line 147
    iput v1, v0, Lst;->b:I

    .line 148
    iput v9, v0, Lst;->c:I

    .line 149
    iput v10, v0, Lst;->d:I

    .line 150
    iput v11, v0, Lst;->e:I

    .line 151
    iput v12, v0, Lst;->f:I

    .line 152
    iput v13, v0, Lst;->g:I

    return v8

    :cond_83
    const/4 v1, 0x0

    return v1
.end method
