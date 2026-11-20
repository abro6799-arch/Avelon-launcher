###### Class defpackage.th (th)
.class public Lth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lth;

.field public static b:D

.field public static c:D

.field public static d:D


# instance fields
.field public e:Lji;

.field public f:Lra;

.field public g:Lfd;

.field public h:Lls;

.field public i:F

.field public j:F

.field public k:Lkv;

.field public l:D

.field public m:D

.field public n:D

.field private o:Ljava/util/Map;

.field private p:Lsj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    sput-object v0, Lth;->a:Lth;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lth;->o:Ljava/util/Map;

    .line 42
    const-class v1, Lcn;

    new-instance v2, Lyx;

    invoke-direct {v2}, Lyx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lwh;

    new-instance v2, Lme;

    new-instance v3, Leh;

    invoke-direct {v3}, Leh;-><init>()V

    new-instance v4, Leh;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5}, Leh;-><init>(F)V

    const v6, 0x3f333333    # 0.7f

    invoke-direct {v2, v3, v4, v6}, Lme;-><init>(Lko;Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Ldl;

    new-instance v2, Lxy;

    new-instance v3, Lmw;

    invoke-direct {v3}, Lmw;-><init>()V

    new-instance v4, Lea;

    invoke-direct {v4}, Lea;-><init>()V

    invoke-direct {v2, v3, v4, v6}, Lxy;-><init>(Lko;Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lbx;

    new-instance v2, Lva;

    new-instance v3, Lhh;

    invoke-direct {v3}, Lhh;-><init>()V

    invoke-direct {v2, v3, v6}, Lva;-><init>(Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lgi;

    new-instance v2, Lwe;

    new-instance v3, Lo;

    invoke-direct {v3}, Lo;-><init>()V

    invoke-direct {v2, v3, v5}, Lwe;-><init>(Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lww;

    new-instance v2, Lip;

    new-instance v3, Ltd;

    invoke-direct {v3}, Ltd;-><init>()V

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v2, v3, v4}, Lip;-><init>(Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lgb;

    new-instance v2, Lm;

    invoke-direct {v2}, Lm;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lfr;

    new-instance v2, Lv;

    new-instance v3, Llc;

    invoke-direct {v3}, Llc;-><init>()V

    invoke-direct {v2, v3, v5}, Lv;-><init>(Lfh;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Luz;

    new-instance v2, Lv;

    new-instance v3, Lej;

    invoke-direct {v3}, Lej;-><init>()V

    invoke-direct {v2, v3, v5}, Lv;-><init>(Lfh;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Luw;

    new-instance v2, Lmj;

    new-instance v3, Lno;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lno;-><init>(I)V

    new-instance v4, Lno;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lno;-><init>(I)V

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-direct {v2, v3, v4, v8}, Lmj;-><init>(Lko;Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lgs;

    new-instance v2, Lds;

    invoke-direct {v2}, Lds;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lnt;

    new-instance v2, Lyg;

    new-instance v3, Lej;

    invoke-direct {v3}, Lej;-><init>()V

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {v2, v3, v5, v4}, Lyg;-><init>(Lko;FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lbp;

    new-instance v2, Lpq;

    invoke-direct {v2}, Lpq;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lxt;

    new-instance v2, Les;

    new-instance v3, Lwn;

    invoke-direct {v3}, Lwn;-><init>()V

    invoke-direct {v2, v3, v6}, Les;-><init>(Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lls;

    new-instance v2, Lgv;

    new-instance v3, Lfh;

    invoke-direct {v3}, Lfh;-><init>()V

    invoke-direct {v2, v3, v5}, Lgv;-><init>(Lko;F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lsn;

    new-instance v2, Lmb;

    invoke-direct {v2}, Lmb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lqv;

    new-instance v2, Ldy;

    invoke-direct {v2}, Ldy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lsl;

    new-instance v2, Lmc;

    invoke-direct {v2}, Lmc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lby;

    new-instance v2, Ldg;

    sget-object v3, Lgm;->aB:Lgm;

    invoke-virtual {v3, v7}, Lgm;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Ldg;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lvv;

    new-instance v2, Ldg;

    sget-object v3, Lgm;->aN:Lgm;

    invoke-virtual {v3, v7}, Lgm;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Ldg;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lcf;

    new-instance v2, Lkl;

    invoke-direct {v2}, Lkl;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lhl;

    new-instance v2, Lbb;

    invoke-direct {v2}, Lbb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lqw;

    new-instance v2, Lon;

    invoke-direct {v2}, Lon;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lju;

    new-instance v2, Lgn;

    invoke-direct {v2}, Lgn;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lyl;

    new-instance v2, Ltb;

    invoke-direct {v2}, Ltb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lfz;

    new-instance v2, Lfe;

    invoke-direct {v2}, Lfe;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Llx;

    new-instance v2, Lpl;

    invoke-direct {v2}, Lpl;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    const-class v1, Lc;

    new-instance v2, Lpi;

    invoke-direct {v2}, Lpi;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    .line 76
    invoke-virtual {v1, p0}, Lbw;->a(Lth;)V

    goto :goto_1c3

    :cond_1d3
    return-void
.end method


# virtual methods
.method public a(DDD)D
    .registers 9

    .line 152
    iget-wide v0, p0, Lth;->l:D

    sub-double/2addr p1, v0

    .line 153
    iget-wide v0, p0, Lth;->m:D

    sub-double/2addr p3, v0

    .line 154
    iget-wide v0, p0, Lth;->n:D

    sub-double/2addr p5, v0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    return-wide p1
.end method

.method public a(Ljava/lang/Class;)Lbw;
    .registers 4

    .line 82
    iget-object v0, p0, Lth;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbw;

    if-nez v0, :cond_1b

    .line 83
    const-class v1, Lsn;

    if-eq p1, v1, :cond_1b

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lth;->a(Ljava/lang/Class;)Lbw;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lth;->o:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method

.method public a(Lsn;)Lbw;
    .registers 2

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lth;->a(Ljava/lang/Class;)Lbw;

    move-result-object p1

    return-object p1
.end method

.method public a()Lsj;
    .registers 2

    .line 159
    iget-object v0, p0, Lth;->p:Lsj;

    return-object v0
.end method

.method public a(Lfd;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lth;->g:Lfd;

    return-void
.end method

.method public a(Lfd;Lji;Lsj;Lls;Lkv;F)V
    .registers 11

    .line 95
    iput-object p1, p0, Lth;->g:Lfd;

    .line 96
    iput-object p2, p0, Lth;->e:Lji;

    .line 97
    iput-object p5, p0, Lth;->k:Lkv;

    .line 98
    iput-object p4, p0, Lth;->h:Lls;

    .line 99
    iput-object p3, p0, Lth;->p:Lsj;

    .line 101
    invoke-virtual {p4}, Lls;->N()Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 102
    iget-wide p2, p4, Lls;->aM:D

    invoke-static {p2, p3}, Lin;->b(D)I

    move-result p2

    iget-wide v0, p4, Lls;->aN:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p3

    iget-wide v0, p4, Lls;->aO:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p5

    invoke-virtual {p1, p2, p3, p5}, Lfd;->a(III)I

    move-result p2

    .line 103
    sget-object p3, Luu;->T:Luu;

    iget p3, p3, Luu;->bn:I

    if-ne p2, p3, :cond_65

    .line 104
    iget-wide p2, p4, Lls;->aM:D

    invoke-static {p2, p3}, Lin;->b(D)I

    move-result p2

    iget-wide v0, p4, Lls;->aN:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p3

    iget-wide v0, p4, Lls;->aO:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p5

    invoke-virtual {p1, p2, p3, p5}, Lfd;->e(III)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x5a

    add-int/lit16 p1, p1, 0xb4

    int-to-float p1, p1

    .line 108
    iput p1, p0, Lth;->i:F

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lth;->j:F

    goto :goto_65

    .line 116
    :cond_4f
    iget p1, p4, Lls;->aU:F

    iget p2, p4, Lls;->aS:F

    iget p3, p4, Lls;->aU:F

    sub-float/2addr p2, p3

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    iput p1, p0, Lth;->i:F

    .line 117
    iget p1, p4, Lls;->aV:F

    iget p2, p4, Lls;->aT:F

    iget p3, p4, Lls;->aV:F

    sub-float/2addr p2, p3

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    iput p1, p0, Lth;->j:F

    .line 120
    :cond_65
    :goto_65
    iget-wide p1, p4, Lls;->bl:D

    iget-wide v0, p4, Lls;->aM:D

    iget-wide v2, p4, Lls;->bl:D

    sub-double/2addr v0, v2

    float-to-double p5, p6

    mul-double/2addr v0, p5

    add-double/2addr p1, v0

    iput-wide p1, p0, Lth;->l:D

    .line 121
    iget-wide p1, p4, Lls;->bm:D

    iget-wide v0, p4, Lls;->aN:D

    iget-wide v2, p4, Lls;->bm:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr p1, v0

    iput-wide p1, p0, Lth;->m:D

    .line 122
    iget-wide p1, p4, Lls;->bn:D

    iget-wide v0, p4, Lls;->aO:D

    iget-wide p3, p4, Lls;->bn:D

    sub-double/2addr v0, p3

    mul-double/2addr v0, p5

    add-double/2addr p1, v0

    iput-wide p1, p0, Lth;->n:D

    return-void
.end method

.method public a(Lsn;DDDFF)V
    .registers 21

    .line 139
    invoke-virtual {p0, p1}, Lth;->a(Lsn;)Lbw;

    move-result-object v10

    if-eqz v10, :cond_16

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 141
    invoke-virtual/range {v0 .. v9}, Lbw;->a(Lsn;DDDFF)V

    .line 142
    invoke-virtual/range {v0 .. v9}, Lbw;->b(Lsn;DDDFF)V

    :cond_16
    return-void
.end method

.method public a(Lsn;F)V
    .registers 19

    move-object/from16 v1, p1

    move/from16 v9, p2

    .line 126
    iget-wide v2, v1, Lsn;->bl:D

    iget-wide v4, v1, Lsn;->aM:D

    iget-wide v6, v1, Lsn;->bl:D

    sub-double/2addr v4, v6

    float-to-double v6, v9

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 127
    iget-wide v4, v1, Lsn;->bm:D

    iget-wide v10, v1, Lsn;->aN:D

    iget-wide v12, v1, Lsn;->bm:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    .line 128
    iget-wide v10, v1, Lsn;->bn:D

    iget-wide v12, v1, Lsn;->aO:D

    iget-wide v14, v1, Lsn;->bn:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    .line 129
    iget v0, v1, Lsn;->aU:F

    iget v6, v1, Lsn;->aS:F

    iget v7, v1, Lsn;->aU:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    add-float v8, v0, v6

    .line 131
    invoke-virtual/range {p1 .. p2}, Lsn;->a(F)F

    move-result v0

    .line 133
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    .line 135
    sget-wide v6, Lth;->b:D

    sub-double/2addr v2, v6

    sget-wide v6, Lth;->c:D

    sub-double/2addr v4, v6

    sget-wide v6, Lth;->d:D

    sub-double v6, v10, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lth;->a(Lsn;DDDFF)V

    return-void
.end method
