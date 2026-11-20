###### Class defpackage.pt (pt)
.class public Lpt;
.super Lrw;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0x4a

    .line 11
    sget-object v1, Lln;->d:Lln;

    invoke-direct {p0, p1, v0, v1}, Lrw;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    .line 15
    iget p1, p0, Lpt;->bm:I

    return p1
.end method

.method public a(Lfd;IIIII)V
    .registers 35

    move/from16 v0, p5

    move/from16 v1, p6

    add-int/lit8 v2, v1, -0xc

    int-to-double v2, v2

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 50
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v13, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    const-string v2, "bd"

    goto :goto_19

    :cond_17
    const-string v2, "harp"

    :goto_19
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1e

    const-string v2, "snare"

    :cond_1e
    const/4 v3, 0x3

    if-ne v0, v3, :cond_23

    const-string v2, "hat"

    :cond_23
    const/4 v3, 0x4

    if-ne v0, v3, :cond_28

    const-string v2, "bassattack"

    :cond_28
    move/from16 v0, p2

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double v16, v3, v5

    move/from16 v0, p3

    int-to-double v14, v0

    add-double v7, v14, v5

    move/from16 v0, p4

    int-to-double v3, v0

    add-double v20, v3, v5

    const-string v0, "note."

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x40400000    # 3.0f

    move-object/from16 v4, p1

    move-wide/from16 v5, v16

    move-wide/from16 v9, v20

    invoke-virtual/range {v4 .. v13}, Lfd;->a(DDDLjava/lang/String;FF)V

    const-string v0, "note"

    const-wide v2, 0x3ff3333333333333L    # 1.2

    add-double v18, v14, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    div-double v22, v1, v3

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v14, p1

    move-object v15, v0

    .line 59
    invoke-virtual/range {v14 .. v27}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 7

    .line 32
    iget-boolean p5, p1, Lfd;->B:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_6

    return v0

    .line 33
    :cond_6
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object p5

    check-cast p5, Ltn;

    .line 34
    invoke-virtual {p5}, Ltn;->a()V

    .line 35
    invoke-virtual {p5, p1, p2, p3, p4}, Ltn;->a(Lfd;III)V

    return v0
.end method

.method protected a_()Low;
    .registers 2

    .line 46
    new-instance v0, Ltn;

    invoke-direct {v0}, Ltn;-><init>()V

    return-object v0
.end method

.method public b(Lfd;IIII)V
    .registers 8

    if-lez p5, :cond_21

    .line 19
    sget-object v0, Luu;->m:[Luu;

    aget-object p5, v0, p5

    invoke-virtual {p5}, Luu;->f()Z

    move-result p5

    if-eqz p5, :cond_21

    .line 20
    invoke-virtual {p1, p2, p3, p4}, Lfd;->r(III)Z

    move-result p5

    .line 21
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v0

    check-cast v0, Ltn;

    .line 22
    iget-boolean v1, v0, Ltn;->b:Z

    if-eq v1, p5, :cond_21

    if-eqz p5, :cond_1f

    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ltn;->a(Lfd;III)V

    .line 26
    :cond_1f
    iput-boolean p5, v0, Ltn;->b:Z

    :cond_21
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 40
    iget-boolean p5, p1, Lfd;->B:Z

    if-eqz p5, :cond_5

    return-void

    .line 41
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object p5

    check-cast p5, Ltn;

    .line 42
    invoke-virtual {p5, p1, p2, p3, p4}, Ltn;->a(Lfd;III)V

    return-void
.end method
