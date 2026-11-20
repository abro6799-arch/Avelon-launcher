###### Class defpackage.kd (kd)
.class public Lkd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkd;

.field public static final b:Lkd;

.field public static final c:Lkd;

.field public static final d:Lkd;

.field public static final e:Lkd;

.field public static final f:Lkd;

.field public static final g:Lkd;

.field public static final h:Lkd;

.field public static final i:Lkd;

.field public static final j:Lkd;

.field public static final k:Lkd;

.field public static final l:Lkd;

.field public static final m:Lkd;

.field private static x:[Lkd;


# instance fields
.field public n:Ljava/lang/String;

.field public o:I

.field public p:B

.field public q:B

.field public r:I

.field protected s:Ljava/util/List;

.field protected t:Ljava/util/List;

.field protected u:Ljava/util/List;

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lyj;

    invoke-direct {v0}, Lyj;-><init>()V

    const v1, 0x8fa36

    invoke-virtual {v0, v1}, Lyj;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Rainforest"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    const v1, 0x1ff458

    invoke-virtual {v0, v1}, Lkd;->a(I)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->a:Lkd;

    .line 27
    new-instance v0, Ltf;

    invoke-direct {v0}, Ltf;-><init>()V

    const v1, 0x7f9b2

    invoke-virtual {v0, v1}, Ltf;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Swampland"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    const v1, 0x8baf48

    invoke-virtual {v0, v1}, Lkd;->a(I)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->b:Lkd;

    .line 28
    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    const v1, 0x9be023

    invoke-virtual {v0, v1}, Lkd;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Seasonal Forest"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->c:Lkd;

    .line 29
    new-instance v0, Lrb;

    invoke-direct {v0}, Lrb;-><init>()V

    const v1, 0x56621

    invoke-virtual {v0, v1}, Lrb;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Forest"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    const v1, 0x4eba31

    invoke-virtual {v0, v1}, Lkd;->a(I)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->d:Lkd;

    .line 30
    new-instance v0, Lfs;

    invoke-direct {v0}, Lfs;-><init>()V

    const v1, 0xd9e023    # 2.0008708E-38f

    invoke-virtual {v0, v1}, Lfs;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Savanna"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->e:Lkd;

    .line 31
    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    const v1, 0xa1ad20

    invoke-virtual {v0, v1}, Lkd;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Shrubland"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->f:Lkd;

    .line 32
    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    const v1, 0x2eb153

    invoke-virtual {v0, v1}, Lg;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Taiga"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    invoke-virtual {v0}, Lkd;->b()Lkd;

    move-result-object v0

    const v1, 0x7bb731

    invoke-virtual {v0, v1}, Lkd;->a(I)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->g:Lkd;

    .line 33
    new-instance v0, Lfs;

    invoke-direct {v0}, Lfs;-><init>()V

    const v1, 0xfa9418    # 2.3012E-38f

    invoke-virtual {v0, v1}, Lfs;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Desert"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    invoke-direct {v0}, Lkd;->e()Lkd;

    move-result-object v0

    sput-object v0, Lkd;->h:Lkd;

    .line 34
    new-instance v0, Lfs;

    invoke-direct {v0}, Lfs;-><init>()V

    const v1, 0xffd910

    invoke-virtual {v0, v1}, Lfs;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Plains"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->i:Lkd;

    .line 35
    new-instance v0, Lfs;

    invoke-direct {v0}, Lfs;-><init>()V

    const v1, 0xffed93

    invoke-virtual {v0, v1}, Lfs;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Ice Desert"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    invoke-virtual {v0}, Lkd;->b()Lkd;

    move-result-object v0

    invoke-direct {v0}, Lkd;->e()Lkd;

    move-result-object v0

    const v1, 0xc4d339

    invoke-virtual {v0, v1}, Lkd;->a(I)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->j:Lkd;

    .line 36
    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    const v2, 0x57ebf9

    invoke-virtual {v0, v2}, Lkd;->b(I)Lkd;

    move-result-object v0

    const-string v2, "Tundra"

    invoke-virtual {v0, v2}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    invoke-virtual {v0}, Lkd;->b()Lkd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkd;->a(I)Lkd;

    move-result-object v0

    sput-object v0, Lkd;->k:Lkd;

    .line 38
    new-instance v0, Lt;

    invoke-direct {v0}, Lt;-><init>()V

    const/high16 v1, 0xff0000

    invoke-virtual {v0, v1}, Lt;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Hell"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    invoke-direct {v0}, Lkd;->e()Lkd;

    move-result-object v0

    sput-object v0, Lkd;->l:Lkd;

    .line 39
    new-instance v0, Lry;

    invoke-direct {v0}, Lry;-><init>()V

    const v1, 0x8080ff

    invoke-virtual {v0, v1}, Lry;->b(I)Lkd;

    move-result-object v0

    const-string v1, "Sky"

    invoke-virtual {v0, v1}, Lkd;->a(Ljava/lang/String;)Lkd;

    move-result-object v0

    invoke-direct {v0}, Lkd;->e()Lkd;

    move-result-object v0

    sput-object v0, Lkd;->m:Lkd;

    const/16 v0, 0x1000

    new-array v0, v0, [Lkd;

    .line 53
    sput-object v0, Lkd;->x:[Lkd;

    .line 90
    invoke-static {}, Lkd;->a()V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Luu;->v:Lwp;

    iget v0, v0, Lwp;->bn:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lkd;->p:B

    .line 44
    sget-object v0, Luu;->w:Luu;

    iget v0, v0, Luu;->bn:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lkd;->q:B

    const v0, 0x4ee031

    .line 45
    iput v0, p0, Lkd;->r:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd;->s:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd;->t:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd;->u:Ljava/util/List;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lkd;->w:Z

    .line 57
    iget-object v0, p0, Lkd;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lcn;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lkd;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Luz;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lkd;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lfr;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lkd;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lgb;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lkd;->s:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Luw;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lkd;->t:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Ldl;

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lkd;->t:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lwh;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lkd;->t:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lww;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lkd;->t:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lbx;

    const/16 v4, 0x8

    invoke-direct {v1, v2, v4}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lkd;->u:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lxt;

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(DD)Lkd;
    .registers 6

    const-wide v0, 0x404f800000000000L    # 63.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    mul-double/2addr p2, v0

    double-to-int p1, p2

    .line 123
    sget-object p2, Lkd;->x:[Lkd;

    mul-int/lit8 p1, p1, 0x40

    add-int/2addr p0, p1

    aget-object p0, p2, p0

    return-object p0
.end method

.method public static a(FF)Lkd;
    .registers 4

    mul-float/2addr p1, p0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    .line 129
    sget-object p0, Lkd;->k:Lkd;

    return-object p0

    :cond_b
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_28

    cmpg-float p1, p0, v1

    if-gez p1, :cond_1b

    .line 132
    sget-object p0, Lkd;->k:Lkd;

    return-object p0

    :cond_1b
    const p1, 0x3f733333    # 0.95f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_25

    .line 134
    sget-object p0, Lkd;->e:Lkd;

    return-object p0

    .line 136
    :cond_25
    sget-object p0, Lkd;->h:Lkd;

    return-object p0

    :cond_28
    cmpl-float v0, p1, v1

    if-lez v0, :cond_36

    const v0, 0x3f333333    # 0.7f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_36

    .line 139
    sget-object p0, Lkd;->b:Lkd;

    return-object p0

    :cond_36
    cmpg-float v0, p0, v1

    if-gez v0, :cond_3d

    .line 141
    sget-object p0, Lkd;->g:Lkd;

    return-object p0

    :cond_3d
    const v0, 0x3f7851ec    # 0.97f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_51

    const p0, 0x3eb33333    # 0.35f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4e

    .line 144
    sget-object p0, Lkd;->f:Lkd;

    return-object p0

    .line 146
    :cond_4e
    sget-object p0, Lkd;->d:Lkd;

    return-object p0

    :cond_51
    const p0, 0x3ee66666    # 0.45f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_5b

    .line 150
    sget-object p0, Lkd;->i:Lkd;

    return-object p0

    :cond_5b
    const p0, 0x3f666666    # 0.9f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_65

    .line 152
    sget-object p0, Lkd;->c:Lkd;

    return-object p0

    .line 154
    :cond_65
    sget-object p0, Lkd;->a:Lkd;

    return-object p0
.end method

.method public static a()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x40

    if-ge v1, v2, :cond_20

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_1d

    .line 81
    sget-object v4, Lkd;->x:[Lkd;

    mul-int/lit8 v5, v3, 0x40

    add-int/2addr v5, v1

    int-to-float v6, v1

    const/high16 v7, 0x427c0000    # 63.0f

    div-float/2addr v6, v7

    int-to-float v8, v3

    div-float/2addr v8, v7

    invoke-static {v6, v8}, Lkd;->a(FF)Lkd;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    :cond_20
    sget-object v0, Lkd;->h:Lkd;

    sget-object v1, Luu;->F:Luu;

    iget v1, v1, Luu;->bn:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lkd;->q:B

    iput-byte v1, v0, Lkd;->p:B

    .line 86
    sget-object v0, Lkd;->j:Lkd;

    sget-object v1, Luu;->F:Luu;

    iget v1, v1, Luu;->bn:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lkd;->q:B

    iput-byte v1, v0, Lkd;->p:B

    return-void
.end method

.method private e()Lkd;
    .registers 2

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lkd;->w:Z

    return-object p0
.end method


# virtual methods
.method public a(F)I
    .registers 5

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_a

    move p1, v0

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_11

    move p1, v0

    :cond_11
    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, p1

    const v2, 0x3f1f49f5

    sub-float/2addr v2, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    .line 174
    invoke-static {v2, p1, v0}, Lmcshim/awt/Color;->getHSBColor(FFF)Lmcshim/awt/Color;

    move-result-object p1

    invoke-virtual {p1}, Lmcshim/awt/Color;->getRGB()I

    move-result p1

    return p1
.end method

.method public a(Llk;)Ljava/util/List;
    .registers 3

    .line 178
    sget-object v0, Llk;->a:Llk;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lkd;->s:Ljava/util/List;

    return-object p1

    .line 179
    :cond_7
    sget-object v0, Llk;->b:Llk;

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lkd;->t:Ljava/util/List;

    return-object p1

    .line 180
    :cond_e
    sget-object v0, Llk;->c:Llk;

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lkd;->u:Ljava/util/List;

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(I)Lkd;
    .registers 2

    .line 111
    iput p1, p0, Lkd;->r:I

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Lkd;
    .registers 2

    .line 106
    iput-object p1, p0, Lkd;->n:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Random;)Lpg;
    .registers 3

    const/16 v0, 0xa

    .line 94
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_e

    .line 95
    new-instance p1, Lih;

    invoke-direct {p1}, Lih;-><init>()V

    return-object p1

    .line 97
    :cond_e
    new-instance p1, Lyh;

    invoke-direct {p1}, Lyh;-><init>()V

    return-object p1
.end method

.method protected b()Lkd;
    .registers 2

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lkd;->v:Z

    return-object p0
.end method

.method protected b(I)Lkd;
    .registers 2

    .line 116
    iput p1, p0, Lkd;->o:I

    return-object p0
.end method

.method public c()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Lkd;->v:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lkd;->v:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 200
    :cond_6
    iget-boolean v0, p0, Lkd;->w:Z

    return v0
.end method
