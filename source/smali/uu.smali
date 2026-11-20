###### Class defpackage.uu (uu)
.class public Luu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Luu;

.field public static final B:Luu;

.field public static final C:Luu;

.field public static final D:Luu;

.field public static final E:Luu;

.field public static final F:Luu;

.field public static final G:Luu;

.field public static final H:Luu;

.field public static final I:Luu;

.field public static final J:Luu;

.field public static final K:Luu;

.field public static final L:Lbk;

.field public static final M:Luu;

.field public static final N:Luu;

.field public static final O:Luu;

.field public static final P:Luu;

.field public static final Q:Luu;

.field public static final R:Luu;

.field public static final S:Luu;

.field public static final T:Luu;

.field public static final U:Luu;

.field public static final V:Luu;

.field public static final W:Luu;

.field public static final X:Luu;

.field public static final Y:Lru;

.field public static final Z:Ljb;

.field public static final aA:Luu;

.field public static final aB:Luu;

.field public static final aC:Luu;

.field public static final aD:Luu;

.field public static final aE:Luu;

.field public static final aF:Luu;

.field public static final aG:Luu;

.field public static final aH:Luu;

.field public static final aI:Luu;

.field public static final aJ:Luu;

.field public static final aK:Luu;

.field public static final aL:Luu;

.field public static final aM:Luu;

.field public static final aN:Luu;

.field public static final aO:Luu;

.field public static final aP:Luu;

.field public static final aQ:Luu;

.field public static final aR:Luu;

.field public static final aS:Luu;

.field public static final aT:Luu;

.field public static final aU:Luu;

.field public static final aV:Luu;

.field public static final aW:Luu;

.field public static final aX:Luu;

.field public static final aY:Luu;

.field public static final aZ:Luu;

.field public static final aa:Luu;

.field public static final ab:Lh;

.field public static final ac:Luu;

.field public static final ad:Lut;

.field public static final ae:Lwb;

.field public static final af:Lwb;

.field public static final ag:Lwb;

.field public static final ah:Lwb;

.field public static final ai:Luu;

.field public static final aj:Luu;

.field public static final ak:Luu;

.field public static final al:Luu;

.field public static final am:Luu;

.field public static final an:Luu;

.field public static final ao:Luu;

.field public static final ap:Luu;

.field public static final aq:Luu;

.field public static final ar:Luu;

.field public static final as:Lyq;

.field public static final at:Luu;

.field public static final au:Luu;

.field public static final av:Luu;

.field public static final aw:Luu;

.field public static final ax:Luu;

.field public static final ay:Luu;

.field public static final az:Luu;

.field public static final ba:Luu;

.field public static final bb:Luu;

.field public static final bc:Luu;

.field public static final bd:Luu;

.field public static final be:Luu;

.field public static final bf:Lak;

.field public static final bg:Luu;

.field public static final bh:Luu;

.field public static final bi:Luu;

.field public static final bj:Luu;

.field public static final bk:Luu;

.field public static final bl:Luu;

.field public static final d:Lct;

.field public static final e:Lct;

.field public static final f:Lct;

.field public static final g:Lct;

.field public static final h:Lct;

.field public static final i:Lct;

.field public static final j:Lct;

.field public static final k:Lct;

.field public static final l:Lct;

.field public static final m:[Luu;

.field public static final n:[Z

.field public static final o:[Z

.field public static final p:[Z

.field public static final q:[I

.field public static final r:[Z

.field public static final s:[I

.field public static final t:[Z

.field public static final u:Luu;

.field public static final v:Lwp;

.field public static final w:Luu;

.field public static final x:Luu;

.field public static final y:Luu;

.field public static final z:Luu;


# instance fields
.field private a:Ljava/lang/String;

.field public final bA:Lln;

.field public bB:F

.field public bm:I

.field public final bn:I

.field protected bo:F

.field protected bp:F

.field protected bq:Z

.field protected br:Z

.field public bs:D

.field public bt:D

.field public bu:D

.field public bv:D

.field public bw:D

.field public bx:D

.field public by:Lct;

.field public bz:F


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 50
    new-instance v0, Lct;

    const-string v1, "stone"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v0, Luu;->d:Lct;

    .line 51
    new-instance v3, Lct;

    const-string v4, "wood"

    invoke-direct {v3, v4, v2, v2}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v3, Luu;->e:Lct;

    .line 52
    new-instance v4, Lct;

    const-string v5, "gravel"

    invoke-direct {v4, v5, v2, v2}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v4, Luu;->f:Lct;

    .line 53
    new-instance v5, Lct;

    const-string v6, "grass"

    invoke-direct {v5, v6, v2, v2}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v5, Luu;->g:Lct;

    .line 54
    new-instance v6, Lct;

    invoke-direct {v6, v1, v2, v2}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v6, Luu;->h:Lct;

    .line 55
    new-instance v7, Lct;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v7, v1, v2, v8}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v7, Luu;->i:Lct;

    .line 56
    new-instance v9, Lal;

    invoke-direct {v9, v1, v2, v2}, Lal;-><init>(Ljava/lang/String;FF)V

    sput-object v9, Luu;->j:Lct;

    .line 61
    new-instance v10, Lct;

    const-string v11, "cloth"

    invoke-direct {v10, v11, v2, v2}, Lct;-><init>(Ljava/lang/String;FF)V

    sput-object v10, Luu;->k:Lct;

    .line 62
    new-instance v12, Laj;

    const-string v13, "sand"

    invoke-direct {v12, v13, v2, v2}, Laj;-><init>(Ljava/lang/String;FF)V

    sput-object v12, Luu;->l:Lct;

    const/16 v13, 0x100

    new-array v14, v13, [Luu;

    .line 88
    sput-object v14, Luu;->m:[Luu;

    new-array v14, v13, [Z

    .line 90
    sput-object v14, Luu;->n:[Z

    new-array v14, v13, [Z

    .line 91
    sput-object v14, Luu;->o:[Z

    new-array v14, v13, [Z

    .line 92
    sput-object v14, Luu;->p:[Z

    new-array v14, v13, [I

    .line 93
    sput-object v14, Luu;->q:[I

    new-array v14, v13, [Z

    .line 94
    sput-object v14, Luu;->r:[Z

    new-array v14, v13, [I

    .line 95
    sput-object v14, Luu;->s:[I

    new-array v14, v13, [Z

    .line 96
    sput-object v14, Luu;->t:[Z

    .line 99
    new-instance v14, Leo;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v15}, Leo;-><init>(II)V

    invoke-virtual {v14, v8}, Leo;->c(F)Luu;

    move-result-object v14

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v14, v13}, Luu;->b(F)Luu;

    move-result-object v14

    invoke-virtual {v14, v6}, Luu;->a(Lct;)Luu;

    move-result-object v14

    invoke-virtual {v14, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v1

    sput-object v1, Luu;->u:Luu;

    .line 100
    new-instance v14, Lwp;

    const/4 v8, 0x2

    invoke-direct {v14, v8}, Lwp;-><init>(I)V

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v14, v8}, Lwp;->c(F)Luu;

    move-result-object v14

    invoke-virtual {v14, v5}, Luu;->a(Lct;)Luu;

    move-result-object v14

    const-string v15, "grass"

    invoke-virtual {v14, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v14

    check-cast v14, Lwp;

    sput-object v14, Luu;->v:Lwp;

    .line 101
    new-instance v14, Lot;

    const/4 v15, 0x2

    const/4 v8, 0x3

    invoke-direct {v14, v8, v15}, Lot;-><init>(II)V

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v14, v15}, Lot;->c(F)Luu;

    move-result-object v14

    invoke-virtual {v14, v4}, Luu;->a(Lct;)Luu;

    move-result-object v14

    const-string v15, "dirt"

    invoke-virtual {v14, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v14

    sput-object v14, Luu;->w:Luu;

    .line 102
    new-instance v14, Luu;

    const/16 v15, 0x10

    sget-object v2, Lln;->e:Lln;

    const/4 v8, 0x4

    invoke-direct {v14, v8, v15, v2}, Luu;-><init>(IILln;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v14, v2}, Luu;->c(F)Luu;

    move-result-object v14

    invoke-virtual {v14, v13}, Luu;->b(F)Luu;

    move-result-object v14

    invoke-virtual {v14, v6}, Luu;->a(Lct;)Luu;

    move-result-object v14

    const-string v15, "stonebrick"

    invoke-virtual {v14, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v14

    sput-object v14, Luu;->x:Luu;

    .line 103
    new-instance v15, Luu;

    const/4 v13, 0x5

    move-object/from16 v16, v1

    sget-object v1, Lln;->d:Lln;

    invoke-direct {v15, v13, v8, v1}, Luu;-><init>(IILln;)V

    invoke-virtual {v15, v2}, Luu;->c(F)Luu;

    move-result-object v1

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v1, v13}, Luu;->b(F)Luu;

    move-result-object v1

    invoke-virtual {v1, v3}, Luu;->a(Lct;)Luu;

    move-result-object v1

    const-string v15, "wood"

    invoke-virtual {v1, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v1

    invoke-virtual {v1}, Luu;->j()Luu;

    move-result-object v1

    sput-object v1, Luu;->y:Luu;

    .line 104
    new-instance v15, Lhe;

    const/4 v8, 0x6

    const/16 v2, 0xf

    invoke-direct {v15, v8, v2}, Lhe;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lhe;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v5}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v15, "sapling"

    invoke-virtual {v8, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->j()Luu;

    move-result-object v8

    sput-object v8, Luu;->z:Luu;

    .line 105
    new-instance v15, Luu;

    const/16 v13, 0x11

    sget-object v2, Lln;->e:Lln;

    move-object/from16 v17, v8

    const/4 v8, 0x7

    invoke-direct {v15, v8, v13, v2}, Luu;-><init>(IILln;)V

    invoke-virtual {v15}, Luu;->l()Luu;

    move-result-object v2

    const v8, 0x4ab71b00    # 6000000.0f

    invoke-virtual {v2, v8}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v8, "bedrock"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->q()Luu;

    move-result-object v2

    sput-object v2, Luu;->A:Luu;

    .line 106
    new-instance v2, Lom;

    const/16 v8, 0x8

    sget-object v13, Lln;->g:Lln;

    invoke-direct {v2, v8, v13}, Lom;-><init>(ILln;)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v2, v8}, Lom;->c(F)Luu;

    move-result-object v2

    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Luu;->g(I)Luu;

    move-result-object v2

    const-string v15, "water"

    invoke-virtual {v2, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->q()Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->B:Luu;

    .line 107
    new-instance v2, Lnx;

    const/16 v15, 0x9

    sget-object v13, Lln;->g:Lln;

    invoke-direct {v2, v15, v13}, Lnx;-><init>(ILln;)V

    invoke-virtual {v2, v8}, Lnx;->c(F)Luu;

    move-result-object v2

    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Luu;->g(I)Luu;

    move-result-object v2

    const-string v13, "water"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->q()Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->C:Luu;

    .line 108
    new-instance v2, Lom;

    const/16 v13, 0xa

    sget-object v15, Lln;->h:Lln;

    invoke-direct {v2, v13, v15}, Lom;-><init>(ILln;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lom;->c(F)Luu;

    move-result-object v2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v2, v13}, Luu;->a(F)Luu;

    move-result-object v2

    const/16 v13, 0xff

    invoke-virtual {v2, v13}, Luu;->g(I)Luu;

    move-result-object v2

    const-string v13, "lava"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->q()Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->D:Luu;

    .line 110
    new-instance v2, Lnx;

    const/16 v13, 0xb

    sget-object v15, Lln;->h:Lln;

    invoke-direct {v2, v13, v15}, Lnx;-><init>(ILln;)V

    invoke-virtual {v2, v8}, Lnx;->c(F)Luu;

    move-result-object v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8}, Luu;->a(F)Luu;

    move-result-object v2

    const/16 v8, 0xff

    invoke-virtual {v2, v8}, Luu;->g(I)Luu;

    move-result-object v2

    const-string v8, "lava"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->q()Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->E:Luu;

    .line 112
    new-instance v2, Lgk;

    const/16 v8, 0xc

    const/16 v13, 0x12

    invoke-direct {v2, v8, v13}, Lgk;-><init>(II)V

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v2, v8}, Lgk;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v12}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v8, "sand"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->F:Luu;

    .line 113
    new-instance v2, Lne;

    const/16 v8, 0xd

    const/16 v13, 0x13

    invoke-direct {v2, v8, v13}, Lne;-><init>(II)V

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v8}, Lne;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v4}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v8, "gravel"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->G:Luu;

    .line 114
    new-instance v2, Lmt;

    const/16 v8, 0xe

    const/16 v13, 0x20

    invoke-direct {v2, v8, v13}, Lmt;-><init>(II)V

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v2, v8}, Lmt;->c(F)Luu;

    move-result-object v2

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v2, v13}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v15, "oreGold"

    invoke-virtual {v2, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->H:Luu;

    .line 115
    new-instance v2, Lmt;

    const/16 v15, 0xf

    const/16 v13, 0x21

    invoke-direct {v2, v15, v13}, Lmt;-><init>(II)V

    invoke-virtual {v2, v8}, Lmt;->c(F)Luu;

    move-result-object v2

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v2, v13}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v15, "oreIron"

    invoke-virtual {v2, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->I:Luu;

    .line 116
    new-instance v2, Lmt;

    const/16 v15, 0x10

    const/16 v13, 0x22

    invoke-direct {v2, v15, v13}, Lmt;-><init>(II)V

    invoke-virtual {v2, v8}, Lmt;->c(F)Luu;

    move-result-object v2

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v2, v13}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v13, "oreCoal"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->J:Luu;

    .line 117
    new-instance v2, Lvg;

    const/16 v13, 0x11

    invoke-direct {v2, v13}, Lvg;-><init>(I)V

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v2, v13}, Lvg;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v3}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v13, "log"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->K:Luu;

    .line 118
    new-instance v13, Lbk;

    const/16 v15, 0x12

    const/16 v8, 0x34

    invoke-direct {v13, v15, v8}, Lbk;-><init>(II)V

    const v8, 0x3e4ccccd    # 0.2f

    invoke-virtual {v13, v8}, Lbk;->c(F)Luu;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Luu;->g(I)Luu;

    move-result-object v13

    invoke-virtual {v13, v5}, Luu;->a(Lct;)Luu;

    move-result-object v13

    const-string v15, "leaves"

    invoke-virtual {v13, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v13

    invoke-virtual {v13}, Luu;->q()Luu;

    move-result-object v13

    invoke-virtual {v13}, Luu;->j()Luu;

    move-result-object v13

    check-cast v13, Lbk;

    sput-object v13, Luu;->L:Lbk;

    .line 120
    new-instance v15, Lxf;

    const/16 v8, 0x13

    invoke-direct {v15, v8}, Lxf;-><init>(I)V

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v15, v8}, Lxf;->c(F)Luu;

    move-result-object v15

    invoke-virtual {v15, v5}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v15, "sponge"

    invoke-virtual {v8, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->M:Luu;

    .line 121
    new-instance v8, Lfk;

    sget-object v15, Lln;->p:Lln;

    move-object/from16 v18, v13

    const/16 v13, 0x14

    move-object/from16 v19, v2

    const/16 v2, 0x31

    move-object/from16 v20, v12

    const/4 v12, 0x0

    invoke-direct {v8, v13, v2, v15, v12}, Lfk;-><init>(IILln;Z)V

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v2}, Lfk;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v9}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v8, "glass"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->N:Luu;

    .line 122
    new-instance v2, Lmt;

    const/16 v8, 0x15

    const/16 v13, 0xa0

    invoke-direct {v2, v8, v13}, Lmt;-><init>(II)V

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v2, v8}, Lmt;->c(F)Luu;

    move-result-object v2

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v2, v13}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v15, "oreLapis"

    invoke-virtual {v2, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->O:Luu;

    .line 123
    new-instance v2, Luu;

    const/16 v15, 0x90

    sget-object v12, Lln;->e:Lln;

    const/16 v13, 0x16

    invoke-direct {v2, v13, v15, v12}, Luu;-><init>(IILln;)V

    invoke-virtual {v2, v8}, Luu;->c(F)Luu;

    move-result-object v2

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v2, v8}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v8, "blockLapis"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->P:Luu;

    .line 124
    new-instance v2, Lxq;

    const/16 v8, 0x17

    invoke-direct {v2, v8}, Lxq;-><init>(I)V

    const/high16 v8, 0x40600000    # 3.5f

    invoke-virtual {v2, v8}, Lxq;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v12, "dispenser"

    invoke-virtual {v2, v12}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->Q:Luu;

    .line 125
    new-instance v2, Lrd;

    const/16 v12, 0x18

    invoke-direct {v2, v12}, Lrd;-><init>(I)V

    invoke-virtual {v2, v6}, Lrd;->a(Lct;)Luu;

    move-result-object v2

    const v12, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v12}, Luu;->c(F)Luu;

    move-result-object v2

    const-string v13, "sandStone"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->R:Luu;

    .line 126
    new-instance v2, Lpt;

    const/16 v13, 0x19

    invoke-direct {v2, v13}, Lpt;-><init>(I)V

    invoke-virtual {v2, v12}, Lpt;->c(F)Luu;

    move-result-object v2

    const-string v13, "musicBlock"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->S:Luu;

    .line 127
    new-instance v2, Lve;

    const/16 v13, 0x1a

    invoke-direct {v2, v13}, Lve;-><init>(I)V

    const v13, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v13}, Lve;->c(F)Luu;

    move-result-object v2

    const-string v13, "bed"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->q()Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->T:Luu;

    .line 128
    new-instance v2, Lpc;

    const/16 v13, 0x1b

    const/16 v15, 0xb3

    const/4 v8, 0x1

    invoke-direct {v2, v13, v15, v8}, Lpc;-><init>(IIZ)V

    const v8, 0x3f333333    # 0.7f

    invoke-virtual {v2, v8}, Lpc;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v7}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v13, "goldenRail"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->U:Luu;

    .line 129
    new-instance v2, Lph;

    const/16 v13, 0x1c

    const/16 v15, 0xc3

    invoke-direct {v2, v13, v15}, Lph;-><init>(II)V

    invoke-virtual {v2, v8}, Lph;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v7}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v13, "detectorRail"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->V:Luu;

    .line 130
    new-instance v2, Ljq;

    const/16 v13, 0x1d

    const/16 v15, 0x6a

    const/4 v8, 0x1

    invoke-direct {v2, v13, v15, v8}, Ljq;-><init>(IIZ)V

    const-string v13, "pistonStickyBase"

    invoke-virtual {v2, v13}, Ljq;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    invoke-virtual {v2}, Luu;->j()Luu;

    move-result-object v2

    sput-object v2, Luu;->W:Luu;

    .line 131
    new-instance v13, Lrn;

    const/16 v15, 0x1e

    const/16 v12, 0xb

    invoke-direct {v13, v15, v12}, Lrn;-><init>(II)V

    invoke-virtual {v13, v8}, Lrn;->g(I)Luu;

    move-result-object v12

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v12, v8}, Luu;->c(F)Luu;

    move-result-object v8

    const-string v12, "web"

    invoke-virtual {v8, v12}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->X:Luu;

    .line 132
    new-instance v8, Lru;

    const/16 v12, 0x1f

    const/16 v13, 0x27

    invoke-direct {v8, v12, v13}, Lru;-><init>(II)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lru;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v5}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v13, "tallgrass"

    invoke-virtual {v8, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    check-cast v8, Lru;

    sput-object v8, Luu;->Y:Lru;

    .line 133
    new-instance v8, Ljb;

    const/16 v13, 0x20

    const/16 v15, 0x37

    invoke-direct {v8, v13, v15}, Ljb;-><init>(II)V

    invoke-virtual {v8, v12}, Ljb;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v5}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v12, "deadbush"

    invoke-virtual {v8, v12}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    check-cast v8, Ljb;

    sput-object v8, Luu;->Z:Ljb;

    .line 134
    new-instance v8, Ljq;

    const/16 v12, 0x21

    const/16 v13, 0x6b

    const/4 v15, 0x0

    invoke-direct {v8, v12, v13, v15}, Ljq;-><init>(IIZ)V

    const-string v12, "pistonBase"

    invoke-virtual {v8, v12}, Ljq;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->j()Luu;

    move-result-object v8

    sput-object v8, Luu;->aa:Luu;

    .line 135
    new-instance v12, Lh;

    const/16 v13, 0x22

    const/16 v15, 0x6b

    invoke-direct {v12, v13, v15}, Lh;-><init>(II)V

    invoke-virtual {v12}, Lh;->j()Luu;

    move-result-object v12

    check-cast v12, Lh;

    sput-object v12, Luu;->ab:Lh;

    .line 136
    new-instance v12, Lee;

    invoke-direct {v12}, Lee;-><init>()V

    const v13, 0x3f4ccccd    # 0.8f

    invoke-virtual {v12, v13}, Lee;->c(F)Luu;

    move-result-object v12

    invoke-virtual {v12, v10}, Luu;->a(Lct;)Luu;

    move-result-object v12

    invoke-virtual {v12, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v12

    invoke-virtual {v12}, Luu;->j()Luu;

    move-result-object v12

    sput-object v12, Luu;->ac:Luu;

    .line 137
    new-instance v13, Lut;

    const/16 v15, 0x24

    invoke-direct {v13, v15}, Lut;-><init>(I)V

    sput-object v13, Luu;->ad:Lut;

    .line 138
    new-instance v13, Lwb;

    const/16 v15, 0x25

    move-object/from16 v21, v2

    const/16 v2, 0xd

    invoke-direct {v13, v15, v2}, Lwb;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lwb;->c(F)Luu;

    move-result-object v13

    invoke-virtual {v13, v5}, Luu;->a(Lct;)Luu;

    move-result-object v13

    const-string v15, "flower"

    invoke-virtual {v13, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v13

    check-cast v13, Lwb;

    sput-object v13, Luu;->ae:Lwb;

    .line 139
    new-instance v13, Lwb;

    const/16 v15, 0x26

    move-object/from16 v22, v8

    const/16 v8, 0xc

    invoke-direct {v13, v15, v8}, Lwb;-><init>(II)V

    invoke-virtual {v13, v2}, Lwb;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v5}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v13, "rose"

    invoke-virtual {v8, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    check-cast v8, Lwb;

    sput-object v8, Luu;->af:Lwb;

    .line 140
    new-instance v8, Ltl;

    const/16 v13, 0x27

    const/16 v15, 0x1d

    invoke-direct {v8, v13, v15}, Ltl;-><init>(II)V

    invoke-virtual {v8, v2}, Ltl;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v5}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const/high16 v8, 0x3e000000    # 0.125f

    invoke-virtual {v2, v8}, Luu;->a(F)Luu;

    move-result-object v2

    const-string v8, "mushroom"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    check-cast v2, Lwb;

    sput-object v2, Luu;->ag:Lwb;

    .line 141
    new-instance v2, Ltl;

    const/16 v8, 0x28

    const/16 v13, 0x1c

    invoke-direct {v2, v8, v13}, Ltl;-><init>(II)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ltl;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v5}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v8, "mushroom"

    invoke-virtual {v2, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    check-cast v2, Lwb;

    sput-object v2, Luu;->ah:Lwb;

    .line 142
    new-instance v2, Ll;

    const/16 v8, 0x29

    const/16 v13, 0x17

    invoke-direct {v2, v8, v13}, Ll;-><init>(II)V

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v2, v8}, Ll;->c(F)Luu;

    move-result-object v2

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v2, v8}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v7}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v13, "blockGold"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->ai:Luu;

    .line 143
    new-instance v2, Ll;

    const/16 v13, 0x2a

    const/16 v15, 0x16

    invoke-direct {v2, v13, v15}, Ll;-><init>(II)V

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v2, v13}, Ll;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v8}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v7}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v13, "blockIron"

    invoke-virtual {v2, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->aj:Luu;

    .line 144
    new-instance v2, Lys;

    const/16 v13, 0x2b

    const/4 v15, 0x1

    invoke-direct {v2, v13, v15}, Lys;-><init>(IZ)V

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v2, v13}, Lys;->c(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v8}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    const-string v15, "stoneSlab"

    invoke-virtual {v2, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->ak:Luu;

    .line 145
    new-instance v2, Lys;

    const/16 v8, 0x2c

    move-object/from16 v23, v11

    const/4 v11, 0x0

    invoke-direct {v2, v8, v11}, Lys;-><init>(IZ)V

    invoke-virtual {v2, v13}, Lys;->c(F)Luu;

    move-result-object v2

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v2, v8}, Luu;->b(F)Luu;

    move-result-object v2

    invoke-virtual {v2, v6}, Luu;->a(Lct;)Luu;

    move-result-object v2

    invoke-virtual {v2, v15}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v2

    sput-object v2, Luu;->al:Luu;

    .line 146
    new-instance v11, Luu;

    const/4 v8, 0x7

    sget-object v13, Lln;->e:Lln;

    move-object/from16 v24, v15

    const/16 v15, 0x2d

    invoke-direct {v11, v15, v8, v13}, Luu;-><init>(IILln;)V

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v11, v8}, Luu;->c(F)Luu;

    move-result-object v11

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v11, v8}, Luu;->b(F)Luu;

    move-result-object v11

    invoke-virtual {v11, v6}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "brick"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->am:Luu;

    .line 147
    new-instance v8, Lah;

    const/16 v11, 0x2e

    const/16 v13, 0x8

    invoke-direct {v8, v11, v13}, Lah;-><init>(II)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lah;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v5}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "tnt"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->an:Luu;

    .line 148
    new-instance v8, Lhb;

    const/16 v11, 0x2f

    const/16 v13, 0x23

    invoke-direct {v8, v11, v13}, Lhb;-><init>(II)V

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v11}, Lhb;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v3}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "bookshelf"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->ao:Luu;

    .line 149
    new-instance v8, Luu;

    const/16 v11, 0x24

    sget-object v13, Lln;->e:Lln;

    const/16 v15, 0x30

    invoke-direct {v8, v15, v11, v13}, Luu;-><init>(IILln;)V

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v8, v11}, Luu;->c(F)Luu;

    move-result-object v8

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v8, v11}, Luu;->b(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v6}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v13, "stoneMoss"

    invoke-virtual {v8, v13}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->ap:Luu;

    .line 150
    new-instance v8, Lfb;

    const/16 v13, 0x31

    const/16 v15, 0x25

    invoke-direct {v8, v13, v15}, Lfb;-><init>(II)V

    invoke-virtual {v8, v11}, Lfb;->c(F)Luu;

    move-result-object v8

    const/high16 v11, 0x44fa0000    # 2000.0f

    invoke-virtual {v8, v11}, Luu;->b(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v6}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "obsidian"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    sput-object v8, Luu;->aq:Luu;

    .line 151
    new-instance v8, Lvm;

    const/16 v11, 0x32

    const/16 v13, 0x50

    invoke-direct {v8, v11, v13}, Lvm;-><init>(II)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lvm;->c(F)Luu;

    move-result-object v8

    const/high16 v11, 0x3f700000    # 0.9375f

    invoke-virtual {v8, v11}, Luu;->a(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v3}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "torch"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->j()Luu;

    move-result-object v8

    sput-object v8, Luu;->ar:Luu;

    .line 152
    new-instance v8, Lyq;

    const/16 v11, 0x33

    const/16 v13, 0x1f

    invoke-direct {v8, v11, v13}, Lyq;-><init>(II)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lyq;->c(F)Luu;

    move-result-object v8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Luu;->a(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v3}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "fire"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->q()Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->j()Luu;

    move-result-object v8

    check-cast v8, Lyq;

    sput-object v8, Luu;->as:Lyq;

    .line 154
    new-instance v8, Ldd;

    const/16 v11, 0x34

    const/16 v13, 0x41

    invoke-direct {v8, v11, v13}, Ldd;-><init>(II)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v8, v11}, Ldd;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v7}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "mobSpawner"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->q()Luu;

    move-result-object v8

    sput-object v8, Luu;->at:Luu;

    .line 155
    new-instance v8, Lss;

    const/16 v11, 0x35

    invoke-direct {v8, v11, v1}, Lss;-><init>(ILuu;)V

    const-string v11, "stairsWood"

    invoke-virtual {v8, v11}, Lss;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->j()Luu;

    move-result-object v8

    sput-object v8, Luu;->au:Luu;

    .line 156
    new-instance v8, Le;

    const/16 v11, 0x36

    invoke-direct {v8, v11}, Le;-><init>(I)V

    const/high16 v11, 0x40200000    # 2.5f

    invoke-virtual {v8, v11}, Le;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v3}, Luu;->a(Lct;)Luu;

    move-result-object v8

    const-string v11, "chest"

    invoke-virtual {v8, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v8

    invoke-virtual {v8}, Luu;->j()Luu;

    move-result-object v8

    sput-object v8, Luu;->av:Luu;

    .line 157
    new-instance v8, Lsm;

    const/16 v11, 0x37

    const/16 v13, 0xa4

    invoke-direct {v8, v11, v13}, Lsm;-><init>(II)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lsm;->c(F)Luu;

    move-result-object v8

    invoke-virtual {v8, v0}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "redstoneDust"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aw:Luu;

    .line 159
    new-instance v0, Lmt;

    const/16 v8, 0x38

    const/16 v11, 0x32

    invoke-direct {v0, v8, v11}, Lmt;-><init>(II)V

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v0, v8}, Lmt;->c(F)Luu;

    move-result-object v0

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v0, v8}, Luu;->b(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v11, "oreDiamond"

    invoke-virtual {v0, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->ax:Luu;

    .line 160
    new-instance v0, Ll;

    const/16 v11, 0x39

    const/16 v13, 0x18

    invoke-direct {v0, v11, v13}, Ll;-><init>(II)V

    invoke-virtual {v0, v8}, Ll;->c(F)Luu;

    move-result-object v0

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v0, v8}, Luu;->b(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v7}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "blockDiamond"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->ay:Luu;

    .line 161
    new-instance v0, Lfi;

    const/16 v8, 0x3a

    invoke-direct {v0, v8}, Lfi;-><init>(I)V

    const/high16 v8, 0x40200000    # 2.5f

    invoke-virtual {v0, v8}, Lfi;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "workbench"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->az:Luu;

    .line 162
    new-instance v0, Lni;

    const/16 v8, 0x3b

    const/16 v11, 0x58

    invoke-direct {v0, v8, v11}, Lni;-><init>(II)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lni;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v5}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "crops"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aA:Luu;

    .line 163
    new-instance v0, Lvl;

    const/16 v8, 0x3c

    invoke-direct {v0, v8}, Lvl;-><init>(I)V

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v8}, Lvl;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v4}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "farmland"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->aB:Luu;

    .line 164
    new-instance v0, Ltc;

    const/16 v8, 0x3d

    const/4 v11, 0x0

    invoke-direct {v0, v8, v11}, Ltc;-><init>(IZ)V

    const/high16 v8, 0x40600000    # 3.5f

    invoke-virtual {v0, v8}, Ltc;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v11, "furnace"

    invoke-virtual {v0, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aC:Luu;

    .line 165
    new-instance v0, Ltc;

    const/16 v11, 0x3e

    const/4 v13, 0x1

    invoke-direct {v0, v11, v13}, Ltc;-><init>(IZ)V

    invoke-virtual {v0, v8}, Ltc;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const/high16 v8, 0x3f600000    # 0.875f

    invoke-virtual {v0, v8}, Luu;->a(F)Luu;

    move-result-object v0

    const-string v8, "furnace"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aD:Luu;

    .line 166
    new-instance v0, Luj;

    const/16 v8, 0x3f

    const-class v11, Lyk;

    const/4 v13, 0x1

    invoke-direct {v0, v8, v11, v13}, Luj;-><init>(ILjava/lang/Class;Z)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8}, Luj;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "sign"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aE:Luu;

    .line 167
    new-instance v0, Lle;

    const/16 v8, 0x40

    sget-object v11, Lln;->d:Lln;

    invoke-direct {v0, v8, v11}, Lle;-><init>(ILln;)V

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v0, v8}, Lle;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "doorWood"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aF:Luu;

    .line 168
    new-instance v0, Ldp;

    const/16 v8, 0x41

    const/16 v11, 0x53

    invoke-direct {v0, v8, v11}, Ldp;-><init>(II)V

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v8}, Ldp;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "ladder"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aG:Luu;

    .line 169
    new-instance v0, Lpc;

    const/16 v8, 0x42

    const/16 v11, 0x80

    const/4 v13, 0x0

    invoke-direct {v0, v8, v11, v13}, Lpc;-><init>(IIZ)V

    const v8, 0x3f333333    # 0.7f

    invoke-virtual {v0, v8}, Lpc;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v7}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "rail"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aH:Luu;

    .line 170
    new-instance v0, Lss;

    const/16 v8, 0x43

    invoke-direct {v0, v8, v14}, Lss;-><init>(ILuu;)V

    const-string v8, "stairsStone"

    invoke-virtual {v0, v8}, Lss;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aI:Luu;

    .line 171
    new-instance v0, Luj;

    const/16 v8, 0x44

    const-class v11, Lyk;

    const/4 v13, 0x0

    invoke-direct {v0, v8, v11, v13}, Luj;-><init>(ILjava/lang/Class;Z)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8}, Luj;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "sign"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aJ:Luu;

    .line 172
    new-instance v0, Lxr;

    const/16 v8, 0x45

    const/16 v11, 0x60

    invoke-direct {v0, v8, v11}, Lxr;-><init>(II)V

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v0, v8}, Lxr;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v8, "lever"

    invoke-virtual {v0, v8}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aK:Luu;

    .line 173
    new-instance v0, Lbv;

    move-object/from16 v8, v16

    iget v11, v8, Luu;->bm:I

    sget-object v13, Lrt;->b:Lrt;

    sget-object v14, Lln;->e:Lln;

    const/16 v15, 0x46

    invoke-direct {v0, v15, v11, v13, v14}, Lbv;-><init>(IILrt;Lln;)V

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v0, v11}, Lbv;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v11, "pressurePlate"

    invoke-virtual {v0, v11}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aL:Luu;

    .line 175
    new-instance v0, Lle;

    const/16 v11, 0x47

    sget-object v13, Lln;->f:Lln;

    invoke-direct {v0, v11, v13}, Lle;-><init>(ILln;)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v0, v11}, Lle;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v7}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v7, "doorIron"

    invoke-virtual {v0, v7}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aM:Luu;

    .line 176
    new-instance v0, Lbv;

    iget v1, v1, Luu;->bm:I

    sget-object v7, Lrt;->a:Lrt;

    sget-object v11, Lln;->d:Lln;

    const/16 v13, 0x48

    invoke-direct {v0, v13, v1, v7, v11}, Lbv;-><init>(IILrt;Lln;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lbv;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "pressurePlate"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aN:Luu;

    .line 178
    new-instance v0, Lbs;

    const/16 v1, 0x49

    const/16 v7, 0x33

    const/4 v11, 0x0

    invoke-direct {v0, v1, v7, v11}, Lbs;-><init>(IIZ)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lbs;->c(F)Luu;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Luu;->b(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "oreRedstone"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aO:Luu;

    .line 179
    new-instance v0, Lbs;

    const/16 v1, 0x4a

    const/4 v11, 0x1

    invoke-direct {v0, v1, v7, v11}, Lbs;-><init>(IIZ)V

    const/high16 v1, 0x3f200000    # 0.625f

    invoke-virtual {v0, v1}, Lbs;->a(F)Luu;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Luu;->c(F)Luu;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Luu;->b(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "oreRedstone"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aP:Luu;

    .line 181
    new-instance v0, Ldb;

    const/16 v1, 0x4b

    const/16 v7, 0x73

    const/4 v11, 0x0

    invoke-direct {v0, v1, v7, v11}, Ldb;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldb;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v7, "notGate"

    invoke-virtual {v0, v7}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aQ:Luu;

    .line 182
    new-instance v0, Ldb;

    const/16 v7, 0x4c

    const/16 v11, 0x63

    const/4 v13, 0x1

    invoke-direct {v0, v7, v11, v13}, Ldb;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ldb;->c(F)Luu;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Luu;->a(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v7, "notGate"

    invoke-virtual {v0, v7}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aR:Luu;

    .line 183
    new-instance v0, Loi;

    const/16 v7, 0x4d

    iget v8, v8, Luu;->bm:I

    invoke-direct {v0, v7, v8}, Loi;-><init>(II)V

    invoke-virtual {v0, v1}, Loi;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aS:Luu;

    .line 184
    new-instance v0, Ljr;

    const/16 v1, 0x4e

    const/16 v7, 0x42

    invoke-direct {v0, v1, v7}, Ljr;-><init>(II)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Ljr;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v10}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "snow"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->aT:Luu;

    .line 185
    new-instance v0, Lnk;

    const/16 v1, 0x4f

    const/16 v7, 0x43

    invoke-direct {v0, v1, v7}, Lnk;-><init>(II)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lnk;->c(F)Luu;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Luu;->g(I)Luu;

    move-result-object v0

    invoke-virtual {v0, v9}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "ice"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->aU:Luu;

    .line 186
    new-instance v0, Lac;

    const/16 v1, 0x50

    const/16 v7, 0x42

    invoke-direct {v0, v1, v7}, Lac;-><init>(II)V

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lac;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v10}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "snow"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->aV:Luu;

    .line 187
    new-instance v0, Lor;

    const/16 v1, 0x51

    const/16 v7, 0x46

    invoke-direct {v0, v1, v7}, Lor;-><init>(II)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lor;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v10}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->aW:Luu;

    .line 188
    new-instance v0, Lrz;

    const/16 v1, 0x52

    const/16 v7, 0x48

    invoke-direct {v0, v1, v7}, Lrz;-><init>(II)V

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lrz;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v4}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "clay"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->aX:Luu;

    .line 189
    new-instance v0, Lri;

    const/16 v1, 0x53

    const/16 v4, 0x49

    invoke-direct {v0, v1, v4}, Lri;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lri;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v5}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "reeds"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    sput-object v0, Luu;->aY:Luu;

    .line 190
    new-instance v0, Lfo;

    const/16 v1, 0x54

    const/16 v4, 0x4a

    invoke-direct {v0, v1, v4}, Lfo;-><init>(II)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lfo;->c(F)Luu;

    move-result-object v0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v4}, Luu;->b(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v4, "jukebox"

    invoke-virtual {v0, v4}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->aZ:Luu;

    .line 191
    new-instance v0, Ljw;

    const/16 v4, 0x55

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5}, Ljw;-><init>(II)V

    invoke-virtual {v0, v1}, Ljw;->c(F)Luu;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Luu;->b(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "fence"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->ba:Luu;

    .line 192
    new-instance v0, Lfc;

    const/16 v1, 0x56

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Lfc;-><init>(IIZ)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lfc;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "pumpkin"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bb:Luu;

    .line 193
    new-instance v0, Lyi;

    const/16 v1, 0x57

    const/16 v4, 0x67

    invoke-direct {v0, v1, v4}, Lyi;-><init>(II)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lyi;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v6}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "hellrock"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->bc:Luu;

    .line 194
    new-instance v0, Loa;

    const/16 v1, 0x58

    const/16 v4, 0x68

    invoke-direct {v0, v1, v4}, Loa;-><init>(II)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Loa;->c(F)Luu;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "hellsand"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->bd:Luu;

    .line 195
    new-instance v0, Lly;

    const/16 v1, 0x69

    sget-object v4, Lln;->e:Lln;

    const/16 v5, 0x59

    invoke-direct {v0, v5, v1, v4}, Lly;-><init>(IILln;)V

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lly;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v9}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Luu;->a(F)Luu;

    move-result-object v0

    const-string v1, "lightgem"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    sput-object v0, Luu;->be:Luu;

    .line 196
    new-instance v0, Lak;

    const/16 v1, 0x5a

    const/16 v4, 0xe

    invoke-direct {v0, v1, v4}, Lak;-><init>(II)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lak;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v9}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Luu;->a(F)Luu;

    move-result-object v0

    const-string v1, "portal"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    check-cast v0, Lak;

    sput-object v0, Luu;->bf:Lak;

    .line 197
    new-instance v0, Lfc;

    const/16 v1, 0x5b

    const/16 v4, 0x66

    const/4 v5, 0x1

    invoke-direct {v0, v1, v4, v5}, Lfc;-><init>(IIZ)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lfc;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    invoke-virtual {v0, v1}, Luu;->a(F)Luu;

    move-result-object v0

    const-string v1, "litpumpkin"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bg:Luu;

    .line 198
    new-instance v0, Lum;

    const/16 v1, 0x5c

    const/16 v4, 0x79

    invoke-direct {v0, v1, v4}, Lum;-><init>(II)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lum;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v10}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "cake"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bh:Luu;

    .line 199
    new-instance v0, Lwo;

    const/16 v1, 0x5d

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lwo;-><init>(IZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lwo;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v4, "diode"

    invoke-virtual {v0, v4}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bi:Luu;

    .line 200
    new-instance v0, Lwo;

    const/16 v4, 0x5e

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Lwo;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lwo;->c(F)Luu;

    move-result-object v0

    const/high16 v1, 0x3f200000    # 0.625f

    invoke-virtual {v0, v1}, Luu;->a(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "diode"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bj:Luu;

    .line 202
    new-instance v0, Lks;

    const/16 v1, 0x5f

    invoke-direct {v0, v1}, Lks;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lks;->c(F)Luu;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Luu;->a(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "lockedchest"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luu;->b(Z)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bk:Luu;

    .line 204
    new-instance v0, Loq;

    const/16 v1, 0x60

    sget-object v4, Lln;->d:Lln;

    invoke-direct {v0, v1, v4}, Loq;-><init>(ILln;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Loq;->c(F)Luu;

    move-result-object v0

    invoke-virtual {v0, v3}, Luu;->a(Lct;)Luu;

    move-result-object v0

    const-string v1, "trapdoor"

    invoke-virtual {v0, v1}, Luu;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->q()Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->j()Luu;

    move-result-object v0

    sput-object v0, Luu;->bl:Luu;

    .line 208
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, v12, Luu;->bn:I

    new-instance v3, Lbi;

    iget v4, v12, Luu;->bn:I

    const/16 v5, 0x100

    sub-int/2addr v4, v5

    invoke-direct {v3, v4}, Lbi;-><init>(I)V

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Lbi;->a(Ljava/lang/String;)Lgm;

    move-result-object v3

    aput-object v3, v0, v1

    .line 209
    sget-object v0, Lgm;->c:[Lgm;

    move-object/from16 v1, v19

    iget v3, v1, Luu;->bn:I

    new-instance v4, Lgo;

    iget v1, v1, Luu;->bn:I

    sub-int/2addr v1, v5

    invoke-direct {v4, v1}, Lgo;-><init>(I)V

    const-string v1, "log"

    invoke-virtual {v4, v1}, Lgo;->a(Ljava/lang/String;)Lgm;

    move-result-object v1

    aput-object v1, v0, v3

    .line 210
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, v2, Luu;->bn:I

    new-instance v3, Len;

    iget v2, v2, Luu;->bn:I

    sub-int/2addr v2, v5

    invoke-direct {v3, v2}, Len;-><init>(I)V

    move-object/from16 v2, v24

    invoke-virtual {v3, v2}, Len;->a(Ljava/lang/String;)Lgm;

    move-result-object v2

    aput-object v2, v0, v1

    .line 211
    sget-object v0, Lgm;->c:[Lgm;

    move-object/from16 v1, v17

    iget v2, v1, Luu;->bn:I

    new-instance v3, Lmr;

    iget v1, v1, Luu;->bn:I

    sub-int/2addr v1, v5

    invoke-direct {v3, v1}, Lmr;-><init>(I)V

    const-string v1, "sapling"

    invoke-virtual {v3, v1}, Lmr;->a(Ljava/lang/String;)Lgm;

    move-result-object v1

    aput-object v1, v0, v2

    .line 212
    sget-object v0, Lgm;->c:[Lgm;

    move-object/from16 v13, v18

    iget v1, v13, Lbk;->bn:I

    new-instance v2, Luy;

    iget v3, v13, Lbk;->bn:I

    sub-int/2addr v3, v5

    invoke-direct {v2, v3}, Luy;-><init>(I)V

    const-string v3, "leaves"

    invoke-virtual {v2, v3}, Luy;->a(Ljava/lang/String;)Lgm;

    move-result-object v2

    aput-object v2, v0, v1

    .line 213
    sget-object v0, Lgm;->c:[Lgm;

    move-object/from16 v1, v22

    iget v2, v1, Luu;->bn:I

    new-instance v3, Lqr;

    iget v1, v1, Luu;->bn:I

    sub-int/2addr v1, v5

    invoke-direct {v3, v1}, Lqr;-><init>(I)V

    aput-object v3, v0, v2

    .line 214
    sget-object v0, Lgm;->c:[Lgm;

    move-object/from16 v1, v21

    iget v2, v1, Luu;->bn:I

    new-instance v3, Lqr;

    iget v1, v1, Luu;->bn:I

    sub-int/2addr v1, v5

    invoke-direct {v3, v1}, Lqr;-><init>(I)V

    aput-object v3, v0, v2

    const/4 v15, 0x0

    :goto_cb1
    if-ge v15, v5, :cond_cd2

    .line 216
    sget-object v0, Luu;->m:[Luu;

    aget-object v1, v0, v15

    if-eqz v1, :cond_ccf

    sget-object v1, Lgm;->c:[Lgm;

    aget-object v1, v1, v15

    if-nez v1, :cond_ccf

    .line 217
    sget-object v1, Lgm;->c:[Lgm;

    new-instance v2, Lck;

    add-int/lit16 v3, v15, -0x100

    invoke-direct {v2, v3}, Lck;-><init>(I)V

    aput-object v2, v1, v15

    .line 218
    aget-object v0, v0, v15

    invoke-virtual {v0}, Luu;->k()V

    :cond_ccf
    add-int/lit8 v15, v15, 0x1

    goto :goto_cb1

    .line 221
    :cond_cd2
    sget-object v0, Luu;->r:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 223
    invoke-static {}, Ljl;->b()V

    return-void
.end method

.method protected constructor <init>(IILln;)V
    .registers 4

    .line 265
    invoke-direct {p0, p1, p3}, Luu;-><init>(ILln;)V

    .line 266
    iput p2, p0, Luu;->bm:I

    return-void
.end method

.method protected constructor <init>(ILln;)V
    .registers 13

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Luu;->bq:Z

    .line 231
    iput-boolean v0, p0, Luu;->br:Z

    .line 234
    sget-object v1, Luu;->d:Lct;

    iput-object v1, p0, Luu;->by:Lct;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 236
    iput v1, p0, Luu;->bz:F

    const v1, 0x3f19999a    # 0.6f

    .line 238
    iput v1, p0, Luu;->bB:F

    .line 243
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, p1

    if-nez v2, :cond_53

    .line 246
    iput-object p2, p0, Luu;->bA:Lln;

    .line 247
    aput-object p0, v1, p1

    .line 248
    iput p1, p0, Luu;->bn:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p0

    .line 249
    invoke-virtual/range {v3 .. v9}, Luu;->a(FFFFFF)V

    .line 250
    sget-object v1, Luu;->o:[Z

    invoke-virtual {p0}, Luu;->c()Z

    move-result v2

    aput-boolean v2, v1, p1

    .line 251
    sget-object v1, Luu;->q:[I

    invoke-virtual {p0}, Luu;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    const/16 v2, 0xff

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    aput v2, v1, p1

    .line 252
    sget-object v1, Luu;->r:[Z

    invoke-virtual {p2}, Lln;->b()Z

    move-result p2

    xor-int/2addr p2, v0

    aput-boolean p2, v1, p1

    .line 253
    sget-object p2, Luu;->p:[Z

    aput-boolean v3, p2, p1

    return-void

    .line 244
    :cond_53
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Slot "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is already occupied by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " when adding "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Lbt;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 524
    :cond_4
    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Luu;->bt:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Luu;->bw:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Luu;->bu:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Luu;->bx:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method private b(Lbt;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 529
    :cond_4
    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Luu;->bs:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Luu;->bv:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Luu;->bu:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Luu;->bx:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method private c(Lbt;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 534
    :cond_4
    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Luu;->bs:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Luu;->bv:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_25

    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Luu;->bt:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Luu;->bw:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method


# virtual methods
.method public a(Lgs;)F
    .registers 4

    .line 430
    iget v0, p0, Luu;->bo:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    return v1

    .line 431
    :cond_8
    invoke-virtual {p1, p0}, Lgs;->b(Luu;)Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 p1, 0x3f800000    # 1.0f

    iget v0, p0, Luu;->bo:F

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    :goto_15
    div-float/2addr p1, v0

    return p1

    .line 432
    :cond_17
    invoke-virtual {p1, p0}, Lgs;->a(Luu;)F

    move-result p1

    iget v0, p0, Luu;->bo:F

    div-float/2addr p1, v0

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_15
.end method

.method public a(Lsn;)F
    .registers 3

    .line 474
    iget p1, p0, Luu;->bp:F

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public a(I)I
    .registers 2

    .line 368
    iget p1, p0, Luu;->bm:I

    return p1
.end method

.method public a(II)I
    .registers 3

    .line 364
    invoke-virtual {p0, p1}, Luu;->a(I)I

    move-result p1

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 426
    iget p1, p0, Luu;->bn:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 6

    .line 360
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    invoke-virtual {p0, p5, p1}, Luu;->a(II)I

    move-result p1

    return p1
.end method

.method protected a(F)Luu;
    .registers 5

    .line 280
    sget-object v0, Luu;->s:[I

    iget v1, p0, Luu;->bn:I

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    aput p1, v0, v1

    return-object p0
.end method

.method protected a(Lct;)Luu;
    .registers 2

    .line 270
    iput-object p1, p0, Luu;->by:Lct;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Luu;
    .registers 4

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tile."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luu;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lfd;IIILbt;Lbt;)Lvf;
    .registers 27

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 478
    invoke-virtual/range {p0 .. p4}, Luu;->a(Lxp;III)V

    neg-int v1, v2

    int-to-double v12, v1

    neg-int v1, v3

    int-to-double v14, v1

    neg-int v1, v4

    int-to-double v10, v1

    move-object/from16 v5, p5

    move-wide v6, v12

    move-wide v8, v14

    move-wide/from16 v16, v10

    .line 480
    invoke-virtual/range {v5 .. v11}, Lbt;->c(DDD)Lbt;

    move-result-object v1

    move-object/from16 v5, p6

    .line 481
    invoke-virtual/range {v5 .. v11}, Lbt;->c(DDD)Lbt;

    move-result-object v5

    .line 483
    iget-wide v6, v0, Luu;->bs:D

    invoke-virtual {v1, v5, v6, v7}, Lbt;->a(Lbt;D)Lbt;

    move-result-object v6

    .line 484
    iget-wide v7, v0, Luu;->bv:D

    invoke-virtual {v1, v5, v7, v8}, Lbt;->a(Lbt;D)Lbt;

    move-result-object v7

    .line 486
    iget-wide v8, v0, Luu;->bt:D

    invoke-virtual {v1, v5, v8, v9}, Lbt;->b(Lbt;D)Lbt;

    move-result-object v8

    .line 487
    iget-wide v9, v0, Luu;->bw:D

    invoke-virtual {v1, v5, v9, v10}, Lbt;->b(Lbt;D)Lbt;

    move-result-object v9

    .line 489
    iget-wide v10, v0, Luu;->bu:D

    invoke-virtual {v1, v5, v10, v11}, Lbt;->c(Lbt;D)Lbt;

    move-result-object v10

    .line 490
    iget-wide v11, v0, Luu;->bx:D

    invoke-virtual {v1, v5, v11, v12}, Lbt;->c(Lbt;D)Lbt;

    move-result-object v5

    .line 492
    invoke-direct {v0, v6}, Luu;->a(Lbt;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_4d

    move-object v6, v12

    .line 493
    :cond_4d
    invoke-direct {v0, v7}, Luu;->a(Lbt;)Z

    move-result v11

    if-nez v11, :cond_54

    move-object v7, v12

    .line 494
    :cond_54
    invoke-direct {v0, v8}, Luu;->b(Lbt;)Z

    move-result v11

    if-nez v11, :cond_5b

    move-object v8, v12

    .line 495
    :cond_5b
    invoke-direct {v0, v9}, Luu;->b(Lbt;)Z

    move-result v11

    if-nez v11, :cond_62

    move-object v9, v12

    .line 496
    :cond_62
    invoke-direct {v0, v10}, Luu;->c(Lbt;)Z

    move-result v11

    if-nez v11, :cond_69

    move-object v10, v12

    .line 497
    :cond_69
    invoke-direct {v0, v5}, Luu;->c(Lbt;)Z

    move-result v11

    if-nez v11, :cond_70

    move-object v5, v12

    :cond_70
    if-eqz v6, :cond_74

    move-object v11, v6

    goto :goto_75

    :cond_74
    move-object v11, v12

    :goto_75
    if-eqz v7, :cond_86

    if-eqz v11, :cond_85

    .line 502
    invoke-virtual {v1, v7}, Lbt;->c(Lbt;)D

    move-result-wide v13

    invoke-virtual {v1, v11}, Lbt;->c(Lbt;)D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gez v13, :cond_86

    :cond_85
    move-object v11, v7

    :cond_86
    if-eqz v8, :cond_97

    if-eqz v11, :cond_96

    .line 503
    invoke-virtual {v1, v8}, Lbt;->c(Lbt;)D

    move-result-wide v13

    invoke-virtual {v1, v11}, Lbt;->c(Lbt;)D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gez v13, :cond_97

    :cond_96
    move-object v11, v8

    :cond_97
    if-eqz v9, :cond_a8

    if-eqz v11, :cond_a7

    .line 504
    invoke-virtual {v1, v9}, Lbt;->c(Lbt;)D

    move-result-wide v13

    invoke-virtual {v1, v11}, Lbt;->c(Lbt;)D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gez v13, :cond_a8

    :cond_a7
    move-object v11, v9

    :cond_a8
    if-eqz v10, :cond_b9

    if-eqz v11, :cond_b8

    .line 505
    invoke-virtual {v1, v10}, Lbt;->c(Lbt;)D

    move-result-wide v13

    invoke-virtual {v1, v11}, Lbt;->c(Lbt;)D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gez v13, :cond_b9

    :cond_b8
    move-object v11, v10

    :cond_b9
    if-eqz v5, :cond_cb

    if-eqz v11, :cond_c9

    .line 506
    invoke-virtual {v1, v5}, Lbt;->c(Lbt;)D

    move-result-wide v13

    invoke-virtual {v1, v11}, Lbt;->c(Lbt;)D

    move-result-wide v15

    cmpg-double v1, v13, v15

    if-gez v1, :cond_cb

    :cond_c9
    move-object v13, v5

    goto :goto_cc

    :cond_cb
    move-object v13, v11

    :goto_cc
    if-nez v13, :cond_cf

    return-object v12

    :cond_cf
    if-ne v13, v6, :cond_d3

    const/4 v1, 0x4

    goto :goto_d4

    :cond_d3
    const/4 v1, -0x1

    :goto_d4
    if-ne v13, v7, :cond_d7

    const/4 v1, 0x5

    :cond_d7
    if-ne v13, v8, :cond_da

    const/4 v1, 0x0

    :cond_da
    if-ne v13, v9, :cond_dd

    const/4 v1, 0x1

    :cond_dd
    if-ne v13, v10, :cond_e0

    const/4 v1, 0x2

    :cond_e0
    if-ne v13, v5, :cond_e3

    const/4 v1, 0x3

    :cond_e3
    move v5, v1

    .line 519
    new-instance v7, Lvf;

    int-to-double v14, v2

    int-to-double v8, v3

    int-to-double v10, v4

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lbt;->c(DDD)Lbt;

    move-result-object v6

    move-object v1, v7

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lvf;-><init>(IIIILbt;)V

    return-object v7
.end method

.method public a(FFFFFF)V
    .registers 9

    float-to-double v0, p1

    .line 318
    iput-wide v0, p0, Luu;->bs:D

    float-to-double p1, p2

    .line 319
    iput-wide p1, p0, Luu;->bt:D

    float-to-double p1, p3

    .line 320
    iput-wide p1, p0, Luu;->bu:D

    float-to-double p1, p4

    .line 321
    iput-wide p1, p0, Luu;->bv:D

    float-to-double p1, p5

    .line 322
    iput-wide p1, p0, Luu;->bw:D

    float-to-double p1, p6

    .line 323
    iput-wide p1, p0, Luu;->bx:D

    return-void
.end method

.method public a(Lfd;IIIIF)V
    .registers 16

    .line 440
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 441
    :cond_5
    iget-object v0, p1, Lfd;->r:Ljava/util/Random;

    invoke-virtual {p0, v0}, Luu;->a(Ljava/util/Random;)I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_37

    .line 443
    iget-object v2, p1, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    cmpl-float v2, v2, p6

    if-lez v2, :cond_19

    goto :goto_34

    .line 444
    :cond_19
    iget-object v2, p1, Lfd;->r:Ljava/util/Random;

    invoke-virtual {p0, p5, v2}, Luu;->a(ILjava/util/Random;)I

    move-result v2

    if-gtz v2, :cond_22

    goto :goto_34

    .line 447
    :cond_22
    new-instance v8, Liz;

    invoke-virtual {p0, p5}, Luu;->b_(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v8, v2, v4, v3}, Liz;-><init>(III)V

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Luu;->a(Lfd;IIILiz;)V

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_37
    return-void
.end method

.method public a(Lfd;IIIII)V
    .registers 7

    return-void
.end method

.method public a(Lfd;IIILeq;Ljava/util/ArrayList;)V
    .registers 7

    .line 376
    invoke-virtual {p0, p1, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 377
    invoke-virtual {p5, p1}, Leq;->a(Leq;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method protected a(Lfd;IIILiz;)V
    .registers 17

    move-object v9, p1

    .line 452
    iget-boolean v0, v9, Lfd;->B:Z

    if-eqz v0, :cond_6

    return-void

    .line 455
    :cond_6
    iget-object v0, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    const v0, 0x3e99999a    # 0.3f

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 456
    iget-object v0, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v6, v0

    add-double/2addr v6, v4

    .line 457
    iget-object v0, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v4

    .line 458
    new-instance v10, Lhl;

    move v4, p2

    int-to-double v4, v4

    add-double/2addr v2, v4

    move v4, p3

    int-to-double v4, v4

    add-double/2addr v4, v6

    move v6, p4

    int-to-double v6, v6

    add-double/2addr v6, v0

    move-object v0, v10

    move-object v1, p1

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    const/16 v0, 0xa

    .line 459
    iput v0, v10, Lhl;->c:I

    .line 460
    invoke-virtual {p1, v10}, Lfd;->b(Lsn;)Z

    return-void
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    return-void
.end method

.method public a(Lfd;IIILls;)V
    .registers 6

    return-void
.end method

.method public a(Lfd;IIILsn;)V
    .registers 6

    return-void
.end method

.method public a(Lfd;IIILsn;Lbt;)V
    .registers 7

    return-void
.end method

.method public a(Lfd;Lgs;IIII)V
    .registers 13

    .line 610
    sget-object v0, Ljl;->C:[Lvr;

    iget v1, p0, Luu;->bn:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lgs;->a(Lvr;I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 611
    invoke-virtual/range {v0 .. v5}, Luu;->g(Lfd;IIII)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 5

    return-void
.end method

.method public a(IZ)Z
    .registers 3

    .line 389
    invoke-virtual {p0}, Luu;->v_()Z

    move-result p1

    return p1
.end method

.method public a(Lfd;III)Z
    .registers 5

    .line 549
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    if-eqz p1, :cond_15

    .line 550
    sget-object p2, Luu;->m:[Luu;

    aget-object p1, p2, p1

    iget-object p1, p1, Luu;->bA:Lln;

    invoke-virtual {p1}, Lln;->g()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public a(Lfd;IIII)Z
    .registers 6

    .line 545
    invoke-virtual {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)I
    .registers 2

    const p1, 0xffffff

    return p1
.end method

.method public b(Lxp;III)I
    .registers 5

    const p1, 0xffffff

    return p1
.end method

.method protected b(F)Luu;
    .registers 3

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    .line 285
    iput p1, p0, Luu;->bp:F

    return-object p0
.end method

.method protected b(Z)Luu;
    .registers 4

    .line 313
    sget-object v0, Luu;->n:[Z

    iget v1, p0, Luu;->bn:I

    aput-boolean p1, v0, v1

    return-object p0
.end method

.method public b(Lfd;III)V
    .registers 5

    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 6

    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 6

    return-void
.end method

.method public b(Lfd;IIILsn;)V
    .registers 6

    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_c

    .line 341
    iget-wide v3, p0, Luu;->bt:D

    cmpl-double v3, v3, v0

    if-lez v3, :cond_c

    return v2

    :cond_c
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ne p5, v2, :cond_17

    .line 342
    iget-wide v5, p0, Luu;->bw:D

    cmpg-double v5, v5, v3

    if-gez v5, :cond_17

    return v2

    :cond_17
    const/4 v5, 0x2

    if-ne p5, v5, :cond_21

    .line 343
    iget-wide v5, p0, Luu;->bu:D

    cmpl-double v5, v5, v0

    if-lez v5, :cond_21

    return v2

    :cond_21
    const/4 v5, 0x3

    if-ne p5, v5, :cond_2b

    .line 344
    iget-wide v5, p0, Luu;->bx:D

    cmpg-double v5, v5, v3

    if-gez v5, :cond_2b

    return v2

    :cond_2b
    const/4 v5, 0x4

    if-ne p5, v5, :cond_35

    .line 345
    iget-wide v5, p0, Luu;->bs:D

    cmpl-double v0, v5, v0

    if-lez v0, :cond_35

    return v2

    :cond_35
    const/4 v0, 0x5

    if-ne p5, v0, :cond_3f

    .line 346
    iget-wide v0, p0, Luu;->bv:D

    cmpg-double p5, v0, v3

    if-gez p5, :cond_3f

    return v2

    .line 347
    :cond_3f
    invoke-interface {p1, p2, p3, p4}, Lxp;->g(III)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public b_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected b_(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected c(F)Luu;
    .registers 4

    .line 298
    iput p1, p0, Luu;->bo:F

    .line 299
    iget v0, p0, Luu;->bp:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr p1, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_d

    iput p1, p0, Luu;->bp:F

    :cond_d
    return-object p0
.end method

.method public c(Lfd;III)V
    .registers 5

    return-void
.end method

.method public c(Lfd;IIII)V
    .registers 6

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lxp;IIII)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lxp;III)F
    .registers 7

    .line 327
    sget-object v0, Luu;->s:[I

    iget v1, p0, Luu;->bn:I

    aget v0, v0, v1

    invoke-interface {p1, p2, p3, p4, v0}, Lxp;->a(IIII)F

    move-result p1

    return p1
.end method

.method public d(Lfd;III)V
    .registers 5

    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d(Lfd;IIII)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lxp;IIII)Z
    .registers 6

    .line 356
    invoke-interface {p1, p2, p3, p4}, Lxp;->f(III)Lln;

    move-result-object p1

    invoke-virtual {p1}, Lln;->a()Z

    move-result p1

    return p1
.end method

.method public e()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-double v1, v1

    .line 381
    iget-wide v3, v0, Luu;->bs:D

    add-double v5, v1, v3

    move/from16 v3, p3

    int-to-double v3, v3

    iget-wide v7, v0, Luu;->bt:D

    add-double/2addr v7, v3

    move/from16 v9, p4

    int-to-double v9, v9

    iget-wide v11, v0, Luu;->bu:D

    add-double/2addr v11, v9

    iget-wide v13, v0, Luu;->bv:D

    add-double/2addr v1, v13

    iget-wide v13, v0, Luu;->bw:D

    add-double/2addr v13, v3

    iget-wide v3, v0, Luu;->bx:D

    add-double v15, v9, v3

    move-wide v9, v11

    move-wide v11, v1

    invoke-static/range {v5 .. v16}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1
.end method

.method public e(Lfd;IIII)V
    .registers 6

    return-void
.end method

.method public f(Lfd;III)Leq;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-double v1, v1

    .line 372
    iget-wide v3, v0, Luu;->bs:D

    add-double v5, v1, v3

    move/from16 v3, p3

    int-to-double v3, v3

    iget-wide v7, v0, Luu;->bt:D

    add-double/2addr v7, v3

    move/from16 v9, p4

    int-to-double v9, v9

    iget-wide v11, v0, Luu;->bu:D

    add-double/2addr v11, v9

    iget-wide v13, v0, Luu;->bv:D

    add-double/2addr v1, v13

    iget-wide v13, v0, Luu;->bw:D

    add-double/2addr v13, v3

    iget-wide v3, v0, Luu;->bx:D

    add-double v15, v9, v3

    move-wide v9, v11

    move-wide v11, v1

    invoke-static/range {v5 .. v16}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected g(I)Luu;
    .registers 4

    .line 275
    sget-object v0, Luu;->q:[I

    iget v1, p0, Luu;->bn:I

    aput p1, v0, v1

    return-object p0
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public final g(Lfd;IIII)V
    .registers 13

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 436
    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIIIF)V

    return-void
.end method

.method public g(Lfd;III)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public h()I
    .registers 2

    .line 647
    iget-object v0, p0, Luu;->bA:Lln;

    invoke-virtual {v0}, Lln;->j()I

    move-result v0

    return v0
.end method

.method protected j()Luu;
    .registers 4

    .line 257
    sget-object v0, Luu;->t:[Z

    iget v1, p0, Luu;->bn:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method protected k()V
    .registers 1

    return-void
.end method

.method protected l()Luu;
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 304
    invoke-virtual {p0, v0}, Luu;->c(F)Luu;

    return-object p0
.end method

.method public m()F
    .registers 2

    .line 309
    iget v0, p0, Luu;->bo:F

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luu;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 631
    iget-object v0, p0, Luu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .registers 2

    .line 638
    iget-boolean v0, p0, Luu;->br:Z

    return v0
.end method

.method protected q()Luu;
    .registers 2

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Luu;->br:Z

    return-object p0
.end method

.method public v_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
