###### Class defpackage.ep (ep)
.class public Lep;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:Ljava/util/List;

.field public static f:Lny;

.field public static g:Lny;

.field public static h:Lny;

.field public static i:Lny;

.field public static j:Lny;

.field public static k:Lny;

.field public static l:Lny;

.field public static m:Lny;

.field public static n:Lny;

.field public static o:Lny;

.field public static p:Lny;

.field public static q:Lny;

.field public static r:Lny;

.field public static s:Lny;

.field public static t:Lny;

.field public static u:Lny;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lep;->e:Ljava/util/List;

    .line 20
    new-instance v0, Lny;

    const/4 v2, 0x0

    const-string v3, "openInventory"

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lgm;->aJ:Lgm;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->a()Lny;

    move-result-object v0

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->f:Lny;

    .line 21
    new-instance v0, Lny;

    const/4 v2, 0x1

    const-string v3, "mineWood"

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, Luu;->K:Luu;

    sget-object v7, Lep;->f:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILuu;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->g:Lny;

    .line 22
    new-instance v0, Lny;

    const/4 v2, 0x2

    const-string v3, "buildWorkBench"

    const/4 v4, 0x4

    const/4 v5, -0x1

    sget-object v6, Luu;->az:Luu;

    sget-object v7, Lep;->g:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILuu;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->h:Lny;

    .line 23
    new-instance v0, Lny;

    const/4 v2, 0x3

    const-string v3, "buildPickaxe"

    const/4 v5, 0x2

    sget-object v6, Lgm;->r:Lgm;

    sget-object v7, Lep;->h:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->i:Lny;

    .line 24
    new-instance v0, Lny;

    const/4 v2, 0x4

    const-string v3, "buildFurnace"

    const/4 v4, 0x3

    const/4 v5, 0x4

    sget-object v6, Luu;->aD:Luu;

    sget-object v7, Lep;->i:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILuu;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->j:Lny;

    .line 25
    new-instance v0, Lny;

    const/4 v2, 0x5

    const-string v3, "acquireIron"

    const/4 v4, 0x1

    sget-object v6, Lgm;->m:Lgm;

    sget-object v7, Lep;->j:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->k:Lny;

    .line 26
    new-instance v0, Lny;

    const/4 v2, 0x6

    const-string v3, "buildHoe"

    const/4 v4, 0x2

    const/4 v5, -0x3

    sget-object v6, Lgm;->L:Lgm;

    sget-object v7, Lep;->h:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->l:Lny;

    .line 27
    new-instance v0, Lny;

    const/4 v2, 0x7

    const-string v3, "makeBread"

    const/4 v4, -0x1

    sget-object v6, Lgm;->S:Lgm;

    sget-object v7, Lep;->l:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->m:Lny;

    .line 28
    new-instance v0, Lny;

    const/16 v2, 0x8

    const-string v3, "bakeCake"

    const/4 v4, 0x0

    const/4 v5, -0x5

    sget-object v6, Lgm;->aX:Lgm;

    sget-object v7, Lep;->l:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->n:Lny;

    .line 29
    new-instance v0, Lny;

    const/16 v2, 0x9

    const-string v3, "buildBetterPickaxe"

    const/4 v4, 0x6

    const/4 v5, 0x2

    sget-object v6, Lgm;->v:Lgm;

    sget-object v7, Lep;->i:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->o:Lny;

    .line 30
    new-instance v0, Lny;

    const/16 v2, 0xa

    const-string v3, "cookFish"

    const/4 v4, 0x2

    const/4 v5, 0x6

    sget-object v6, Lgm;->aT:Lgm;

    sget-object v7, Lep;->j:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->p:Lny;

    .line 31
    new-instance v0, Lny;

    const/16 v2, 0xb

    const-string v3, "onARail"

    const/4 v5, 0x3

    sget-object v6, Luu;->aH:Luu;

    sget-object v7, Lep;->k:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILuu;Lny;)V

    invoke-virtual {v0}, Lny;->b()Lny;

    move-result-object v0

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->q:Lny;

    .line 32
    new-instance v0, Lny;

    const/16 v2, 0xc

    const-string v3, "buildSword"

    const/4 v4, 0x6

    const/4 v5, -0x1

    sget-object v6, Lgm;->p:Lgm;

    sget-object v7, Lep;->h:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->r:Lny;

    .line 33
    new-instance v0, Lny;

    const/16 v2, 0xd

    const-string v3, "killEnemy"

    const/16 v4, 0x8

    sget-object v6, Lgm;->aV:Lgm;

    sget-object v7, Lep;->r:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->s:Lny;

    .line 34
    new-instance v0, Lny;

    const/16 v2, 0xe

    const-string v3, "killCow"

    const/4 v4, 0x7

    const/4 v5, -0x3

    sget-object v6, Lgm;->aD:Lgm;

    sget-object v7, Lep;->r:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->t:Lny;

    .line 35
    new-instance v0, Lny;

    const/16 v2, 0xf

    const-string v3, "flyPig"

    const/16 v4, 0x8

    const/4 v5, -0x4

    sget-object v6, Lgm;->ay:Lgm;

    sget-object v7, Lep;->t:Lny;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lny;-><init>(ILjava/lang/String;IILgm;Lny;)V

    invoke-virtual {v0}, Lny;->b()Lny;

    move-result-object v0

    invoke-virtual {v0}, Lny;->c()Lny;

    move-result-object v0

    sput-object v0, Lep;->u:Lny;

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lep;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " achievements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 0

    return-void
.end method
