###### Class defpackage.rl (rl)
.class public Lrl;
.super Lgm;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lrl;->bg:I

    .line 14
    iput p2, p0, Lrl;->a:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 21

    move-object v0, p1

    move-object/from16 v10, p3

    .line 20
    invoke-virtual/range {p3 .. p6}, Lfd;->a(III)I

    move-result v1

    .line 22
    invoke-static {v1}, Lpc;->d(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 23
    iget-boolean v1, v10, Lfd;->B:Z

    if-nez v1, :cond_31

    .line 24
    new-instance v11, Lyl;

    move/from16 v1, p4

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v3, v1

    move/from16 v1, p5

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v5, v1

    move/from16 v1, p6

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v7, v1

    move-object v12, p0

    iget v9, v12, Lrl;->a:I

    move-object v1, v11

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v9}, Lyl;-><init>(Lfd;DDDI)V

    invoke-virtual {v10, v11}, Lfd;->b(Lsn;)Z

    goto :goto_32

    :cond_31
    move-object v12, p0

    .line 26
    :goto_32
    iget v1, v0, Liz;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Liz;->a:I

    return v2

    :cond_39
    move-object v12, p0

    const/4 v0, 0x0

    return v0
.end method
