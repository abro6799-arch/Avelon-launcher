###### Class defpackage.qc (qc)
.class public Lqc;
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
    iput p1, p0, Lqc;->a:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 21

    move-object v0, p0

    move-object/from16 v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    add-int/lit8 v1, v4, 0x1

    .line 16
    invoke-virtual {v7, v3, v1, v5}, Lfd;->a(III)I

    move-result v1

    sget-object v2, Luu;->bc:Luu;

    iget v2, v2, Luu;->bn:I

    const/4 v8, 0x0

    if-eq v1, v2, :cond_17

    return v8

    .line 17
    :cond_17
    invoke-virtual {v7, v3, v4, v5}, Lfd;->a(III)I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v7, v3, v4, v5}, Lfd;->a(III)I

    move-result v1

    sget-object v2, Luu;->bc:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v1, v2, :cond_28

    return v8

    :cond_28
    add-int/lit8 v1, v3, -0x1

    .line 20
    invoke-virtual {v7, v1, v4, v5}, Lfd;->a(III)I

    move-result v2

    sget-object v6, Luu;->bc:Luu;

    iget v6, v6, Luu;->bn:I

    const/4 v9, 0x1

    if-ne v2, v6, :cond_37

    move v2, v9

    goto :goto_38

    :cond_37
    move v2, v8

    :goto_38
    add-int/lit8 v6, v3, 0x1

    .line 21
    invoke-virtual {v7, v6, v4, v5}, Lfd;->a(III)I

    move-result v10

    sget-object v11, Luu;->bc:Luu;

    iget v11, v11, Luu;->bn:I

    if-ne v10, v11, :cond_46

    add-int/lit8 v2, v2, 0x1

    :cond_46
    add-int/lit8 v10, v5, -0x1

    .line 22
    invoke-virtual {v7, v3, v4, v10}, Lfd;->a(III)I

    move-result v11

    sget-object v12, Luu;->bc:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v11, v12, :cond_54

    add-int/lit8 v2, v2, 0x1

    :cond_54
    add-int/lit8 v11, v5, 0x1

    .line 23
    invoke-virtual {v7, v3, v4, v11}, Lfd;->a(III)I

    move-result v12

    sget-object v13, Luu;->bc:Luu;

    iget v13, v13, Luu;->bn:I

    if-ne v12, v13, :cond_62

    add-int/lit8 v2, v2, 0x1

    :cond_62
    add-int/lit8 v12, v4, -0x1

    .line 24
    invoke-virtual {v7, v3, v12, v5}, Lfd;->a(III)I

    move-result v13

    sget-object v14, Luu;->bc:Luu;

    iget v14, v14, Luu;->bn:I

    if-ne v13, v14, :cond_70

    add-int/lit8 v2, v2, 0x1

    .line 27
    :cond_70
    invoke-virtual {v7, v1, v4, v5}, Lfd;->d(III)Z

    move-result v1

    .line 28
    invoke-virtual {v7, v6, v4, v5}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_7c

    add-int/lit8 v1, v1, 0x1

    .line 29
    :cond_7c
    invoke-virtual {v7, v3, v4, v10}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_84

    add-int/lit8 v1, v1, 0x1

    .line 30
    :cond_84
    invoke-virtual {v7, v3, v4, v11}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_8c

    add-int/lit8 v1, v1, 0x1

    .line 31
    :cond_8c
    invoke-virtual {v7, v3, v12, v5}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_94

    add-int/lit8 v1, v1, 0x1

    :cond_94
    const/4 v6, 0x4

    if-ne v2, v6, :cond_b5

    if-ne v1, v9, :cond_b5

    .line 34
    iget v1, v0, Lqc;->a:I

    invoke-virtual {v7, v3, v4, v5, v1}, Lfd;->f(IIII)Z

    .line 35
    iput-boolean v9, v7, Lfd;->a:Z

    .line 36
    sget-object v1, Luu;->m:[Luu;

    iget v2, v0, Lqc;->a:I

    aget-object v1, v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Luu;->a(Lfd;IIILjava/util/Random;)V

    .line 37
    iput-boolean v8, v7, Lfd;->a:Z

    :cond_b5
    return v9
.end method
