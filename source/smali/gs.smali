###### Class defpackage.gs (gs)
.class public abstract Lgs;
.super Lls;
.source "SourceFile"


# instance fields
.field protected A:Z

.field public B:F

.field public C:F

.field public D:Llx;

.field private a:I

.field private b:Lbr;

.field private bN:Lbr;

.field private bO:I

.field public c:Lix;

.field public d:Ldw;

.field public e:Ldw;

.field public f:B

.field public g:I

.field public h:F

.field public i:F

.field public j:Z

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:D

.field public p:D

.field public q:D

.field public r:D

.field public s:D

.field public t:D

.field protected u:Z

.field public v:Lbr;

.field public w:F

.field public x:F

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 16

    .line 71
    invoke-direct {p0, p1}, Lls;-><init>(Lfd;)V

    .line 39
    new-instance v0, Lix;

    invoke-direct {v0, p0}, Lix;-><init>(Lgs;)V

    iput-object v0, p0, Lgs;->c:Lix;

    const/4 v1, 0x0

    .line 43
    iput-byte v1, p0, Lgs;->f:B

    .line 44
    iput v1, p0, Lgs;->g:I

    .line 46
    iput-boolean v1, p0, Lgs;->j:Z

    .line 47
    iput v1, p0, Lgs;->k:I

    const/16 v2, 0x14

    .line 66
    iput v2, p0, Lgs;->z:I

    .line 67
    iput-boolean v1, p0, Lgs;->A:Z

    .line 404
    iput v1, p0, Lgs;->bO:I

    const/4 v1, 0x0

    .line 405
    iput-object v1, p0, Lgs;->D:Llx;

    .line 73
    new-instance v1, Laa;

    iget-boolean v3, p1, Lfd;->B:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v0, v3}, Laa;-><init>(Lix;Z)V

    iput-object v1, p0, Lgs;->d:Ldw;

    .line 75
    iput-object v1, p0, Lgs;->e:Ldw;

    const v0, 0x3fcf5c29    # 1.62f

    .line 77
    iput v0, p0, Lgs;->bf:F

    .line 78
    invoke-virtual {p1}, Lfd;->u()Lbr;

    move-result-object p1

    .line 79
    iget v0, p1, Lbr;->a:I

    int-to-double v0, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v6, v0, v3

    iget v0, p1, Lbr;->b:I

    add-int/lit8 v0, v0, 0x1

    int-to-double v8, v0

    iget p1, p1, Lbr;->c:I

    int-to-double v0, p1

    add-double v10, v0, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lgs;->c(DDDFF)V

    .line 81
    iput v2, p0, Lgs;->Y:I

    const-string p1, "humanoid"

    .line 82
    iput-object p1, p0, Lgs;->R:Ljava/lang/String;

    const/high16 p1, 0x43340000    # 180.0f

    .line 83
    iput p1, p0, Lgs;->Q:F

    .line 84
    iput v2, p0, Lgs;->bu:I

    const-string p1, "/mob/char.png"

    .line 86
    iput-object p1, p0, Lgs;->O:Ljava/lang/String;

    return-void
.end method

.method public static a(Lfd;Lbr;)Lbr;
    .registers 5

    .line 715
    invoke-virtual {p0}, Lfd;->w()Lcl;

    move-result-object v0

    .line 716
    iget v1, p1, Lbr;->a:I

    add-int/lit8 v1, v1, -0x3

    shr-int/lit8 v1, v1, 0x4

    iget v2, p1, Lbr;->c:I

    add-int/lit8 v2, v2, -0x3

    shr-int/lit8 v2, v2, 0x4

    invoke-interface {v0, v1, v2}, Lcl;->c(II)Llm;

    .line 717
    iget v1, p1, Lbr;->a:I

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v1, v1, 0x4

    iget v2, p1, Lbr;->c:I

    add-int/lit8 v2, v2, -0x3

    shr-int/lit8 v2, v2, 0x4

    invoke-interface {v0, v1, v2}, Lcl;->c(II)Llm;

    .line 718
    iget v1, p1, Lbr;->a:I

    add-int/lit8 v1, v1, -0x3

    shr-int/lit8 v1, v1, 0x4

    iget v2, p1, Lbr;->c:I

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x4

    invoke-interface {v0, v1, v2}, Lcl;->c(II)Llm;

    .line 719
    iget v1, p1, Lbr;->a:I

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 v1, v1, 0x4

    iget v2, p1, Lbr;->c:I

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x4

    invoke-interface {v0, v1, v2}, Lcl;->c(II)Llm;

    .line 722
    iget v0, p1, Lbr;->a:I

    iget v1, p1, Lbr;->b:I

    iget v2, p1, Lbr;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->T:Luu;

    iget v1, v1, Luu;->bn:I

    if-eq v0, v1, :cond_52

    const/4 p0, 0x0

    return-object p0

    .line 726
    :cond_52
    iget v0, p1, Lbr;->a:I

    iget v1, p1, Lbr;->b:I

    iget p1, p1, Lbr;->c:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lve;->f(Lfd;IIII)Lbr;

    move-result-object p0

    return-object p0
.end method

.method private am()Z
    .registers 5

    .line 710
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget-object v1, p0, Lgs;->v:Lbr;

    iget v1, v1, Lbr;->a:I

    iget-object v2, p0, Lgs;->v:Lbr;

    iget v2, v2, Lbr;->b:I

    iget-object v3, p0, Lgs;->v:Lbr;

    iget v3, v3, Lbr;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->T:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private e(I)V
    .registers 5

    const/4 v0, 0x0

    .line 647
    iput v0, p0, Lgs;->w:F

    .line 648
    iput v0, p0, Lgs;->y:F

    const v0, -0x4019999a    # -1.8f

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    const v2, 0x3fe66666    # 1.8f

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    goto :goto_22

    .line 661
    :cond_17
    iput v0, p0, Lgs;->w:F

    goto :goto_22

    .line 655
    :cond_1a
    iput v2, p0, Lgs;->y:F

    goto :goto_22

    .line 658
    :cond_1d
    iput v2, p0, Lgs;->w:F

    goto :goto_22

    .line 652
    :cond_20
    iput v0, p0, Lgs;->y:F

    :goto_22
    return-void
.end method

.method private i(DDD)V
    .registers 9

    .line 821
    iget-object v0, p0, Lgs;->aH:Lsn;

    if-eqz v0, :cond_5

    return-void

    .line 824
    :cond_5
    sget-object v0, Lln;->g:Lln;

    invoke-virtual {p0, v0}, Lgs;->a(Lln;)Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_25

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    .line 825
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lez p1, :cond_86

    .line 827
    sget-object p2, Ljl;->q:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    goto :goto_86

    .line 829
    :cond_25
    invoke-virtual {p0}, Lgs;->ag()Z

    move-result v0

    if-eqz v0, :cond_3f

    mul-double/2addr p1, p1

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    .line 830
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lez p1, :cond_86

    .line 832
    sget-object p2, Ljl;->m:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    goto :goto_86

    .line 834
    :cond_3f
    invoke-virtual {p0}, Lgs;->p()Z

    move-result v0

    if-eqz v0, :cond_59

    const-wide/16 p1, 0x0

    cmpl-double p1, p3, p1

    if-lez p1, :cond_86

    .line 836
    sget-object p1, Ljl;->o:Lvr;

    const-wide/high16 p5, 0x4059000000000000L    # 100.0

    mul-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lgs;->a(Lvr;I)V

    goto :goto_86

    .line 838
    :cond_59
    iget-boolean p3, p0, Lgs;->aX:Z

    if-eqz p3, :cond_71

    mul-double/2addr p1, p1

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    .line 839
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lez p1, :cond_86

    .line 841
    sget-object p2, Ljl;->l:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    goto :goto_86

    :cond_71
    mul-double/2addr p1, p1

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    .line 844
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 p2, 0x19

    if-le p1, p2, :cond_86

    .line 846
    sget-object p2, Ljl;->p:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    :cond_86
    :goto_86
    return-void
.end method

.method private j(DDD)V
    .registers 8

    .line 852
    iget-object v0, p0, Lgs;->aH:Lsn;

    if-eqz v0, :cond_7c

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    .line 853
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lez p1, :cond_7c

    .line 855
    iget-object p2, p0, Lgs;->aH:Lsn;

    instance-of p2, p2, Lyl;

    if-eqz p2, :cond_65

    .line 856
    sget-object p2, Ljl;->r:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    .line 858
    iget-object p1, p0, Lgs;->bN:Lbr;

    if-nez p1, :cond_3f

    .line 859
    new-instance p1, Lbr;

    iget-wide p2, p0, Lgs;->aM:D

    invoke-static {p2, p3}, Lin;->b(D)I

    move-result p2

    iget-wide p3, p0, Lgs;->aN:D

    invoke-static {p3, p4}, Lin;->b(D)I

    move-result p3

    iget-wide p4, p0, Lgs;->aO:D

    invoke-static {p4, p5}, Lin;->b(D)I

    move-result p4

    invoke-direct {p1, p2, p3, p4}, Lbr;-><init>(III)V

    iput-object p1, p0, Lgs;->bN:Lbr;

    goto :goto_7c

    .line 860
    :cond_3f
    iget-wide p2, p0, Lgs;->aM:D

    invoke-static {p2, p3}, Lin;->b(D)I

    move-result p2

    iget-wide p3, p0, Lgs;->aN:D

    invoke-static {p3, p4}, Lin;->b(D)I

    move-result p3

    iget-wide p4, p0, Lgs;->aO:D

    invoke-static {p4, p5}, Lin;->b(D)I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lbr;->a(III)D

    move-result-wide p1

    const-wide p3, 0x408f400000000000L    # 1000.0

    cmpl-double p1, p1, p3

    if-ltz p1, :cond_7c

    .line 861
    sget-object p1, Lep;->q:Lny;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lgs;->a(Lvr;I)V

    goto :goto_7c

    .line 864
    :cond_65
    iget-object p2, p0, Lgs;->aH:Lsn;

    instance-of p2, p2, Lfz;

    if-eqz p2, :cond_71

    .line 865
    sget-object p2, Ljl;->s:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    goto :goto_7c

    .line 866
    :cond_71
    iget-object p2, p0, Lgs;->aH:Lsn;

    instance-of p2, p2, Lwh;

    if-eqz p2, :cond_7c

    .line 867
    sget-object p2, Ljl;->t:Lvr;

    invoke-virtual {p0, p2, p1}, Lgs;->a(Lvr;I)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method private j(Lsn;)V
    .registers 2

    .line 240
    invoke-virtual {p1, p0}, Lsn;->b(Lgs;)V

    return-void
.end method


# virtual methods
.method public C()I
    .registers 2

    .line 248
    iget v0, p0, Lgs;->g:I

    return v0
.end method

.method public D()V
    .registers 4

    .line 292
    iget-object v0, p0, Lgs;->c:Lix;

    iget v1, v0, Lix;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lix;->a(II)Liz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgs;->a(Liz;Z)V

    return-void
.end method

.method protected E()V
    .registers 2

    const v0, 0x3fcf5c29    # 1.62f

    .line 401
    iput v0, p0, Lgs;->bf:F

    return-void
.end method

.method protected F()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public G()Liz;
    .registers 2

    .line 505
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    return-object v0
.end method

.method public H()V
    .registers 4

    .line 509
    iget-object v0, p0, Lgs;->c:Lix;

    iget v1, v0, Lix;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lix;->a(ILiz;)V

    return-void
.end method

.method public I()D
    .registers 3

    .line 513
    iget v0, p0, Lgs;->bf:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public J()V
    .registers 2

    const/4 v0, -0x1

    .line 517
    iput v0, p0, Lgs;->k:I

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lgs;->j:Z

    return-void
.end method

.method public K()V
    .registers 2

    .line 569
    invoke-super {p0}, Lls;->K()V

    .line 570
    iget-object v0, p0, Lgs;->d:Ldw;

    invoke-virtual {v0, p0}, Ldw;->a(Lgs;)V

    .line 571
    iget-object v0, p0, Lgs;->e:Ldw;

    if-eqz v0, :cond_f

    .line 572
    invoke-virtual {v0, p0}, Ldw;->a(Lgs;)V

    :cond_f
    return-void
.end method

.method public L()Z
    .registers 2

    .line 578
    iget-boolean v0, p0, Lgs;->u:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lls;->L()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public M()F
    .registers 5

    .line 731
    iget-object v0, p0, Lgs;->v:Lbr;

    if-eqz v0, :cond_2c

    .line 732
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget-object v1, p0, Lgs;->v:Lbr;

    iget v1, v1, Lbr;->a:I

    iget-object v2, p0, Lgs;->v:Lbr;

    iget v2, v2, Lbr;->b:I

    iget-object v3, p0, Lgs;->v:Lbr;

    iget v3, v3, Lbr;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->e(III)I

    move-result v0

    .line 733
    invoke-static {v0}, Lve;->d(I)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    goto :goto_2c

    :cond_23
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    :cond_26
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    :cond_29
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .registers 2

    .line 751
    iget-boolean v0, p0, Lgs;->u:Z

    return v0
.end method

.method public O()Z
    .registers 3

    .line 755
    iget-boolean v0, p0, Lgs;->u:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lgs;->a:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public P()I
    .registers 2

    .line 759
    iget v0, p0, Lgs;->a:I

    return v0
.end method

.method public Q()Lbr;
    .registers 2

    .line 785
    iget-object v0, p0, Lgs;->b:Lbr;

    return-object v0
.end method

.method protected R()V
    .registers 3

    .line 805
    invoke-super {p0}, Lls;->R()V

    .line 806
    sget-object v0, Ljl;->u:Lvr;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgs;->a(Lvr;I)V

    return-void
.end method

.method public S()V
    .registers 2

    .line 897
    iget v0, p0, Lgs;->z:I

    if-lez v0, :cond_9

    const/16 v0, 0xa

    .line 898
    iput v0, p0, Lgs;->z:I

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 902
    iput-boolean v0, p0, Lgs;->A:Z

    return-void
.end method

.method public a(Luu;)F
    .registers 4

    .line 336
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0, p1}, Lix;->a(Luu;)F

    move-result p1

    .line 337
    sget-object v0, Lln;->g:Lln;

    invoke-virtual {p0, v0}, Lgs;->a(Lln;)Z

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz v0, :cond_11

    div-float/2addr p1, v1

    .line 338
    :cond_11
    iget-boolean v0, p0, Lgs;->aX:Z

    if-nez v0, :cond_16

    div-float/2addr p1, v1

    :cond_16
    return p1
.end method

.method public a(III)V
    .registers 4

    return-void
.end method

.method public a(Laz;)V
    .registers 2

    return-void
.end method

.method public a(Lbr;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 790
    new-instance v0, Lbr;

    invoke-direct {v0, p1}, Lbr;-><init>(Lbr;)V

    iput-object v0, p0, Lgs;->b:Lbr;

    goto :goto_d

    :cond_a
    const/4 p1, 0x0

    .line 792
    iput-object p1, p0, Lgs;->b:Lbr;

    :goto_d
    return-void
.end method

.method protected a(Lhl;)V
    .registers 3

    .line 332
    iget-object v0, p0, Lgs;->aI:Lfd;

    invoke-virtual {v0, p1}, Lfd;->b(Lsn;)Z

    return-void
.end method

.method public a(Liz;)V
    .registers 3

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, p1, v0}, Lgs;->a(Liz;Z)V

    return-void
.end method

.method public a(Liz;Z)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 302
    :cond_3
    new-instance v9, Lhl;

    iget-object v1, p0, Lgs;->aI:Lfd;

    iget-wide v2, p0, Lgs;->aM:D

    iget-wide v4, p0, Lgs;->aN:D

    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Lgs;->w()F

    move-result v0

    float-to-double v6, v0

    add-double/2addr v4, v6

    iget-wide v6, p0, Lgs;->aO:D

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    const/16 p1, 0x28

    .line 303
    iput p1, v9, Lhl;->c:I

    const/high16 p1, 0x40000000    # 2.0f

    const v0, 0x40490fdb    # (float)Math.PI

    if-eqz p2, :cond_54

    .line 307
    iget-object p2, p0, Lgs;->bs:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p2, v1

    .line 308
    iget-object v1, p0, Lgs;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 309
    invoke-static {v1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, p2

    float-to-double v2, p1

    iput-wide v2, v9, Lhl;->aP:D

    .line 310
    invoke-static {v1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iput-wide p1, v9, Lhl;->aR:D

    const-wide p1, 0x3fc99999a0000000L    # 0.20000000298023224

    .line 311
    iput-wide p1, v9, Lhl;->aQ:D

    goto/16 :goto_d1

    .line 315
    :cond_54
    iget p2, p0, Lgs;->aS:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr p2, v1

    mul-float/2addr p2, v0

    invoke-static {p2}, Lin;->a(F)F

    move-result p2

    neg-float p2, p2

    iget v2, p0, Lgs;->aT:F

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-static {v2}, Lin;->b(F)F

    move-result v2

    mul-float/2addr p2, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v2

    float-to-double v3, p2

    iput-wide v3, v9, Lhl;->aP:D

    .line 316
    iget p2, p0, Lgs;->aS:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v0

    invoke-static {p2}, Lin;->b(F)F

    move-result p2

    iget v3, p0, Lgs;->aT:F

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    invoke-static {v3}, Lin;->b(F)F

    move-result v3

    mul-float/2addr p2, v3

    mul-float/2addr p2, v2

    float-to-double v3, p2

    iput-wide v3, v9, Lhl;->aR:D

    .line 317
    iget p2, p0, Lgs;->aT:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v0

    invoke-static {p2}, Lin;->a(F)F

    move-result p2

    neg-float p2, p2

    mul-float/2addr p2, v2

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr p2, v1

    float-to-double v2, p2

    iput-wide v2, v9, Lhl;->aQ:D

    .line 320
    iget-object p2, p0, Lgs;->bs:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    .line 321
    iget-object p1, p0, Lgs;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v0, 0x3ca3d70a    # 0.02f

    mul-float/2addr p1, v0

    .line 322
    iget-wide v2, v9, Lhl;->aP:D

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double p1, p1

    mul-double/2addr v6, p1

    add-double/2addr v2, v6

    iput-wide v2, v9, Lhl;->aP:D

    .line 323
    iget-wide v2, v9, Lhl;->aQ:D

    iget-object v0, p0, Lgs;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v6, p0, Lgs;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float/2addr v0, v6

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v2, v0

    iput-wide v2, v9, Lhl;->aQ:D

    .line 324
    iget-wide v0, v9, Lhl;->aR:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iput-wide v0, v9, Lhl;->aR:D

    .line 327
    :goto_d1
    invoke-virtual {p0, v9}, Lgs;->a(Lhl;)V

    .line 328
    sget-object p1, Ljl;->v:Lvr;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lgs;->a(Lvr;I)V

    return-void
.end method

.method public a(Lls;)V
    .registers 2

    .line 882
    instance-of p1, p1, Lgz;

    if-eqz p1, :cond_9

    .line 883
    sget-object p1, Lep;->s:Lny;

    invoke-virtual {p0, p1}, Lgs;->a(Lvr;)V

    :cond_9
    return-void
.end method

.method protected a(Lls;Z)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 446
    instance-of v2, v1, Lgb;

    if-nez v2, :cond_9f

    instance-of v2, v1, Lbp;

    if-eqz v2, :cond_e

    goto/16 :goto_9f

    .line 450
    :cond_e
    instance-of v2, v1, Lgi;

    if-eqz v2, :cond_28

    .line 451
    move-object v2, v1

    check-cast v2, Lgi;

    .line 452
    invoke-virtual {v2}, Lgi;->D()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v0, Lgs;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lgi;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-void

    .line 456
    :cond_28
    instance-of v2, v1, Lgs;

    if-eqz v2, :cond_33

    invoke-virtual/range {p0 .. p0}, Lgs;->F()Z

    move-result v2

    if-nez v2, :cond_33

    return-void

    .line 462
    :cond_33
    iget-object v2, v0, Lgs;->aI:Lfd;

    const-class v3, Lgi;

    iget-wide v4, v0, Lgs;->aM:D

    iget-wide v6, v0, Lgs;->aN:D

    iget-wide v8, v0, Lgs;->aO:D

    iget-wide v10, v0, Lgs;->aM:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    iget-wide v14, v0, Lgs;->aN:D

    add-double/2addr v14, v12

    move-object/from16 v16, v2

    iget-wide v1, v0, Lgs;->aO:D

    add-double/2addr v1, v12

    move-wide v12, v14

    move-wide v14, v1

    invoke-static/range {v4 .. v15}, Leq;->b(DDDDDD)Leq;

    move-result-object v17

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    const-wide/high16 v22, 0x4030000000000000L    # 16.0

    invoke-virtual/range {v17 .. v23}, Leq;->b(DDD)Leq;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v3, v1}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v1

    .line 463
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 464
    check-cast v2, Lgi;

    .line 465
    invoke-virtual {v2}, Lgi;->D()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v2}, Lgi;->G()Lsn;

    move-result-object v3

    if-nez v3, :cond_9c

    iget-object v3, v0, Lgs;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lgi;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    if-eqz p2, :cond_92

    .line 466
    invoke-virtual {v2}, Lgi;->B()Z

    move-result v3

    if-nez v3, :cond_9c

    :cond_92
    const/4 v3, 0x0

    .line 467
    invoke-virtual {v2, v3}, Lgi;->b(Z)V

    move-object/from16 v3, p1

    .line 468
    invoke-virtual {v2, v3}, Lgi;->c(Lsn;)V

    goto :goto_64

    :cond_9c
    move-object/from16 v3, p1

    goto :goto_64

    :cond_9f
    :goto_9f
    return-void
.end method

.method public a(Llw;)V
    .registers 2

    return-void
.end method

.method public a(Lnu;)V
    .registers 7

    .line 349
    invoke-super {p0, p1}, Lls;->a(Lnu;)V

    const-string v0, "Inventory"

    .line 350
    invoke-virtual {p1, v0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lgs;->c:Lix;

    invoke-virtual {v1, v0}, Lix;->b(Lsp;)V

    const-string v0, "Dimension"

    .line 352
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgs;->m:I

    const-string v0, "Sleeping"

    .line 353
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgs;->u:Z

    const-string v0, "SleepTimer"

    .line 354
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lgs;->a:I

    .line 356
    iget-boolean v0, p0, Lgs;->u:Z

    if-eqz v0, :cond_48

    .line 357
    new-instance v0, Lbr;

    iget-wide v1, p0, Lgs;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Lgs;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lgs;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbr;-><init>(III)V

    iput-object v0, p0, Lgs;->v:Lbr;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 358
    invoke-virtual {p0, v1, v1, v0}, Lgs;->a(ZZZ)V

    :cond_48
    const-string v0, "SpawnX"

    .line 361
    invoke-virtual {p1, v0}, Lnu;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "SpawnY"

    invoke-virtual {p1, v1}, Lnu;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "SpawnZ"

    invoke-virtual {p1, v2}, Lnu;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 362
    new-instance v3, Lbr;

    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Lnu;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2}, Lnu;->e(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, v0, v1, p1}, Lbr;-><init>(III)V

    iput-object v3, p0, Lgs;->b:Lbr;

    :cond_73
    return-void
.end method

.method public a(Lsk;)V
    .registers 2

    return-void
.end method

.method public a(Lvr;)V
    .registers 3

    const/4 v0, 0x1

    .line 797
    invoke-virtual {p0, p1, v0}, Lgs;->a(Lvr;I)V

    return-void
.end method

.method public a(Lvr;I)V
    .registers 3

    return-void
.end method

.method public a(Lyk;)V
    .registers 2

    return-void
.end method

.method public a(ZZZ)V
    .registers 15

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3fe66666    # 1.8f

    .line 680
    invoke-virtual {p0, v0, v1}, Lgs;->b(FF)V

    .line 681
    invoke-virtual {p0}, Lgs;->E()V

    .line 683
    iget-object v0, p0, Lgs;->v:Lbr;

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 685
    iget-object v2, p0, Lgs;->aI:Lfd;

    iget v3, v0, Lbr;->a:I

    iget v4, v0, Lbr;->b:I

    iget v5, v0, Lbr;->c:I

    invoke-virtual {v2, v3, v4, v5}, Lfd;->a(III)I

    move-result v2

    sget-object v3, Luu;->T:Luu;

    iget v3, v3, Luu;->bn:I

    if-ne v2, v3, :cond_64

    .line 686
    iget-object v2, p0, Lgs;->aI:Lfd;

    iget v3, v0, Lbr;->a:I

    iget v4, v0, Lbr;->b:I

    iget v5, v0, Lbr;->c:I

    invoke-static {v2, v3, v4, v5, v1}, Lve;->a(Lfd;IIIZ)V

    .line 688
    iget-object v2, p0, Lgs;->aI:Lfd;

    iget v3, v0, Lbr;->a:I

    iget v4, v0, Lbr;->b:I

    iget v5, v0, Lbr;->c:I

    invoke-static {v2, v3, v4, v5, v1}, Lve;->f(Lfd;IIII)Lbr;

    move-result-object v2

    if-nez v2, :cond_49

    .line 690
    new-instance v2, Lbr;

    iget v3, v0, Lbr;->a:I

    iget v4, v0, Lbr;->b:I

    add-int/lit8 v4, v4, 0x1

    iget v0, v0, Lbr;->c:I

    invoke-direct {v2, v3, v4, v0}, Lbr;-><init>(III)V

    .line 692
    :cond_49
    iget v0, v2, Lbr;->a:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-double v5, v0

    iget v0, v2, Lbr;->b:I

    int-to-float v0, v0

    iget v4, p0, Lgs;->bf:F

    add-float/2addr v0, v4

    const v4, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v4

    float-to-double v7, v0

    iget v0, v2, Lbr;->c:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-double v9, v0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lgs;->e(DDD)V

    .line 695
    :cond_64
    iput-boolean v1, p0, Lgs;->u:Z

    .line 696
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_73

    if-eqz p2, :cond_73

    .line 697
    iget-object p2, p0, Lgs;->aI:Lfd;

    invoke-virtual {p2}, Lfd;->y()V

    :cond_73
    if-eqz p1, :cond_78

    .line 700
    iput v1, p0, Lgs;->a:I

    goto :goto_7c

    :cond_78
    const/16 p1, 0x64

    .line 702
    iput p1, p0, Lgs;->a:I

    :goto_7c
    if-eqz p3, :cond_83

    .line 705
    iget-object p1, p0, Lgs;->v:Lbr;

    invoke-virtual {p0, p1}, Lgs;->a(Lbr;)V

    :cond_83
    return-void
.end method

.method public a(Lsn;I)Z
    .registers 6

    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lgs;->av:I

    .line 409
    iget v1, p0, Lgs;->Y:I

    if-gtz v1, :cond_8

    return v0

    .line 411
    :cond_8
    invoke-virtual {p0}, Lgs;->N()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lgs;->aI:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    if-nez v1, :cond_18

    .line 412
    invoke-virtual {p0, v2, v2, v0}, Lgs;->a(ZZZ)V

    .line 415
    :cond_18
    instance-of v1, p1, Lgz;

    if-nez v1, :cond_20

    instance-of v1, p1, Lsl;

    if-eqz v1, :cond_3b

    .line 416
    :cond_20
    iget-object v1, p0, Lgs;->aI:Lfd;

    iget v1, v1, Lfd;->q:I

    if-nez v1, :cond_27

    move p2, v0

    .line 417
    :cond_27
    iget-object v1, p0, Lgs;->aI:Lfd;

    iget v1, v1, Lfd;->q:I

    if-ne v1, v2, :cond_30

    div-int/lit8 p2, p2, 0x3

    add-int/2addr p2, v2

    .line 418
    :cond_30
    iget-object v1, p0, Lgs;->aI:Lfd;

    iget v1, v1, Lfd;->q:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3b

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    :cond_3b
    if-nez p2, :cond_3e

    return v0

    .line 424
    :cond_3e
    instance-of v1, p1, Lsl;

    if-eqz v1, :cond_4c

    .line 425
    move-object v1, p1

    check-cast v1, Lsl;

    iget-object v2, v1, Lsl;->c:Lls;

    if-eqz v2, :cond_4c

    .line 426
    iget-object v1, v1, Lsl;->c:Lls;

    goto :goto_4d

    :cond_4c
    move-object v1, p1

    .line 429
    :goto_4d
    instance-of v2, v1, Lls;

    if-eqz v2, :cond_56

    .line 431
    check-cast v1, Lls;

    invoke-virtual {p0, v1, v0}, Lgs;->a(Lls;Z)V

    .line 434
    :cond_56
    sget-object v0, Ljl;->x:Lvr;

    invoke-virtual {p0, v0, p2}, Lgs;->a(Lvr;I)V

    .line 436
    invoke-super {p0, p1, p2}, Lls;->a(Lsn;I)Z

    move-result p1

    return p1
.end method

.method public a_(FF)V
    .registers 16

    .line 812
    iget-wide v0, p0, Lgs;->aM:D

    iget-wide v2, p0, Lgs;->aN:D

    iget-wide v4, p0, Lgs;->aO:D

    .line 814
    invoke-super {p0, p1, p2}, Lls;->a_(FF)V

    .line 816
    iget-wide p1, p0, Lgs;->aM:D

    sub-double v7, p1, v0

    iget-wide p1, p0, Lgs;->aN:D

    sub-double v9, p1, v2

    iget-wide p1, p0, Lgs;->aO:D

    sub-double v11, p1, v4

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lgs;->i(DDD)V

    return-void
.end method

.method public b(III)Lcw;
    .registers 21

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 586
    iget-object v0, v7, Lgs;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_5f

    .line 587
    invoke-virtual/range {p0 .. p0}, Lgs;->N()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lgs;->W()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_5c

    .line 591
    :cond_1b
    iget-object v0, v7, Lgs;->aI:Lfd;

    iget-object v0, v0, Lfd;->t:Lxa;

    iget-boolean v0, v0, Lxa;->c:Z

    if-eqz v0, :cond_26

    .line 593
    sget-object v0, Lcw;->b:Lcw;

    return-object v0

    .line 595
    :cond_26
    iget-object v0, v7, Lgs;->aI:Lfd;

    invoke-virtual {v0}, Lfd;->f()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 597
    sget-object v0, Lcw;->c:Lcw;

    return-object v0

    .line 599
    :cond_31
    iget-wide v0, v7, Lgs;->aM:D

    int-to-double v2, v8

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_59

    iget-wide v0, v7, Lgs;->aN:D

    int-to-double v4, v9

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_59

    iget-wide v0, v7, Lgs;->aO:D

    int-to-double v4, v10

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5f

    .line 601
    :cond_59
    sget-object v0, Lcw;->d:Lcw;

    return-object v0

    .line 588
    :cond_5c
    :goto_5c
    sget-object v0, Lcw;->e:Lcw;

    return-object v0

    :cond_5f
    const v0, 0x3e4ccccd    # 0.2f

    .line 605
    invoke-virtual {v7, v0, v0}, Lgs;->b(FF)V

    .line 606
    iput v0, v7, Lgs;->bf:F

    .line 607
    iget-object v0, v7, Lgs;->aI:Lfd;

    invoke-virtual {v0, v8, v9, v10}, Lfd;->i(III)Z

    move-result v0

    const/4 v11, 0x1

    const/high16 v1, 0x3f700000    # 0.9375f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_af

    .line 610
    iget-object v0, v7, Lgs;->aI:Lfd;

    invoke-virtual {v0, v8, v9, v10}, Lfd;->e(III)I

    move-result v0

    .line 611
    invoke-static {v0}, Lve;->d(I)I

    move-result v0

    const v3, 0x3f666666    # 0.9f

    if-eqz v0, :cond_9a

    const v4, 0x3dcccccd    # 0.1f

    if-eq v0, v11, :cond_98

    const/4 v5, 0x2

    if-eq v0, v5, :cond_96

    const/4 v4, 0x3

    if-eq v0, v4, :cond_90

    move v3, v2

    goto :goto_9a

    :cond_90
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_9a

    :cond_96
    move v3, v4

    goto :goto_9a

    :cond_98
    move v3, v2

    move v2, v4

    .line 628
    :cond_9a
    :goto_9a
    invoke-direct {v7, v0}, Lgs;->e(I)V

    int-to-float v0, v8

    add-float/2addr v0, v2

    float-to-double v4, v0

    int-to-float v0, v9

    add-float/2addr v0, v1

    float-to-double v12, v0

    int-to-float v0, v10

    add-float/2addr v0, v3

    float-to-double v14, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    move-wide v3, v12

    move-wide v5, v14

    .line 629
    invoke-virtual/range {v0 .. v6}, Lgs;->e(DDD)V

    goto :goto_c0

    :cond_af
    int-to-float v0, v8

    add-float/2addr v0, v2

    float-to-double v3, v0

    int-to-float v0, v9

    add-float/2addr v0, v1

    float-to-double v5, v0

    int-to-float v0, v10

    add-float/2addr v0, v2

    float-to-double v12, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v12

    .line 631
    invoke-virtual/range {v0 .. v6}, Lgs;->e(DDD)V

    .line 633
    :goto_c0
    iput-boolean v11, v7, Lgs;->u:Z

    const/4 v0, 0x0

    .line 634
    iput v0, v7, Lgs;->a:I

    .line 635
    new-instance v0, Lbr;

    invoke-direct {v0, v8, v9, v10}, Lbr;-><init>(III)V

    iput-object v0, v7, Lgs;->v:Lbr;

    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, v7, Lgs;->aQ:D

    iput-wide v0, v7, Lgs;->aR:D

    iput-wide v0, v7, Lgs;->aP:D

    .line 638
    iget-object v0, v7, Lgs;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_df

    .line 639
    iget-object v0, v7, Lgs;->aI:Lfd;

    invoke-virtual {v0}, Lfd;->y()V

    .line 642
    :cond_df
    sget-object v0, Lcw;->a:Lcw;

    return-object v0
.end method

.method protected b()V
    .registers 4

    .line 94
    invoke-super {p0}, Lls;->b()V

    .line 96
    iget-object v0, p0, Lgs;->bD:Lud;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected b(F)V
    .registers 7

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_14

    .line 876
    sget-object v0, Ljl;->n:Lvr;

    float-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lgs;->a(Lvr;I)V

    .line 878
    :cond_14
    invoke-super {p0, p1}, Lls;->b(F)V

    return-void
.end method

.method protected b(I)V
    .registers 4

    .line 475
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->f()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x19

    mul-int/2addr v0, p1

    .line 476
    iget v1, p0, Lgs;->bO:I

    add-int/2addr v0, v1

    .line 477
    iget-object v1, p0, Lgs;->c:Lix;

    invoke-virtual {v1, p1}, Lix;->e(I)V

    .line 478
    div-int/lit8 p1, v0, 0x19

    .line 479
    rem-int/lit8 v0, v0, 0x19

    iput v0, p0, Lgs;->bO:I

    .line 480
    invoke-super {p0, p1}, Lls;->b(I)V

    return-void
.end method

.method public b(Liz;)V
    .registers 2

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 367
    invoke-super {p0, p1}, Lls;->b(Lnu;)V

    .line 368
    iget-object v0, p0, Lgs;->c:Lix;

    new-instance v1, Lsp;

    invoke-direct {v1}, Lsp;-><init>()V

    invoke-virtual {v0, v1}, Lix;->a(Lsp;)Lsp;

    move-result-object v0

    const-string v1, "Inventory"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    const-string v0, "Dimension"

    .line 369
    iget v1, p0, Lgs;->m:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "Sleeping"

    .line 370
    iget-boolean v1, p0, Lgs;->u:Z

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    .line 371
    iget v0, p0, Lgs;->a:I

    int-to-short v0, v0

    const-string v1, "SleepTimer"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 373
    iget-object v0, p0, Lgs;->b:Lbr;

    if-eqz v0, :cond_46

    const-string v1, "SpawnX"

    .line 374
    iget v0, v0, Lbr;->a:I

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lgs;->b:Lbr;

    iget v0, v0, Lbr;->b:I

    const-string v1, "SpawnY"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lgs;->b:Lbr;

    iget v0, v0, Lbr;->c:I

    const-string v1, "SpawnZ"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;I)V

    :cond_46
    return-void
.end method

.method public b(Lsn;)V
    .registers 10

    .line 252
    invoke-super {p0, p1}, Lls;->b(Lsn;)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 253
    invoke-virtual {p0, v0, v0}, Lgs;->b(FF)V

    .line 254
    iget-wide v2, p0, Lgs;->aM:D

    iget-wide v4, p0, Lgs;->aN:D

    iget-wide v6, p0, Lgs;->aO:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lgs;->e(DDD)V

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 255
    iput-wide v0, p0, Lgs;->aQ:D

    .line 257
    iget-object v0, p0, Lgs;->l:Ljava/lang/String;

    const-string v1, "Notch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 258
    new-instance v0, Liz;

    sget-object v2, Lgm;->h:Lgm;

    invoke-direct {v0, v2, v1}, Liz;-><init>(Lgm;I)V

    invoke-virtual {p0, v0, v1}, Lgs;->a(Liz;Z)V

    .line 260
    :cond_2f
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->g()V

    const v0, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_5f

    .line 263
    iget p1, p0, Lgs;->ac:F

    iget v2, p0, Lgs;->aS:F

    add-float/2addr p1, v2

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v2

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, v0

    float-to-double v4, p1

    iput-wide v4, p0, Lgs;->aP:D

    .line 264
    iget p1, p0, Lgs;->ac:F

    iget v4, p0, Lgs;->aS:F

    add-float/2addr p1, v4

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, v0

    float-to-double v2, p1

    iput-wide v2, p0, Lgs;->aR:D

    goto :goto_65

    :cond_5f
    const-wide/16 v2, 0x0

    .line 266
    iput-wide v2, p0, Lgs;->aR:D

    iput-wide v2, p0, Lgs;->aP:D

    .line 268
    :goto_65
    iput v0, p0, Lgs;->bf:F

    .line 270
    sget-object p1, Ljl;->y:Lvr;

    invoke-virtual {p0, p1, v1}, Lgs;->a(Lvr;I)V

    return-void
.end method

.method public b(Lsn;I)V
    .registers 3

    return-void
.end method

.method public b(Luu;)Z
    .registers 3

    .line 344
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0, p1}, Lix;->b(Luu;)Z

    move-result p1

    return p1
.end method

.method public c(Liz;)I
    .registers 5

    .line 888
    invoke-super {p0, p1}, Lls;->c(Liz;)I

    move-result v0

    .line 889
    iget v1, p1, Liz;->c:I

    sget-object v2, Lgm;->aP:Lgm;

    iget v2, v2, Lgm;->bf:I

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lgs;->D:Llx;

    if-eqz v1, :cond_16

    .line 890
    invoke-virtual {p1}, Liz;->b()I

    move-result p1

    add-int/lit8 v0, p1, 0x10

    :cond_16
    return v0
.end method

.method public c(Lsn;)V
    .registers 4

    .line 493
    invoke-virtual {p1, p0}, Lsn;->a(Lgs;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 494
    :cond_7
    invoke-virtual {p0}, Lgs;->G()Liz;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 495
    instance-of v1, p1, Lls;

    if-eqz v1, :cond_20

    .line 496
    check-cast p1, Lls;

    invoke-virtual {v0, p1}, Liz;->a(Lls;)V

    .line 497
    iget p1, v0, Liz;->a:I

    if-gtz p1, :cond_20

    .line 498
    invoke-virtual {v0, p0}, Liz;->a(Lgs;)V

    .line 499
    invoke-virtual {p0}, Lgs;->H()V

    :cond_20
    return-void
.end method

.method public c(Lsn;I)V
    .registers 4

    .line 274
    iget v0, p0, Lgs;->g:I

    add-int/2addr v0, p2

    iput v0, p0, Lgs;->g:I

    .line 276
    instance-of p1, p1, Lgs;

    const/4 p2, 0x1

    if-eqz p1, :cond_10

    .line 277
    sget-object p1, Ljl;->A:Lvr;

    invoke-virtual {p0, p1, p2}, Lgs;->a(Lvr;I)V

    goto :goto_15

    .line 279
    :cond_10
    sget-object p1, Ljl;->z:Lvr;

    invoke-virtual {p0, p1, p2}, Lgs;->a(Lvr;I)V

    :goto_15
    return-void
.end method

.method public d(Lsn;)V
    .registers 7

    .line 522
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0, p1}, Lix;->a(Lsn;)I

    move-result v0

    if-lez v0, :cond_44

    .line 524
    iget-wide v1, p0, Lgs;->aQ:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    .line 526
    :cond_12
    invoke-virtual {p1, p0, v0}, Lsn;->a(Lsn;I)Z

    .line 527
    invoke-virtual {p0}, Lgs;->G()Liz;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 528
    instance-of v2, p1, Lls;

    if-eqz v2, :cond_2f

    .line 529
    move-object v2, p1

    check-cast v2, Lls;

    invoke-virtual {v1, v2, p0}, Liz;->a(Lls;Lgs;)V

    .line 530
    iget v2, v1, Liz;->a:I

    if-gtz v2, :cond_2f

    .line 531
    invoke-virtual {v1, p0}, Liz;->a(Lgs;)V

    .line 532
    invoke-virtual {p0}, Lgs;->H()V

    .line 535
    :cond_2f
    instance-of v1, p1, Lls;

    if-eqz v1, :cond_44

    .line 536
    invoke-virtual {p1}, Lsn;->W()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 537
    check-cast p1, Lls;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lgs;->a(Lls;Z)V

    .line 539
    :cond_3f
    sget-object p1, Ljl;->w:Lvr;

    invoke-virtual {p0, p1, v0}, Lgs;->a(Lvr;I)V

    :cond_44
    return-void
.end method

.method protected f_()V
    .registers 4

    .line 195
    iget-boolean v0, p0, Lgs;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 196
    iget v0, p0, Lgs;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgs;->k:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_16

    .line 198
    iput v1, p0, Lgs;->k:I

    .line 199
    iput-boolean v1, p0, Lgs;->j:Z

    goto :goto_16

    .line 202
    :cond_14
    iput v1, p0, Lgs;->k:I

    .line 205
    :cond_16
    :goto_16
    iget v0, p0, Lgs;->k:I

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    iput v0, p0, Lgs;->X:F

    return-void
.end method

.method public o()V
    .registers 9

    .line 209
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget v0, v0, Lfd;->q:I

    if-nez v0, :cond_17

    iget v0, p0, Lgs;->Y:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_17

    .line 210
    iget v0, p0, Lgs;->bt:I

    rem-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgs;->c(I)V

    .line 212
    :cond_17
    iget-object v0, p0, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->e()V

    .line 213
    iget v0, p0, Lgs;->i:F

    iput v0, p0, Lgs;->h:F

    .line 215
    invoke-super {p0}, Lls;->o()V

    .line 217
    iget-wide v0, p0, Lgs;->aP:D

    iget-wide v2, p0, Lgs;->aP:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lgs;->aR:D

    iget-wide v4, p0, Lgs;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 218
    iget-wide v1, p0, Lgs;->aQ:D

    neg-double v1, v1

    const-wide v3, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_4b

    move v0, v2

    .line 220
    :cond_4b
    iget-boolean v2, p0, Lgs;->aX:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    iget v2, p0, Lgs;->Y:I

    if-gtz v2, :cond_55

    :cond_54
    move v0, v3

    .line 221
    :cond_55
    iget-boolean v2, p0, Lgs;->aX:Z

    if-nez v2, :cond_5d

    iget v2, p0, Lgs;->Y:I

    if-gtz v2, :cond_5e

    :cond_5d
    move v1, v3

    .line 222
    :cond_5e
    iget v2, p0, Lgs;->i:F

    sub-float/2addr v0, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, p0, Lgs;->i:F

    .line 223
    iget v0, p0, Lgs;->ag:F

    iget v2, p0, Lgs;->ag:F

    sub-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lgs;->ag:F

    .line 226
    iget v0, p0, Lgs;->Y:I

    if-lez v0, :cond_a3

    .line 227
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget-object v1, p0, Lgs;->aW:Leq;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v1 .. v7}, Leq;->b(DDD)Leq;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a3

    const/4 v1, 0x0

    .line 229
    :goto_8d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 231
    iget-boolean v3, v2, Lsn;->be:Z

    if-nez v3, :cond_a0

    .line 232
    invoke-direct {p0, v2}, Lgs;->j(Lsn;)V

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_a3
    return-void
.end method

.method public p_()V
    .registers 1

    return-void
.end method

.method protected r()V
    .registers 2

    .line 166
    iget-object v0, p0, Lgs;->d:Ldw;

    iput-object v0, p0, Lgs;->e:Ldw;

    return-void
.end method

.method public s_()V
    .registers 16

    .line 176
    iget-wide v0, p0, Lgs;->aM:D

    iget-wide v2, p0, Lgs;->aN:D

    iget-wide v4, p0, Lgs;->aO:D

    .line 178
    invoke-super {p0}, Lls;->s_()V

    .line 179
    iget v6, p0, Lgs;->i:F

    iput v6, p0, Lgs;->h:F

    const/4 v6, 0x0

    .line 180
    iput v6, p0, Lgs;->i:F

    .line 182
    iget-wide v6, p0, Lgs;->aM:D

    sub-double v9, v6, v0

    iget-wide v0, p0, Lgs;->aN:D

    sub-double v11, v0, v2

    iget-wide v0, p0, Lgs;->aO:D

    sub-double v13, v0, v4

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lgs;->j(DDD)V

    return-void
.end method

.method public t_()V
    .registers 3

    const v0, 0x3fcf5c29    # 1.62f

    .line 187
    iput v0, p0, Lgs;->bf:F

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3fe66666    # 1.8f

    .line 188
    invoke-virtual {p0, v0, v1}, Lgs;->b(FF)V

    .line 189
    invoke-super {p0}, Lls;->t_()V

    const/16 v0, 0x14

    .line 190
    iput v0, p0, Lgs;->Y:I

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lgs;->ad:I

    return-void
.end method

.method public u_()V
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://s3.amazonaws.com/MinecraftCloaks/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgs;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgs;->n:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lgs;->bB:Ljava/lang/String;

    return-void
.end method

.method public abstract v()V
.end method

.method public w()F
    .registers 2

    const v0, 0x3df5c28f    # 0.12f

    return v0
.end method

.method public w_()V
    .registers 12

    .line 100
    invoke-virtual {p0}, Lgs;->N()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 101
    iget v0, p0, Lgs;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lgs;->a:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_13

    .line 103
    iput v3, p0, Lgs;->a:I

    .line 106
    :cond_13
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_3c

    .line 107
    invoke-direct {p0}, Lgs;->am()Z

    move-result v0

    if-nez v0, :cond_23

    .line 108
    invoke-virtual {p0, v2, v2, v1}, Lgs;->a(ZZZ)V

    goto :goto_3c

    .line 109
    :cond_23
    iget-object v0, p0, Lgs;->aI:Lfd;

    invoke-virtual {v0}, Lfd;->f()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 110
    invoke-virtual {p0, v1, v2, v2}, Lgs;->a(ZZZ)V

    goto :goto_3c

    .line 113
    :cond_2f
    iget v0, p0, Lgs;->a:I

    if-lez v0, :cond_3c

    add-int/2addr v0, v2

    .line 114
    iput v0, p0, Lgs;->a:I

    const/16 v3, 0x6e

    if-lt v0, v3, :cond_3c

    .line 116
    iput v1, p0, Lgs;->a:I

    .line 120
    :cond_3c
    :goto_3c
    invoke-super {p0}, Lls;->w_()V

    .line 122
    iget-object v0, p0, Lgs;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_56

    .line 123
    iget-object v0, p0, Lgs;->e:Ldw;

    if-eqz v0, :cond_56

    invoke-virtual {v0, p0}, Ldw;->b(Lgs;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 124
    invoke-virtual {p0}, Lgs;->r()V

    .line 125
    iget-object v0, p0, Lgs;->d:Ldw;

    iput-object v0, p0, Lgs;->e:Ldw;

    .line 130
    :cond_56
    iget-wide v0, p0, Lgs;->r:D

    iput-wide v0, p0, Lgs;->o:D

    .line 131
    iget-wide v0, p0, Lgs;->s:D

    iput-wide v0, p0, Lgs;->p:D

    .line 132
    iget-wide v0, p0, Lgs;->t:D

    iput-wide v0, p0, Lgs;->q:D

    .line 134
    iget-wide v0, p0, Lgs;->aM:D

    iget-wide v3, p0, Lgs;->r:D

    sub-double/2addr v0, v3

    .line 135
    iget-wide v3, p0, Lgs;->aN:D

    iget-wide v5, p0, Lgs;->s:D

    sub-double/2addr v3, v5

    .line 136
    iget-wide v5, p0, Lgs;->aO:D

    iget-wide v7, p0, Lgs;->t:D

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v9, v0, v7

    if-lez v9, :cond_7d

    .line 139
    iget-wide v9, p0, Lgs;->aM:D

    iput-wide v9, p0, Lgs;->r:D

    iput-wide v9, p0, Lgs;->o:D

    :cond_7d
    cmpl-double v9, v5, v7

    if-lez v9, :cond_87

    .line 140
    iget-wide v9, p0, Lgs;->aO:D

    iput-wide v9, p0, Lgs;->t:D

    iput-wide v9, p0, Lgs;->q:D

    :cond_87
    cmpl-double v7, v3, v7

    if-lez v7, :cond_91

    .line 141
    iget-wide v7, p0, Lgs;->aN:D

    iput-wide v7, p0, Lgs;->s:D

    iput-wide v7, p0, Lgs;->p:D

    :cond_91
    const-wide/high16 v7, -0x3fdc000000000000L    # -10.0

    cmpg-double v9, v0, v7

    if-gez v9, :cond_9d

    .line 142
    iget-wide v9, p0, Lgs;->aM:D

    iput-wide v9, p0, Lgs;->r:D

    iput-wide v9, p0, Lgs;->o:D

    :cond_9d
    cmpg-double v9, v5, v7

    if-gez v9, :cond_a7

    .line 143
    iget-wide v9, p0, Lgs;->aO:D

    iput-wide v9, p0, Lgs;->t:D

    iput-wide v9, p0, Lgs;->q:D

    :cond_a7
    cmpg-double v7, v3, v7

    if-gez v7, :cond_b1

    .line 144
    iget-wide v7, p0, Lgs;->aN:D

    iput-wide v7, p0, Lgs;->s:D

    iput-wide v7, p0, Lgs;->p:D

    .line 146
    :cond_b1
    iget-wide v7, p0, Lgs;->r:D

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v9

    add-double/2addr v7, v0

    iput-wide v7, p0, Lgs;->r:D

    .line 147
    iget-wide v0, p0, Lgs;->t:D

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    iput-wide v0, p0, Lgs;->t:D

    .line 148
    iget-wide v0, p0, Lgs;->s:D

    mul-double/2addr v3, v9

    add-double/2addr v0, v3

    iput-wide v0, p0, Lgs;->s:D

    .line 150
    sget-object v0, Ljl;->k:Lvr;

    invoke-virtual {p0, v0, v2}, Lgs;->a(Lvr;I)V

    .line 152
    iget-object v0, p0, Lgs;->aH:Lsn;

    if-nez v0, :cond_d1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lgs;->bN:Lbr;

    :cond_d1
    return-void
.end method

.method protected y()Z
    .registers 2

    .line 161
    iget v0, p0, Lgs;->Y:I

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lgs;->N()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
