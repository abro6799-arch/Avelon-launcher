###### Class defpackage.tr (tr)
.class public Ltr;
.super Lgm;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    .line 14
    iput-object p2, p0, Ltr;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Ltr;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 19
    invoke-virtual/range {p3 .. p6}, Lfd;->a(III)I

    move-result v2

    sget-object v3, Luu;->aZ:Luu;

    iget v3, v3, Luu;->bn:I

    if-ne v2, v3, :cond_3c

    invoke-virtual/range {p3 .. p6}, Lfd;->e(III)I

    move-result v2

    if-nez v2, :cond_3c

    move-object v2, p3

    .line 20
    iget-boolean v3, v2, Lfd;->B:Z

    const/4 v10, 0x1

    if-eqz v3, :cond_19

    return v10

    .line 22
    :cond_19
    sget-object v3, Luu;->aZ:Luu;

    check-cast v3, Lfo;

    iget v8, v0, Ltr;->bf:I

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lfo;->f(Lfd;IIII)V

    const/4 v4, 0x0

    const/16 v5, 0x3ed

    .line 23
    iget v9, v0, Ltr;->bf:I

    move-object v3, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lfd;->a(Lgs;IIIII)V

    .line 24
    iget v2, v1, Liz;->a:I

    sub-int/2addr v2, v10

    iput v2, v1, Liz;->a:I

    return v10

    :cond_3c
    const/4 v1, 0x0

    return v1
.end method
