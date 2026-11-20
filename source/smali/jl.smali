###### Class defpackage.jl (jl)
.class public Ljl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Lvr;

.field public static B:Lvr;

.field public static C:[Lvr;

.field public static D:[Lvr;

.field public static E:[Lvr;

.field public static F:[Lvr;

.field private static G:Z

.field private static H:Z

.field protected static a:Ljava/util/Map;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/List;

.field public static d:Ljava/util/List;

.field public static e:Ljava/util/List;

.field public static f:Lvr;

.field public static g:Lvr;

.field public static h:Lvr;

.field public static i:Lvr;

.field public static j:Lvr;

.field public static k:Lvr;

.field public static l:Lvr;

.field public static m:Lvr;

.field public static n:Lvr;

.field public static o:Lvr;

.field public static p:Lvr;

.field public static q:Lvr;

.field public static r:Lvr;

.field public static s:Lvr;

.field public static t:Lvr;

.field public static u:Lvr;

.field public static v:Lvr;

.field public static w:Lvr;

.field public static x:Lvr;

.field public static y:Lvr;

.field public static z:Lvr;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljl;->a:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljl;->b:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljl;->c:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljl;->d:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljl;->e:Ljava/util/List;

    .line 31
    new-instance v0, Lyd;

    const-string v1, "stat.startGame"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->f:Lvr;

    .line 32
    new-instance v0, Lyd;

    const-string v1, "stat.createWorld"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->g:Lvr;

    .line 33
    new-instance v0, Lyd;

    const-string v1, "stat.loadWorld"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->h:Lvr;

    .line 34
    new-instance v0, Lyd;

    const-string v1, "stat.joinMultiplayer"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->i:Lvr;

    .line 35
    new-instance v0, Lyd;

    const-string v1, "stat.leaveGame"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->j:Lvr;

    .line 37
    new-instance v0, Lyd;

    const-string v1, "stat.playOneMinute"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->j:Lwk;

    const/16 v3, 0x44c

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->k:Lvr;

    .line 39
    new-instance v0, Lyd;

    const-string v1, "stat.walkOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d0

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->l:Lvr;

    .line 40
    new-instance v0, Lyd;

    const-string v1, "stat.swimOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d1

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->m:Lvr;

    .line 41
    new-instance v0, Lyd;

    const-string v1, "stat.fallOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d2

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->n:Lvr;

    .line 42
    new-instance v0, Lyd;

    const-string v1, "stat.climbOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d3

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->o:Lvr;

    .line 43
    new-instance v0, Lyd;

    const-string v1, "stat.flyOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d4

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->p:Lvr;

    .line 44
    new-instance v0, Lyd;

    const-string v1, "stat.diveOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d5

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->q:Lvr;

    .line 45
    new-instance v0, Lyd;

    const-string v1, "stat.minecartOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d6

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->r:Lvr;

    .line 46
    new-instance v0, Lyd;

    const-string v1, "stat.boatOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d7

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->s:Lvr;

    .line 47
    new-instance v0, Lyd;

    const-string v1, "stat.pigOneCm"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvr;->k:Lwk;

    const/16 v3, 0x7d8

    invoke-direct {v0, v3, v1, v2}, Lyd;-><init>(ILjava/lang/String;Lwk;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->t:Lvr;

    .line 49
    new-instance v0, Lyd;

    const-string v1, "stat.jump"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->u:Lvr;

    .line 50
    new-instance v0, Lyd;

    const-string v1, "stat.drop"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7db

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->h()Lvr;

    move-result-object v0

    invoke-virtual {v0}, Lvr;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->v:Lvr;

    .line 52
    new-instance v0, Lyd;

    const-string v1, "stat.damageDealt"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->w:Lvr;

    .line 53
    new-instance v0, Lyd;

    const-string v1, "stat.damageTaken"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->x:Lvr;

    .line 54
    new-instance v0, Lyd;

    const-string v1, "stat.deaths"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e6

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->y:Lvr;

    .line 55
    new-instance v0, Lyd;

    const-string v1, "stat.mobKills"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e7

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->z:Lvr;

    .line 56
    new-instance v0, Lyd;

    const-string v1, "stat.playerKills"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e8

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->A:Lvr;

    .line 57
    new-instance v0, Lyd;

    const-string v1, "stat.fishCaught"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e9

    invoke-direct {v0, v2, v1}, Lyd;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lyd;->g()Lvr;

    move-result-object v0

    sput-object v0, Ljl;->B:Lvr;

    const-string v0, "stat.mineBlock"

    const/high16 v1, 0x1000000

    .line 59
    invoke-static {v0, v1}, Ljl;->a(Ljava/lang/String;I)[Lvr;

    move-result-object v0

    sput-object v0, Ljl;->C:[Lvr;

    .line 65
    invoke-static {}, Lep;->a()V

    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Ljl;->G:Z

    .line 85
    sput-boolean v0, Ljl;->H:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lvr;
    .registers 2

    .line 203
    sget-object v0, Ljl;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvr;

    return-object p0
.end method

.method public static a()V
    .registers 0

    return-void
.end method

.method private static a([Lvr;)V
    .registers 3

    .line 171
    sget-object v0, Luu;->C:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->B:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 172
    sget-object v0, Luu;->E:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->E:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 174
    sget-object v0, Luu;->bg:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->bb:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 175
    sget-object v0, Luu;->aD:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->aC:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 176
    sget-object v0, Luu;->aP:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->aO:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 178
    sget-object v0, Luu;->bj:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->bi:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 179
    sget-object v0, Luu;->aR:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->aQ:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 181
    sget-object v0, Luu;->ah:Lwb;

    iget v0, v0, Lwb;->bn:I

    sget-object v1, Luu;->ag:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 182
    sget-object v0, Luu;->ak:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->al:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 184
    sget-object v0, Luu;->v:Lwp;

    iget v0, v0, Lwp;->bn:I

    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    .line 185
    sget-object v0, Luu;->aB:Luu;

    iget v0, v0, Luu;->bn:I

    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-static {p0, v0, v1}, Ljl;->a([Lvr;II)V

    return-void
.end method

.method private static a([Lvr;II)V
    .registers 5

    .line 190
    aget-object v0, p0, p1

    if-eqz v0, :cond_b

    aget-object v1, p0, p2

    if-nez v1, :cond_b

    .line 192
    aput-object v0, p0, p2

    return-void

    .line 196
    :cond_b
    sget-object v1, Ljl;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Ljl;->e:Ljava/util/List;

    aget-object v1, p0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Ljl;->c:Ljava/util/List;

    aget-object v1, p0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    aget-object p2, p0, p2

    aput-object p2, p0, p1

    return-void
.end method

.method private static a(Ljava/lang/String;I)[Lvr;
    .registers 8

    const/16 v0, 0x100

    new-array v1, v0, [Lvr;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_3e

    .line 124
    sget-object v3, Luu;->m:[Luu;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3b

    sget-object v3, Luu;->m:[Luu;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Luu;->p()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 125
    sget-object v3, Luu;->m:[Luu;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Luu;->n()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Ldo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ltw;

    add-int v5, p1, v2

    invoke-direct {v4, v5, v3, v2}, Ltw;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4}, Ltw;->g()Lvr;

    move-result-object v3

    aput-object v3, v1, v2

    .line 127
    sget-object v4, Ljl;->e:Ljava/util/List;

    check-cast v3, Ltw;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 131
    :cond_3e
    invoke-static {v1}, Ljl;->a([Lvr;)V

    return-object v1
.end method

.method private static a([Lvr;Ljava/lang/String;III)[Lvr;
    .registers 8

    if-nez p0, :cond_6

    const/16 p0, 0x7d00

    new-array p0, p0, [Lvr;

    :cond_6
    :goto_6
    if-ge p3, p4, :cond_3c

    .line 140
    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, p3

    if-eqz v0, :cond_39

    .line 141
    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lgm;->k()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ldo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ltw;

    add-int v2, p2, p3

    invoke-direct {v1, v2, v0, p3}, Ltw;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1}, Ltw;->g()Lvr;

    move-result-object v0

    aput-object v0, p0, p3

    .line 144
    sget-object v0, Luu;->m:[Luu;

    array-length v0, v0

    if-lt p3, v0, :cond_39

    .line 145
    sget-object v0, Ljl;->d:Ljava/util/List;

    aget-object v1, p0, p3

    check-cast v1, Ltw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 150
    :cond_3c
    invoke-static {p0}, Ljl;->a([Lvr;)V

    return-object p0
.end method

.method public static b()V
    .registers 5

    .line 78
    sget-object v0, Ljl;->E:[Lvr;

    sget-object v1, Luu;->m:[Luu;

    array-length v1, v1

    const-string v2, "stat.useItem"

    const/high16 v3, 0x1020000

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljl;->a([Lvr;Ljava/lang/String;III)[Lvr;

    move-result-object v0

    sput-object v0, Ljl;->E:[Lvr;

    .line 79
    sget-object v0, Ljl;->F:[Lvr;

    sget-object v1, Luu;->m:[Luu;

    array-length v1, v1

    const-string v2, "stat.breakItem"

    const/high16 v3, 0x1030000

    invoke-static {v0, v2, v3, v4, v1}, Ljl;->b([Lvr;Ljava/lang/String;III)[Lvr;

    move-result-object v0

    sput-object v0, Ljl;->F:[Lvr;

    const/4 v0, 0x1

    .line 81
    sput-boolean v0, Ljl;->G:Z

    .line 82
    invoke-static {}, Ljl;->d()V

    return-void
.end method

.method private static b([Lvr;Ljava/lang/String;III)[Lvr;
    .registers 8

    if-nez p0, :cond_6

    const/16 p0, 0x7d00

    new-array p0, p0, [Lvr;

    :cond_6
    :goto_6
    if-ge p3, p4, :cond_38

    .line 159
    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, p3

    if-eqz v0, :cond_35

    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lgm;->g()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 160
    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lgm;->k()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ldo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ltw;

    add-int v2, p2, p3

    invoke-direct {v1, v2, v0, p3}, Ltw;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1}, Ltw;->g()Lvr;

    move-result-object v0

    aput-object v0, p0, p3

    :cond_35
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 165
    :cond_38
    invoke-static {p0}, Ljl;->a([Lvr;)V

    return-object p0
.end method

.method public static c()V
    .registers 5

    .line 88
    sget-object v0, Ljl;->E:[Lvr;

    sget-object v1, Luu;->m:[Luu;

    array-length v1, v1

    const-string v2, "stat.useItem"

    const/high16 v3, 0x1020000

    const/16 v4, 0x7d00

    invoke-static {v0, v2, v3, v1, v4}, Ljl;->a([Lvr;Ljava/lang/String;III)[Lvr;

    move-result-object v0

    sput-object v0, Ljl;->E:[Lvr;

    .line 89
    sget-object v0, Ljl;->F:[Lvr;

    sget-object v1, Luu;->m:[Luu;

    array-length v1, v1

    const-string v2, "stat.breakItem"

    const/high16 v3, 0x1030000

    invoke-static {v0, v2, v3, v1, v4}, Ljl;->b([Lvr;Ljava/lang/String;III)[Lvr;

    move-result-object v0

    sput-object v0, Ljl;->F:[Lvr;

    const/4 v0, 0x1

    .line 91
    sput-boolean v0, Ljl;->H:Z

    .line 92
    invoke-static {}, Ljl;->d()V

    return-void
.end method

.method public static d()V
    .registers 8

    .line 96
    sget-boolean v0, Ljl;->G:Z

    if-eqz v0, :cond_b3

    sget-boolean v0, Ljl;->H:Z

    if-nez v0, :cond_a

    goto/16 :goto_b3

    .line 101
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    invoke-static {}, Lhk;->a()Lhk;

    move-result-object v1

    invoke-virtual {v1}, Lhk;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldt;

    .line 104
    invoke-interface {v2}, Ldt;->b()Liz;

    move-result-object v2

    iget v2, v2, Liz;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 106
    :cond_35
    invoke-static {}, Ley;->a()Ley;

    move-result-object v1

    invoke-virtual {v1}, Ley;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liz;

    .line 107
    iget v2, v2, Liz;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_5b
    const/16 v1, 0x7d00

    new-array v1, v1, [Lvr;

    .line 110
    sput-object v1, Ljl;->D:[Lvr;

    .line 111
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_65
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 112
    sget-object v2, Lgm;->c:[Lgm;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_65

    .line 113
    sget-object v2, Lgm;->c:[Lgm;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lgm;->k()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "stat.craftItem"

    invoke-static {v3, v2}, Ldo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    sget-object v3, Ljl;->D:[Lvr;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ltw;

    const/high16 v6, 0x1010000

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, v7, v2, v1}, Ltw;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5}, Ltw;->g()Lvr;

    move-result-object v1

    aput-object v1, v3, v4

    goto :goto_65

    .line 118
    :cond_ae
    sget-object v0, Ljl;->D:[Lvr;

    invoke-static {v0}, Ljl;->a([Lvr;)V

    :cond_b3
    :goto_b3
    return-void
.end method
