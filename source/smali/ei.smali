###### Class defpackage.ei (ei)
.class public Lei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:Lnu;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lei;->a:J

    .line 53
    iput-object p3, p0, Lei;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lei;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-wide v0, p1, Lei;->a:J

    iput-wide v0, p0, Lei;->a:J

    .line 58
    iget v0, p1, Lei;->b:I

    iput v0, p0, Lei;->b:I

    .line 59
    iget v0, p1, Lei;->c:I

    iput v0, p0, Lei;->c:I

    .line 60
    iget v0, p1, Lei;->d:I

    iput v0, p0, Lei;->d:I

    .line 61
    iget-wide v0, p1, Lei;->e:J

    iput-wide v0, p0, Lei;->e:J

    .line 62
    iget-wide v0, p1, Lei;->f:J

    iput-wide v0, p0, Lei;->f:J

    .line 63
    iget-wide v0, p1, Lei;->g:J

    iput-wide v0, p0, Lei;->g:J

    .line 64
    iget-object v0, p1, Lei;->h:Lnu;

    iput-object v0, p0, Lei;->h:Lnu;

    .line 65
    iget v0, p1, Lei;->i:I

    iput v0, p0, Lei;->i:I

    .line 66
    iget-object v0, p1, Lei;->j:Ljava/lang/String;

    iput-object v0, p0, Lei;->j:Ljava/lang/String;

    .line 67
    iget v0, p1, Lei;->k:I

    iput v0, p0, Lei;->k:I

    .line 68
    iget v0, p1, Lei;->m:I

    iput v0, p0, Lei;->m:I

    .line 69
    iget-boolean v0, p1, Lei;->l:Z

    iput-boolean v0, p0, Lei;->l:Z

    .line 70
    iget v0, p1, Lei;->o:I

    iput v0, p0, Lei;->o:I

    .line 71
    iget-boolean p1, p1, Lei;->n:Z

    iput-boolean p1, p0, Lei;->n:Z

    return-void
.end method

.method public constructor <init>(Lnu;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RandomSeed"

    .line 31
    invoke-virtual {p1, v0}, Lnu;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lei;->a:J

    const-string v0, "SpawnX"

    .line 32
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lei;->b:I

    const-string v0, "SpawnY"

    .line 33
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lei;->c:I

    const-string v0, "SpawnZ"

    .line 34
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lei;->d:I

    const-string v0, "Time"

    .line 35
    invoke-virtual {p1, v0}, Lnu;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lei;->e:J

    const-string v0, "LastPlayed"

    .line 36
    invoke-virtual {p1, v0}, Lnu;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lei;->f:J

    const-string v0, "SizeOnDisk"

    .line 37
    invoke-virtual {p1, v0}, Lnu;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lei;->g:J

    const-string v0, "LevelName"

    .line 38
    invoke-virtual {p1, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lei;->j:Ljava/lang/String;

    const-string v0, "version"

    .line 39
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lei;->k:I

    const-string v0, "rainTime"

    .line 40
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lei;->m:I

    const-string v0, "raining"

    .line 41
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lei;->l:Z

    const-string v0, "thunderTime"

    .line 42
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lei;->o:I

    const-string v0, "thundering"

    .line 43
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lei;->n:Z

    const-string v0, "Player"

    .line 45
    invoke-virtual {p1, v0}, Lnu;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 46
    invoke-virtual {p1, v0}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p1

    iput-object p1, p0, Lei;->h:Lnu;

    const-string v0, "Dimension"

    .line 47
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lei;->i:I

    :cond_81
    return-void
.end method

.method private a(Lnu;Lnu;)V
    .registers 6

    const-string v0, "RandomSeed"

    .line 99
    iget-wide v1, p0, Lei;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lnu;->a(Ljava/lang/String;J)V

    const-string v0, "SpawnX"

    .line 100
    iget v1, p0, Lei;->b:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "SpawnY"

    .line 101
    iget v1, p0, Lei;->c:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "SpawnZ"

    .line 102
    iget v1, p0, Lei;->d:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "Time"

    .line 103
    iget-wide v1, p0, Lei;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lnu;->a(Ljava/lang/String;J)V

    const-string v0, "SizeOnDisk"

    .line 104
    iget-wide v1, p0, Lei;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lnu;->a(Ljava/lang/String;J)V

    const-string v0, "LastPlayed"

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lnu;->a(Ljava/lang/String;J)V

    const-string v0, "LevelName"

    .line 106
    iget-object v1, p0, Lei;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    .line 107
    iget v1, p0, Lei;->k:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "rainTime"

    .line 108
    iget v1, p0, Lei;->m:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "raining"

    .line 109
    iget-boolean v1, p0, Lei;->l:Z

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    const-string v0, "thunderTime"

    .line 110
    iget v1, p0, Lei;->o:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "thundering"

    .line 111
    iget-boolean v1, p0, Lei;->n:Z

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    if-eqz p2, :cond_64

    const-string v0, "Player"

    .line 114
    invoke-virtual {p1, v0, p2}, Lnu;->a(Ljava/lang/String;Lnu;)V

    :cond_64
    return-void
.end method


# virtual methods
.method public a()Lnu;
    .registers 3

    .line 75
    new-instance v0, Lnu;

    invoke-direct {v0}, Lnu;-><init>()V

    .line 77
    iget-object v1, p0, Lei;->h:Lnu;

    invoke-direct {p0, v0, v1}, Lei;->a(Lnu;Lnu;)V

    return-object v0
.end method

.method public a(Ljava/util/List;)Lnu;
    .registers 5

    .line 83
    new-instance v0, Lnu;

    invoke-direct {v0}, Lnu;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_14

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs;

    goto :goto_15

    :cond_14
    move-object p1, v2

    :goto_15
    if-eqz p1, :cond_1f

    .line 90
    new-instance v2, Lnu;

    invoke-direct {v2}, Lnu;-><init>()V

    .line 91
    invoke-virtual {p1, v2}, Lgs;->d(Lnu;)V

    .line 93
    :cond_1f
    invoke-direct {p0, v0, v2}, Lei;->a(Lnu;Lnu;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 155
    iput p1, p0, Lei;->b:I

    return-void
.end method

.method public a(III)V
    .registers 4

    .line 183
    iput p1, p0, Lei;->b:I

    .line 184
    iput p2, p0, Lei;->c:I

    .line 185
    iput p3, p0, Lei;->d:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 167
    iput-wide p1, p0, Lei;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lei;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lnu;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lei;->h:Lnu;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lei;->n:Z

    return-void
.end method

.method public b()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lei;->a:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    .line 159
    iput p1, p0, Lei;->c:I

    return-void
.end method

.method public b(J)V
    .registers 3

    .line 171
    iput-wide p1, p0, Lei;->g:J

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lei;->l:Z

    return-void
.end method

.method public c()I
    .registers 2

    .line 123
    iget v0, p0, Lei;->b:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 163
    iput p1, p0, Lei;->d:I

    return-void
.end method

.method public d()I
    .registers 2

    .line 127
    iget v0, p0, Lei;->c:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .line 201
    iput p1, p0, Lei;->k:I

    return-void
.end method

.method public e()I
    .registers 2

    .line 131
    iget v0, p0, Lei;->d:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .line 221
    iput p1, p0, Lei;->o:I

    return-void
.end method

.method public f()J
    .registers 3

    .line 135
    iget-wide v0, p0, Lei;->e:J

    return-wide v0
.end method

.method public f(I)V
    .registers 2

    .line 237
    iput p1, p0, Lei;->m:I

    return-void
.end method

.method public g()J
    .registers 3

    .line 139
    iget-wide v0, p0, Lei;->g:J

    return-wide v0
.end method

.method public h()Lnu;
    .registers 2

    .line 143
    iget-object v0, p0, Lei;->h:Lnu;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 147
    iget v0, p0, Lei;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lei;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 197
    iget v0, p0, Lei;->k:I

    return v0
.end method

.method public l()J
    .registers 3

    .line 205
    iget-wide v0, p0, Lei;->f:J

    return-wide v0
.end method

.method public m()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lei;->n:Z

    return v0
.end method

.method public n()I
    .registers 2

    .line 217
    iget v0, p0, Lei;->o:I

    return v0
.end method

.method public o()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Lei;->l:Z

    return v0
.end method

.method public p()I
    .registers 2

    .line 233
    iget v0, p0, Lei;->m:I

    return v0
.end method
