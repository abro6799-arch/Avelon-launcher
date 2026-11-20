###### Class defpackage.gm (gm)
.class public Lgm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Lgm;

.field public static B:Lgm;

.field public static C:Lgm;

.field public static D:Lgm;

.field public static E:Lgm;

.field public static F:Lgm;

.field public static G:Lgm;

.field public static H:Lgm;

.field public static I:Lgm;

.field public static J:Lgm;

.field public static K:Lgm;

.field public static L:Lgm;

.field public static M:Lgm;

.field public static N:Lgm;

.field public static O:Lgm;

.field public static P:Lgm;

.field public static Q:Lgm;

.field public static R:Lgm;

.field public static S:Lgm;

.field public static T:Lgm;

.field public static U:Lgm;

.field public static V:Lgm;

.field public static W:Lgm;

.field public static X:Lgm;

.field public static Y:Lgm;

.field public static Z:Lgm;

.field public static aA:Lgm;

.field public static aB:Lgm;

.field public static aC:Lgm;

.field public static aD:Lgm;

.field public static aE:Lgm;

.field public static aF:Lgm;

.field public static aG:Lgm;

.field public static aH:Lgm;

.field public static aI:Lgm;

.field public static aJ:Lgm;

.field public static aK:Lgm;

.field public static aL:Lgm;

.field public static aM:Lgm;

.field public static aN:Lgm;

.field public static aO:Lgm;

.field public static aP:Lgm;

.field public static aQ:Lgm;

.field public static aR:Lgm;

.field public static aS:Lgm;

.field public static aT:Lgm;

.field public static aU:Lgm;

.field public static aV:Lgm;

.field public static aW:Lgm;

.field public static aX:Lgm;

.field public static aY:Lgm;

.field public static aZ:Lgm;

.field public static aa:Lgm;

.field public static ab:Lgm;

.field public static ac:Lgm;

.field public static ad:Lgm;

.field public static ae:Lgm;

.field public static af:Lgm;

.field public static ag:Lgm;

.field public static ah:Lgm;

.field public static ai:Lgm;

.field public static aj:Lgm;

.field public static ak:Lgm;

.field public static al:Lgm;

.field public static am:Lgm;

.field public static an:Lgm;

.field public static ao:Lgm;

.field public static ap:Lgm;

.field public static aq:Lgm;

.field public static ar:Lgm;

.field public static as:Lgm;

.field public static at:Lgm;

.field public static au:Lgm;

.field public static av:Lgm;

.field public static aw:Lgm;

.field public static ax:Lgm;

.field public static ay:Lgm;

.field public static az:Lgm;

.field protected static b:Ljava/util/Random;

.field public static ba:Lgm;

.field public static bb:Lwr;

.field public static bc:Lbl;

.field public static bd:Lgm;

.field public static be:Lgm;

.field public static c:[Lgm;

.field public static d:Lgm;

.field public static e:Lgm;

.field public static f:Lgm;

.field public static g:Lgm;

.field public static h:Lgm;

.field public static i:Lgm;

.field public static j:Lgm;

.field public static k:Lgm;

.field public static l:Lgm;

.field public static m:Lgm;

.field public static n:Lgm;

.field public static o:Lgm;

.field public static p:Lgm;

.field public static q:Lgm;

.field public static r:Lgm;

.field public static s:Lgm;

.field public static t:Lgm;

.field public static u:Lgm;

.field public static v:Lgm;

.field public static w:Lgm;

.field public static x:Lgm;

.field public static y:Lgm;

.field public static z:Lgm;


# instance fields
.field private a:I

.field public final bf:I

.field protected bg:I

.field protected bh:I

.field protected bi:Z

.field protected bj:Z

.field private bk:Lgm;

.field private bl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lgm;->b:Ljava/util/Random;

    const/16 v0, 0x7d00

    new-array v0, v0, [Lgm;

    .line 59
    sput-object v0, Lgm;->c:[Lgm;

    .line 61
    new-instance v0, Lwc;

    sget-object v1, Lbu;->c:Lbu;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lwc;-><init>(ILbu;)V

    const/4 v1, 0x2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Lwc;->a(II)Lgm;

    move-result-object v0

    const-string v4, "shovelIron"

    invoke-virtual {v0, v4}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->d:Lgm;

    .line 62
    new-instance v0, Lau;

    sget-object v4, Lbu;->c:Lbu;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v4}, Lau;-><init>(ILbu;)V

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4}, Lau;->a(II)Lgm;

    move-result-object v0

    const-string v6, "pickaxeIron"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->e:Lgm;

    .line 63
    new-instance v0, Lta;

    sget-object v6, Lbu;->c:Lbu;

    invoke-direct {v0, v1, v6}, Lta;-><init>(ILbu;)V

    const/4 v6, 0x7

    invoke-virtual {v0, v1, v6}, Lta;->a(II)Lgm;

    move-result-object v0

    const-string v7, "hatchetIron"

    invoke-virtual {v0, v7}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->f:Lgm;

    .line 64
    new-instance v0, Lye;

    const/4 v7, 0x3

    invoke-direct {v0, v7}, Lye;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Lye;->a(II)Lgm;

    move-result-object v0

    const-string v8, "flintAndSteel"

    invoke-virtual {v0, v8}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->g:Lgm;

    .line 65
    new-instance v0, Lyw;

    const/4 v8, 0x4

    invoke-direct {v0, v8, v8, v2}, Lyw;-><init>(IIZ)V

    const/16 v9, 0xa

    invoke-virtual {v0, v9, v2}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v10, "apple"

    invoke-virtual {v0, v10}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->h:Lgm;

    .line 66
    new-instance v0, Lqz;

    invoke-direct {v0, v3}, Lqz;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Lqz;->a(II)Lgm;

    move-result-object v0

    const-string v10, "bow"

    invoke-virtual {v0, v10}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->i:Lgm;

    .line 67
    new-instance v0, Lgm;

    invoke-direct {v0, v4}, Lgm;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v10, "arrow"

    invoke-virtual {v0, v10}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->j:Lgm;

    .line 68
    new-instance v0, Lrx;

    invoke-direct {v0, v6}, Lrx;-><init>(I)V

    invoke-virtual {v0, v6, v2}, Lrx;->a(II)Lgm;

    move-result-object v0

    const-string v10, "coal"

    invoke-virtual {v0, v10}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->k:Lgm;

    .line 69
    new-instance v0, Lgm;

    const/16 v10, 0x8

    invoke-direct {v0, v10}, Lgm;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v11, "emerald"

    invoke-virtual {v0, v11}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->l:Lgm;

    .line 70
    new-instance v0, Lgm;

    const/16 v11, 0x9

    invoke-direct {v0, v11}, Lgm;-><init>(I)V

    invoke-virtual {v0, v6, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "ingotIron"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->m:Lgm;

    .line 71
    new-instance v0, Lgm;

    invoke-direct {v0, v9}, Lgm;-><init>(I)V

    invoke-virtual {v0, v6, v1}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "ingotGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->n:Lgm;

    .line 72
    new-instance v0, Lqd;

    sget-object v12, Lbu;->c:Lbu;

    const/16 v13, 0xb

    invoke-direct {v0, v13, v12}, Lqd;-><init>(ILbu;)V

    invoke-virtual {v0, v1, v8}, Lqd;->a(II)Lgm;

    move-result-object v0

    const-string v12, "swordIron"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->o:Lgm;

    .line 74
    new-instance v0, Lqd;

    sget-object v12, Lbu;->a:Lbu;

    const/16 v14, 0xc

    invoke-direct {v0, v14, v12}, Lqd;-><init>(ILbu;)V

    invoke-virtual {v0, v2, v8}, Lqd;->a(II)Lgm;

    move-result-object v0

    const-string v12, "swordWood"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->p:Lgm;

    .line 75
    new-instance v0, Lwc;

    sget-object v12, Lbu;->a:Lbu;

    const/16 v15, 0xd

    invoke-direct {v0, v15, v12}, Lwc;-><init>(ILbu;)V

    invoke-virtual {v0, v2, v3}, Lwc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "shovelWood"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->q:Lgm;

    .line 76
    new-instance v0, Lau;

    sget-object v12, Lbu;->a:Lbu;

    const/16 v15, 0xe

    invoke-direct {v0, v15, v12}, Lau;-><init>(ILbu;)V

    invoke-virtual {v0, v2, v4}, Lau;->a(II)Lgm;

    move-result-object v0

    const-string v12, "pickaxeWood"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->r:Lgm;

    .line 77
    new-instance v0, Lta;

    sget-object v12, Lbu;->a:Lbu;

    const/16 v15, 0xf

    invoke-direct {v0, v15, v12}, Lta;-><init>(ILbu;)V

    invoke-virtual {v0, v2, v6}, Lta;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hatchetWood"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->s:Lgm;

    .line 79
    new-instance v0, Lqd;

    const/16 v12, 0x10

    sget-object v15, Lbu;->b:Lbu;

    invoke-direct {v0, v12, v15}, Lqd;-><init>(ILbu;)V

    invoke-virtual {v0, v5, v8}, Lqd;->a(II)Lgm;

    move-result-object v0

    const-string v12, "swordStone"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->t:Lgm;

    .line 80
    new-instance v0, Lwc;

    const/16 v12, 0x11

    sget-object v15, Lbu;->b:Lbu;

    invoke-direct {v0, v12, v15}, Lwc;-><init>(ILbu;)V

    invoke-virtual {v0, v5, v3}, Lwc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "shovelStone"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->u:Lgm;

    .line 81
    new-instance v0, Lau;

    const/16 v12, 0x12

    sget-object v15, Lbu;->b:Lbu;

    invoke-direct {v0, v12, v15}, Lau;-><init>(ILbu;)V

    invoke-virtual {v0, v5, v4}, Lau;->a(II)Lgm;

    move-result-object v0

    const-string v12, "pickaxeStone"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->v:Lgm;

    .line 82
    new-instance v0, Lta;

    const/16 v12, 0x13

    sget-object v15, Lbu;->b:Lbu;

    invoke-direct {v0, v12, v15}, Lta;-><init>(ILbu;)V

    invoke-virtual {v0, v5, v6}, Lta;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hatchetStone"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->w:Lgm;

    .line 84
    new-instance v0, Lqd;

    const/16 v12, 0x14

    sget-object v15, Lbu;->d:Lbu;

    invoke-direct {v0, v12, v15}, Lqd;-><init>(ILbu;)V

    invoke-virtual {v0, v7, v8}, Lqd;->a(II)Lgm;

    move-result-object v0

    const-string v12, "swordDiamond"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->x:Lgm;

    .line 85
    new-instance v0, Lwc;

    const/16 v12, 0x15

    sget-object v15, Lbu;->d:Lbu;

    invoke-direct {v0, v12, v15}, Lwc;-><init>(ILbu;)V

    invoke-virtual {v0, v7, v3}, Lwc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "shovelDiamond"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->y:Lgm;

    .line 86
    new-instance v0, Lau;

    const/16 v12, 0x16

    sget-object v15, Lbu;->d:Lbu;

    invoke-direct {v0, v12, v15}, Lau;-><init>(ILbu;)V

    invoke-virtual {v0, v7, v4}, Lau;->a(II)Lgm;

    move-result-object v0

    const-string v12, "pickaxeDiamond"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->z:Lgm;

    .line 87
    new-instance v0, Lta;

    const/16 v12, 0x17

    sget-object v15, Lbu;->d:Lbu;

    invoke-direct {v0, v12, v15}, Lta;-><init>(ILbu;)V

    invoke-virtual {v0, v7, v6}, Lta;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hatchetDiamond"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->A:Lgm;

    .line 89
    new-instance v0, Lgm;

    const/16 v12, 0x18

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v3, v7}, Lgm;->a(II)Lgm;

    move-result-object v0

    invoke-virtual {v0}, Lgm;->h()Lgm;

    move-result-object v0

    const-string v12, "stick"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->B:Lgm;

    .line 90
    new-instance v0, Lgm;

    const/16 v12, 0x19

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v6, v8}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "bowl"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->C:Lgm;

    .line 91
    new-instance v0, Lbz;

    const/16 v12, 0x1a

    invoke-direct {v0, v12, v9}, Lbz;-><init>(II)V

    invoke-virtual {v0, v10, v8}, Lbz;->a(II)Lgm;

    move-result-object v0

    const-string v12, "mushroomStew"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->D:Lgm;

    .line 93
    new-instance v0, Lqd;

    const/16 v12, 0x1b

    sget-object v15, Lbu;->e:Lbu;

    invoke-direct {v0, v12, v15}, Lqd;-><init>(ILbu;)V

    invoke-virtual {v0, v8, v8}, Lqd;->a(II)Lgm;

    move-result-object v0

    const-string v12, "swordGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->E:Lgm;

    .line 94
    new-instance v0, Lwc;

    const/16 v12, 0x1c

    sget-object v15, Lbu;->e:Lbu;

    invoke-direct {v0, v12, v15}, Lwc;-><init>(ILbu;)V

    invoke-virtual {v0, v8, v3}, Lwc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "shovelGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->F:Lgm;

    .line 95
    new-instance v0, Lau;

    const/16 v12, 0x1d

    sget-object v15, Lbu;->e:Lbu;

    invoke-direct {v0, v12, v15}, Lau;-><init>(ILbu;)V

    invoke-virtual {v0, v8, v4}, Lau;->a(II)Lgm;

    move-result-object v0

    const-string v12, "pickaxeGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->G:Lgm;

    .line 96
    new-instance v0, Lta;

    const/16 v12, 0x1e

    sget-object v15, Lbu;->e:Lbu;

    invoke-direct {v0, v12, v15}, Lta;-><init>(ILbu;)V

    invoke-virtual {v0, v8, v6}, Lta;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hatchetGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->H:Lgm;

    .line 98
    new-instance v0, Lgm;

    const/16 v12, 0x1f

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v10, v2}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "string"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->I:Lgm;

    .line 99
    new-instance v0, Lgm;

    const/16 v12, 0x20

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v10, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "feather"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->J:Lgm;

    .line 100
    new-instance v0, Lgm;

    const/16 v12, 0x21

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v10, v1}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "sulphur"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->K:Lgm;

    .line 102
    new-instance v0, Lla;

    const/16 v12, 0x22

    sget-object v15, Lbu;->a:Lbu;

    invoke-direct {v0, v12, v15}, Lla;-><init>(ILbu;)V

    invoke-virtual {v0, v2, v10}, Lla;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hoeWood"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->L:Lgm;

    .line 103
    new-instance v0, Lla;

    const/16 v12, 0x23

    sget-object v15, Lbu;->b:Lbu;

    invoke-direct {v0, v12, v15}, Lla;-><init>(ILbu;)V

    invoke-virtual {v0, v5, v10}, Lla;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hoeStone"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->M:Lgm;

    .line 104
    new-instance v0, Lla;

    const/16 v12, 0x24

    sget-object v15, Lbu;->c:Lbu;

    invoke-direct {v0, v12, v15}, Lla;-><init>(ILbu;)V

    invoke-virtual {v0, v1, v10}, Lla;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hoeIron"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->N:Lgm;

    .line 105
    new-instance v0, Lla;

    const/16 v12, 0x25

    sget-object v15, Lbu;->d:Lbu;

    invoke-direct {v0, v12, v15}, Lla;-><init>(ILbu;)V

    invoke-virtual {v0, v7, v10}, Lla;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hoeDiamond"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->O:Lgm;

    .line 106
    new-instance v0, Lla;

    const/16 v12, 0x26

    sget-object v15, Lbu;->e:Lbu;

    invoke-direct {v0, v12, v15}, Lla;-><init>(ILbu;)V

    invoke-virtual {v0, v8, v10}, Lla;->a(II)Lgm;

    move-result-object v0

    const-string v12, "hoeGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->P:Lgm;

    .line 108
    new-instance v0, Lrk;

    sget-object v12, Luu;->aA:Luu;

    iget v12, v12, Luu;->bn:I

    const/16 v15, 0x27

    invoke-direct {v0, v15, v12}, Lrk;-><init>(II)V

    invoke-virtual {v0, v11, v2}, Lrk;->a(II)Lgm;

    move-result-object v0

    const-string v12, "seeds"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->Q:Lgm;

    .line 109
    new-instance v0, Lgm;

    const/16 v12, 0x28

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v11, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "wheat"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->R:Lgm;

    .line 110
    new-instance v0, Lyw;

    const/16 v12, 0x29

    invoke-direct {v0, v12, v3, v2}, Lyw;-><init>(IIZ)V

    invoke-virtual {v0, v11, v1}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v12, "bread"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->S:Lgm;

    .line 112
    new-instance v0, Lwa;

    const/16 v12, 0x2a

    invoke-direct {v0, v12, v2, v2, v2}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v2, v2}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "helmetCloth"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->T:Lgm;

    .line 113
    new-instance v0, Lwa;

    const/16 v15, 0x2b

    invoke-direct {v0, v15, v2, v2, v5}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v2, v5}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "chestplateCloth"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->U:Lgm;

    .line 114
    new-instance v0, Lwa;

    const/16 v15, 0x2c

    invoke-direct {v0, v15, v2, v2, v1}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "leggingsCloth"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->V:Lgm;

    .line 115
    new-instance v0, Lwa;

    const/16 v15, 0x2d

    invoke-direct {v0, v15, v2, v2, v7}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v2, v7}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "bootsCloth"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->W:Lgm;

    .line 117
    new-instance v0, Lwa;

    const/16 v15, 0x2e

    invoke-direct {v0, v15, v5, v5, v2}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v5, v2}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "helmetChain"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->X:Lgm;

    .line 118
    new-instance v0, Lwa;

    const/16 v15, 0x2f

    invoke-direct {v0, v15, v5, v5, v5}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v5, v5}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "chestplateChain"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->Y:Lgm;

    .line 119
    new-instance v0, Lwa;

    const/16 v15, 0x30

    invoke-direct {v0, v15, v5, v5, v1}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v5, v1}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "leggingsChain"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->Z:Lgm;

    .line 120
    new-instance v0, Lwa;

    const/16 v15, 0x31

    invoke-direct {v0, v15, v5, v5, v7}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v5, v7}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "bootsChain"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aa:Lgm;

    .line 122
    new-instance v0, Lwa;

    const/16 v15, 0x32

    invoke-direct {v0, v15, v1, v1, v2}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "helmetIron"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ab:Lgm;

    .line 123
    new-instance v0, Lwa;

    const/16 v15, 0x33

    invoke-direct {v0, v15, v1, v1, v5}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v1, v5}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "chestplateIron"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ac:Lgm;

    .line 124
    new-instance v0, Lwa;

    const/16 v15, 0x34

    invoke-direct {v0, v15, v1, v1, v1}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v1, v1}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "leggingsIron"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ad:Lgm;

    .line 125
    new-instance v0, Lwa;

    const/16 v15, 0x35

    invoke-direct {v0, v15, v1, v1, v7}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v1, v7}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "bootsIron"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ae:Lgm;

    .line 127
    new-instance v0, Lwa;

    const/16 v15, 0x36

    invoke-direct {v0, v15, v7, v7, v2}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v7, v2}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "helmetDiamond"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->af:Lgm;

    .line 128
    new-instance v0, Lwa;

    const/16 v15, 0x37

    invoke-direct {v0, v15, v7, v7, v5}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v7, v5}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "chestplateDiamond"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ag:Lgm;

    .line 129
    new-instance v0, Lwa;

    const/16 v15, 0x38

    invoke-direct {v0, v15, v7, v7, v1}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v7, v1}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "leggingsDiamond"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ah:Lgm;

    .line 130
    new-instance v0, Lwa;

    const/16 v15, 0x39

    invoke-direct {v0, v15, v7, v7, v7}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v7, v7}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "bootsDiamond"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ai:Lgm;

    .line 132
    new-instance v0, Lwa;

    const/16 v15, 0x3a

    invoke-direct {v0, v15, v5, v8, v2}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v8, v2}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "helmetGold"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aj:Lgm;

    .line 133
    new-instance v0, Lwa;

    const/16 v15, 0x3b

    invoke-direct {v0, v15, v5, v8, v5}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v8, v5}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "chestplateGold"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ak:Lgm;

    .line 134
    new-instance v0, Lwa;

    const/16 v15, 0x3c

    invoke-direct {v0, v15, v5, v8, v1}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v8, v1}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "leggingsGold"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->al:Lgm;

    .line 135
    new-instance v0, Lwa;

    const/16 v15, 0x3d

    invoke-direct {v0, v15, v5, v8, v7}, Lwa;-><init>(IIII)V

    invoke-virtual {v0, v8, v7}, Lwa;->a(II)Lgm;

    move-result-object v0

    const-string v15, "bootsGold"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->am:Lgm;

    .line 137
    new-instance v0, Lgm;

    const/16 v15, 0x3e

    invoke-direct {v0, v15}, Lgm;-><init>(I)V

    invoke-virtual {v0, v4, v2}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v15, "flint"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->an:Lgm;

    .line 138
    new-instance v0, Lyw;

    const/16 v15, 0x3f

    invoke-direct {v0, v15, v7, v5}, Lyw;-><init>(IIZ)V

    invoke-virtual {v0, v6, v3}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v15, "porkchopRaw"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ao:Lgm;

    .line 139
    new-instance v0, Lyw;

    const/16 v15, 0x40

    invoke-direct {v0, v15, v10, v5}, Lyw;-><init>(IIZ)V

    invoke-virtual {v0, v10, v3}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v15, "porkchopCooked"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ap:Lgm;

    .line 140
    new-instance v0, Lym;

    const/16 v15, 0x41

    invoke-direct {v0, v15}, Lym;-><init>(I)V

    invoke-virtual {v0, v9, v5}, Lym;->a(II)Lgm;

    move-result-object v0

    const-string v15, "painting"

    invoke-virtual {v0, v15}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aq:Lgm;

    .line 142
    new-instance v0, Lyw;

    const/16 v15, 0x42

    invoke-direct {v0, v15, v12, v2}, Lyw;-><init>(IIZ)V

    invoke-virtual {v0, v13, v2}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v12, "appleGold"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ar:Lgm;

    .line 144
    new-instance v0, Lvc;

    const/16 v12, 0x43

    invoke-direct {v0, v12}, Lvc;-><init>(I)V

    invoke-virtual {v0, v9, v1}, Lvc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "sign"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->as:Lgm;

    .line 145
    new-instance v0, Lhu;

    const/16 v12, 0x44

    sget-object v15, Lln;->d:Lln;

    invoke-direct {v0, v12, v15}, Lhu;-><init>(ILln;)V

    invoke-virtual {v0, v13, v1}, Lhu;->a(II)Lgm;

    move-result-object v0

    const-string v12, "doorWood"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->at:Lgm;

    .line 147
    new-instance v0, Lbc;

    const/16 v12, 0x45

    invoke-direct {v0, v12, v2}, Lbc;-><init>(II)V

    invoke-virtual {v0, v9, v8}, Lbc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "bucket"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->au:Lgm;

    .line 148
    new-instance v0, Lbc;

    sget-object v12, Luu;->B:Luu;

    iget v12, v12, Luu;->bn:I

    const/16 v15, 0x46

    invoke-direct {v0, v15, v12}, Lbc;-><init>(II)V

    invoke-virtual {v0, v13, v8}, Lbc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "bucketWater"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sget-object v12, Lgm;->au:Lgm;

    invoke-virtual {v0, v12}, Lgm;->a(Lgm;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->av:Lgm;

    .line 149
    new-instance v0, Lbc;

    sget-object v12, Luu;->D:Luu;

    iget v12, v12, Luu;->bn:I

    const/16 v15, 0x47

    invoke-direct {v0, v15, v12}, Lbc;-><init>(II)V

    invoke-virtual {v0, v14, v8}, Lbc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "bucketLava"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sget-object v12, Lgm;->au:Lgm;

    invoke-virtual {v0, v12}, Lgm;->a(Lgm;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aw:Lgm;

    .line 151
    new-instance v0, Lrl;

    const/16 v12, 0x48

    invoke-direct {v0, v12, v2}, Lrl;-><init>(II)V

    invoke-virtual {v0, v6, v10}, Lrl;->a(II)Lgm;

    move-result-object v0

    const-string v12, "minecart"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ax:Lgm;

    .line 152
    new-instance v0, Lsa;

    const/16 v12, 0x49

    invoke-direct {v0, v12}, Lsa;-><init>(I)V

    invoke-virtual {v0, v10, v4}, Lsa;->a(II)Lgm;

    move-result-object v0

    const-string v12, "saddle"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ay:Lgm;

    .line 153
    new-instance v0, Lhu;

    const/16 v12, 0x4a

    sget-object v15, Lln;->f:Lln;

    invoke-direct {v0, v12, v15}, Lhu;-><init>(ILln;)V

    invoke-virtual {v0, v14, v1}, Lhu;->a(II)Lgm;

    move-result-object v0

    const-string v12, "doorIron"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->az:Lgm;

    .line 154
    new-instance v0, Lie;

    const/16 v12, 0x4b

    invoke-direct {v0, v12}, Lie;-><init>(I)V

    invoke-virtual {v0, v10, v7}, Lie;->a(II)Lgm;

    move-result-object v0

    const-string v12, "redstone"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aA:Lgm;

    .line 155
    new-instance v0, Ldm;

    const/16 v12, 0x4c

    invoke-direct {v0, v12}, Ldm;-><init>(I)V

    const/16 v12, 0xe

    invoke-virtual {v0, v12, v2}, Ldm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "snowball"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aB:Lgm;

    .line 157
    new-instance v0, Lvd;

    const/16 v12, 0x4d

    invoke-direct {v0, v12}, Lvd;-><init>(I)V

    invoke-virtual {v0, v10, v10}, Lvd;->a(II)Lgm;

    move-result-object v0

    const-string v12, "boat"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aC:Lgm;

    .line 159
    new-instance v0, Lgm;

    const/16 v12, 0x4e

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v6, v4}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "leather"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aD:Lgm;

    .line 160
    new-instance v0, Lbc;

    const/16 v12, 0x4f

    const/4 v15, -0x1

    invoke-direct {v0, v12, v15}, Lbc;-><init>(II)V

    const/16 v12, 0xd

    invoke-virtual {v0, v12, v8}, Lbc;->a(II)Lgm;

    move-result-object v0

    const-string v12, "milk"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sget-object v12, Lgm;->au:Lgm;

    invoke-virtual {v0, v12}, Lgm;->a(Lgm;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aE:Lgm;

    .line 161
    new-instance v0, Lgm;

    const/16 v12, 0x50

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "brick"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aF:Lgm;

    .line 162
    new-instance v0, Lgm;

    const/16 v12, 0x51

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v11, v7}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "clay"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aG:Lgm;

    .line 163
    new-instance v0, Llv;

    const/16 v12, 0x52

    sget-object v15, Luu;->aY:Luu;

    invoke-direct {v0, v12, v15}, Llv;-><init>(ILuu;)V

    invoke-virtual {v0, v13, v5}, Llv;->a(II)Lgm;

    move-result-object v0

    const-string v12, "reeds"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aH:Lgm;

    .line 164
    new-instance v0, Lgm;

    const/16 v12, 0x53

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v9, v7}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "paper"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aI:Lgm;

    .line 165
    new-instance v0, Lgm;

    const/16 v12, 0x54

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    invoke-virtual {v0, v13, v7}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "book"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aJ:Lgm;

    .line 166
    new-instance v0, Lgm;

    const/16 v12, 0x55

    invoke-direct {v0, v12}, Lgm;-><init>(I)V

    const/16 v12, 0xe

    invoke-virtual {v0, v12, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v12, "slimeball"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aK:Lgm;

    .line 167
    new-instance v0, Lrl;

    const/16 v12, 0x56

    invoke-direct {v0, v12, v5}, Lrl;-><init>(II)V

    invoke-virtual {v0, v6, v11}, Lrl;->a(II)Lgm;

    move-result-object v0

    const-string v12, "minecartChest"

    invoke-virtual {v0, v12}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aL:Lgm;

    .line 168
    new-instance v0, Lrl;

    const/16 v12, 0x57

    invoke-direct {v0, v12, v1}, Lrl;-><init>(II)V

    invoke-virtual {v0, v6, v9}, Lrl;->a(II)Lgm;

    move-result-object v0

    const-string v6, "minecartFurnace"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aM:Lgm;

    .line 169
    new-instance v0, Lmo;

    const/16 v6, 0x58

    invoke-direct {v0, v6}, Lmo;-><init>(I)V

    invoke-virtual {v0, v14, v2}, Lmo;->a(II)Lgm;

    move-result-object v0

    const-string v6, "egg"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aN:Lgm;

    .line 170
    new-instance v0, Lgm;

    const/16 v6, 0x59

    invoke-direct {v0, v6}, Lgm;-><init>(I)V

    invoke-virtual {v0, v4, v7}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v6, "compass"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aO:Lgm;

    .line 171
    new-instance v0, Lcs;

    const/16 v6, 0x5a

    invoke-direct {v0, v6}, Lcs;-><init>(I)V

    invoke-virtual {v0, v3, v8}, Lcs;->a(II)Lgm;

    move-result-object v0

    const-string v6, "fishingRod"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aP:Lgm;

    .line 172
    new-instance v0, Lgm;

    const/16 v6, 0x5b

    invoke-direct {v0, v6}, Lgm;-><init>(I)V

    invoke-virtual {v0, v4, v8}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v6, "clock"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aQ:Lgm;

    .line 173
    new-instance v0, Lgm;

    const/16 v6, 0x5c

    invoke-direct {v0, v6}, Lgm;-><init>(I)V

    invoke-virtual {v0, v11, v8}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v6, "yellowDust"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aR:Lgm;

    .line 174
    new-instance v0, Lyw;

    const/16 v6, 0x5d

    invoke-direct {v0, v6, v1, v2}, Lyw;-><init>(IIZ)V

    invoke-virtual {v0, v11, v3}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v6, "fishRaw"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aS:Lgm;

    .line 175
    new-instance v0, Lyw;

    const/16 v6, 0x5e

    invoke-direct {v0, v6, v3, v2}, Lyw;-><init>(IIZ)V

    invoke-virtual {v0, v9, v3}, Lyw;->a(II)Lgm;

    move-result-object v0

    const-string v6, "fishCooked"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aT:Lgm;

    .line 177
    new-instance v0, Lkm;

    const/16 v6, 0x5f

    invoke-direct {v0, v6}, Lkm;-><init>(I)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v8}, Lkm;->a(II)Lgm;

    move-result-object v0

    const-string v6, "dyePowder"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aU:Lgm;

    .line 178
    new-instance v0, Lgm;

    const/16 v6, 0x60

    invoke-direct {v0, v6}, Lgm;-><init>(I)V

    invoke-virtual {v0, v14, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v6, "bone"

    invoke-virtual {v0, v6}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    invoke-virtual {v0}, Lgm;->h()Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aV:Lgm;

    .line 179
    new-instance v0, Lgm;

    const/16 v6, 0x61

    invoke-direct {v0, v6}, Lgm;-><init>(I)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v2}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v8, "sugar"

    invoke-virtual {v0, v8}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    invoke-virtual {v0}, Lgm;->h()Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aW:Lgm;

    .line 180
    new-instance v0, Llv;

    const/16 v8, 0x62

    sget-object v9, Luu;->bh:Luu;

    invoke-direct {v0, v8, v9}, Llv;-><init>(ILuu;)V

    invoke-virtual {v0, v5}, Llv;->d(I)Lgm;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v8, "cake"

    invoke-virtual {v0, v8}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aX:Lgm;

    .line 182
    new-instance v0, Llp;

    const/16 v8, 0x63

    invoke-direct {v0, v8}, Llp;-><init>(I)V

    invoke-virtual {v0, v5}, Llp;->d(I)Lgm;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lgm;->a(II)Lgm;

    move-result-object v0

    const-string v1, "bed"

    invoke-virtual {v0, v1}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aY:Lgm;

    .line 184
    new-instance v0, Llv;

    const/16 v1, 0x64

    sget-object v6, Luu;->bi:Luu;

    invoke-direct {v0, v1, v6}, Llv;-><init>(ILuu;)V

    invoke-virtual {v0, v4, v3}, Llv;->a(II)Lgm;

    move-result-object v0

    const-string v1, "diode"

    invoke-virtual {v0, v1}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->aZ:Lgm;

    .line 185
    new-instance v0, Lqk;

    const/16 v1, 0x65

    invoke-direct {v0, v1, v5, v2, v10}, Lqk;-><init>(IIZI)V

    invoke-virtual {v0, v14, v3}, Lqk;->a(II)Lgm;

    move-result-object v0

    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->ba:Lgm;

    .line 187
    new-instance v0, Lwr;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lwr;-><init>(I)V

    invoke-virtual {v0, v14, v7}, Lwr;->a(II)Lgm;

    move-result-object v0

    const-string v1, "map"

    invoke-virtual {v0, v1}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    check-cast v0, Lwr;

    sput-object v0, Lgm;->bb:Lwr;

    .line 189
    new-instance v0, Lbl;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lbl;-><init>(I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Lbl;->a(II)Lgm;

    move-result-object v0

    const-string v1, "shears"

    invoke-virtual {v0, v1}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    check-cast v0, Lbl;

    sput-object v0, Lgm;->bc:Lbl;

    .line 193
    new-instance v0, Ltr;

    const/16 v1, 0x7d0

    const-string v3, "13"

    invoke-direct {v0, v1, v3}, Ltr;-><init>(ILjava/lang/String;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v2, v1}, Ltr;->a(II)Lgm;

    move-result-object v0

    const-string v2, "record"

    invoke-virtual {v0, v2}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->bd:Lgm;

    .line 194
    new-instance v0, Ltr;

    const/16 v3, 0x7d1

    const-string v4, "cat"

    invoke-direct {v0, v3, v4}, Ltr;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ltr;->a(II)Lgm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgm;->a(Ljava/lang/String;)Lgm;

    move-result-object v0

    sput-object v0, Lgm;->be:Lgm;

    .line 197
    invoke-static {}, Ljl;->c()V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 6

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 201
    iput v0, p0, Lgm;->bg:I

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lgm;->a:I

    .line 205
    iput-boolean v0, p0, Lgm;->bi:Z

    .line 206
    iput-boolean v0, p0, Lgm;->bj:Z

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lgm;->bk:Lgm;

    add-int/lit16 v0, p1, 0x100

    .line 213
    iput v0, p0, Lgm;->bf:I

    .line 214
    sget-object v1, Lgm;->c:[Lgm;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2e

    .line 215
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CONFLICT @ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    :cond_2e
    sget-object p1, Lgm;->c:[Lgm;

    aput-object p0, p1, v0

    return-void
.end method


# virtual methods
.method public a(Liz;Luu;)F
    .registers 3

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public a(I)I
    .registers 2

    .line 237
    iget p1, p0, Lgm;->bh:I

    return p1
.end method

.method public a(Lsn;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(II)Lgm;
    .registers 3

    mul-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 232
    iput p1, p0, Lgm;->bh:I

    return-object p0
.end method

.method public a(Lgm;)Lgm;
    .registers 4

    .line 363
    iget v0, p0, Lgm;->bg:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 366
    iput-object p1, p0, Lgm;->bk:Lgm;

    return-object p0

    .line 364
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max stack size must be 1 for items with crafting results"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lgm;
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgm;->bl:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Z)Lgm;
    .registers 2

    .line 273
    iput-boolean p1, p0, Lgm;->bj:Z

    return-object p0
.end method

.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 4

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lgm;->bl:Ljava/lang/String;

    return-object v0
.end method

.method public a(Liz;)Ljava/lang/String;
    .registers 2

    .line 359
    iget-object p1, p0, Lgm;->bl:Ljava/lang/String;

    return-object p1
.end method

.method public a(Liz;Lfd;Lsn;IZ)V
    .registers 6

    return-void
.end method

.method public a(Liz;Lls;)V
    .registers 3

    return-void
.end method

.method public a(Liz;IIIILls;)Z
    .registers 7

    const/4 p1, 0x0

    return p1
.end method

.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 8

    const/4 p1, 0x0

    return p1
.end method

.method public a(Liz;Lls;Lls;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public a(Luu;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Liz;)I
    .registers 2

    .line 241
    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Lgm;->a(I)I

    move-result p1

    return p1
.end method

.method public b(Liz;Lfd;Lgs;)V
    .registers 4

    return-void
.end method

.method public b()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lgm;->bi:Z

    return v0
.end method

.method public c(I)Lgm;
    .registers 2

    .line 222
    iput p1, p0, Lgm;->bh:I

    return-object p0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 2

    .line 261
    iget v0, p0, Lgm;->bg:I

    return v0
.end method

.method public d(I)Lgm;
    .registers 2

    .line 227
    iput p1, p0, Lgm;->bg:I

    return-object p0
.end method

.method protected e(I)Lgm;
    .registers 2

    .line 282
    iput p1, p0, Lgm;->a:I

    return-object p0
.end method

.method public e()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lgm;->bj:Z

    return v0
.end method

.method public f()I
    .registers 2

    .line 278
    iget v0, p0, Lgm;->a:I

    return v0
.end method

.method public f(I)I
    .registers 2

    const p1, 0xffffff

    return p1
.end method

.method public g()Z
    .registers 2

    .line 287
    iget v0, p0, Lgm;->a:I

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lgm;->bj:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public h()Lgm;
    .registers 2

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lgm;->bi:Z

    return-object p0
.end method

.method public i()Lgm;
    .registers 2

    .line 371
    iget-object v0, p0, Lgm;->bk:Lgm;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .line 375
    iget-object v0, p0, Lgm;->bk:Lgm;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgm;->a()Ljava/lang/String;

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
