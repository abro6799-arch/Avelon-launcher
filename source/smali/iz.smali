###### Class defpackage.iz (iz)
.class public final Liz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Liz;->c:I

    .line 51
    iput p2, p0, Liz;->a:I

    .line 52
    iput p3, p0, Liz;->d:I

    return-void
.end method

.method public constructor <init>(Lgm;)V
    .registers 4

    .line 38
    iget p1, p1, Lgm;->bf:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Liz;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Lgm;I)V
    .registers 4

    .line 42
    iget p1, p1, Lgm;->bf:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Liz;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Lgm;II)V
    .registers 4

    .line 46
    iget p1, p1, Lgm;->bf:I

    invoke-direct {p0, p1, p2, p3}, Liz;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Lnu;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Liz;->a:I

    .line 56
    invoke-virtual {p0, p1}, Liz;->b(Lnu;)V

    return-void
.end method

.method public constructor <init>(Luu;)V
    .registers 3

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Liz;-><init>(Luu;I)V

    return-void
.end method

.method public constructor <init>(Luu;I)V
    .registers 4

    .line 30
    iget p1, p1, Luu;->bn:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Liz;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Luu;II)V
    .registers 4

    .line 34
    iget p1, p1, Luu;->bn:I

    invoke-direct {p0, p1, p2, p3}, Liz;-><init>(III)V

    return-void
.end method

.method public static a(Liz;Liz;)Z
    .registers 2

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_10

    if-nez p1, :cond_b

    goto :goto_10

    .line 204
    :cond_b
    invoke-direct {p0, p1}, Liz;->d(Liz;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Liz;)Liz;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 234
    :cond_4
    invoke-virtual {p0}, Liz;->k()Liz;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private d(Liz;)Z
    .registers 5

    .line 208
    iget v0, p0, Liz;->a:I

    iget v1, p1, Liz;->a:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 209
    :cond_8
    iget v0, p0, Liz;->c:I

    iget v1, p1, Liz;->c:I

    if-eq v0, v1, :cond_f

    return v2

    .line 210
    :cond_f
    iget v0, p0, Liz;->d:I

    iget p1, p1, Liz;->d:I

    if-eq v0, p1, :cond_16

    return v2

    :cond_16
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Luu;)F
    .registers 3

    .line 84
    invoke-virtual {p0}, Liz;->a()Lgm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lgm;->a(Liz;Luu;)F

    move-result p1

    return p1
.end method

.method public a(Lsn;)I
    .registers 4

    .line 177
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lgm;->a(Lsn;)I

    move-result p1

    return p1
.end method

.method public a()Lgm;
    .registers 3

    .line 70
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)Liz;
    .registers 5

    .line 60
    iget v0, p0, Liz;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Liz;->a:I

    .line 61
    new-instance v0, Liz;

    iget v1, p0, Liz;->c:I

    iget v2, p0, Liz;->d:I

    invoke-direct {v0, v1, p1, v2}, Liz;-><init>(III)V

    return-object v0
.end method

.method public a(Lfd;Lgs;)Liz;
    .registers 4

    .line 88
    invoke-virtual {p0}, Liz;->a()Lgm;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lgm;->a(Liz;Lfd;Lgs;)Liz;

    move-result-object p1

    return-object p1
.end method

.method public a(Lnu;)Lnu;
    .registers 4

    .line 92
    iget v0, p0, Liz;->c:I

    int-to-short v0, v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 93
    iget v0, p0, Liz;->a:I

    int-to-byte v0, v0

    const-string v1, "Count"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 94
    iget v0, p0, Liz;->d:I

    int-to-short v0, v0

    const-string v1, "Damage"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    return-object p1
.end method

.method public a(IIIILgs;)V
    .registers 15

    .line 170
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v2, v0, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lgm;->a(Liz;IIIILls;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 172
    sget-object p1, Ljl;->E:[Lvr;

    iget p2, p0, Liz;->c:I

    aget-object p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p5, p1, p2}, Lgs;->a(Lvr;I)V

    :cond_1c
    return-void
.end method

.method public a(ILsn;)V
    .registers 5

    .line 147
    invoke-virtual {p0}, Liz;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 151
    :cond_7
    iget v0, p0, Liz;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Liz;->d:I

    .line 152
    invoke-virtual {p0}, Liz;->j()I

    move-result p1

    if-le v0, p1, :cond_2e

    .line 153
    instance-of p1, p2, Lgs;

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    .line 154
    check-cast p2, Lgs;

    sget-object p1, Ljl;->F:[Lvr;

    iget v1, p0, Liz;->c:I

    aget-object p1, p1, v1

    invoke-virtual {p2, p1, v0}, Lgs;->a(Lvr;I)V

    .line 156
    :cond_22
    iget p1, p0, Liz;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Liz;->a:I

    const/4 p2, 0x0

    if-gez p1, :cond_2c

    .line 157
    iput p2, p0, Liz;->a:I

    .line 158
    :cond_2c
    iput p2, p0, Liz;->d:I

    :cond_2e
    return-void
.end method

.method public a(Lfd;Lsn;IZ)V
    .registers 13

    .line 242
    iget v0, p0, Liz;->b:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liz;->b:I

    .line 243
    :cond_8
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v2, v0, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lgm;->a(Liz;Lfd;Lsn;IZ)V

    return-void
.end method

.method public a(Lgs;)V
    .registers 2

    return-void
.end method

.method public a(Lls;)V
    .registers 4

    .line 194
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, p1}, Lgm;->a(Liz;Lls;)V

    return-void
.end method

.method public a(Lls;Lgs;)V
    .registers 5

    .line 163
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, p1, p2}, Lgm;->a(Liz;Lls;Lls;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 165
    sget-object p1, Ljl;->E:[Lvr;

    iget v0, p0, Liz;->c:I

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lgs;->a(Lvr;I)V

    :cond_16
    return-void
.end method

.method public a(Lgs;Lfd;IIII)Z
    .registers 15

    .line 78
    invoke-virtual {p0}, Liz;->a()Lgm;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lgm;->a(Liz;Lgs;Lfd;IIII)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 79
    sget-object p3, Ljl;->E:[Lvr;

    iget p4, p0, Liz;->c:I

    aget-object p3, p3, p4

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Lgs;->a(Lvr;I)V

    :cond_1b
    return p2
.end method

.method public a(Liz;)Z
    .registers 4

    .line 222
    iget v0, p0, Liz;->c:I

    iget v1, p1, Liz;->c:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Liz;->d:I

    iget p1, p1, Liz;->d:I

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public b()I
    .registers 2

    .line 74
    invoke-virtual {p0}, Liz;->a()Lgm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgm;->b(Liz;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 139
    iput p1, p0, Liz;->d:I

    return-void
.end method

.method public b(Lfd;Lgs;)V
    .registers 5

    .line 247
    sget-object v0, Ljl;->D:[Lvr;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    iget v1, p0, Liz;->a:I

    invoke-virtual {p2, v0, v1}, Lgs;->a(Lvr;I)V

    .line 248
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, p1, p2}, Lgm;->b(Liz;Lfd;Lgs;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 3

    const-string v0, "id"

    .line 99
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Liz;->c:I

    const-string v0, "Count"

    .line 100
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    iput v0, p0, Liz;->a:I

    const-string v0, "Damage"

    .line 101
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Liz;->d:I

    return-void
.end method

.method public b(Luu;)Z
    .registers 4

    .line 181
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lgm;->a(Luu;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .registers 2

    .line 105
    invoke-virtual {p0}, Liz;->a()Lgm;

    move-result-object v0

    invoke-virtual {v0}, Lgm;->d()I

    move-result v0

    return v0
.end method

.method public c(Liz;)Z
    .registers 4

    .line 252
    iget v0, p0, Liz;->c:I

    iget v1, p1, Liz;->c:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Liz;->a:I

    iget v1, p1, Liz;->a:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Liz;->d:I

    iget p1, p1, Liz;->d:I

    if-ne v0, p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public d()Z
    .registers 3

    .line 109
    invoke-virtual {p0}, Liz;->c()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    invoke-virtual {p0}, Liz;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Liz;->g()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1
.end method

.method public e()Z
    .registers 3

    .line 113
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgm;->f()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public f()Z
    .registers 3

    .line 123
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgm;->e()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .line 127
    invoke-virtual {p0}, Liz;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Liz;->d:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public h()I
    .registers 2

    .line 131
    iget v0, p0, Liz;->d:I

    return v0
.end method

.method public i()I
    .registers 2

    .line 135
    iget v0, p0, Liz;->d:I

    return v0
.end method

.method public j()I
    .registers 3

    .line 143
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgm;->f()I

    move-result v0

    return v0
.end method

.method public k()Liz;
    .registers 5

    .line 198
    new-instance v0, Liz;

    iget v1, p0, Liz;->c:I

    iget v2, p0, Liz;->a:I

    iget v3, p0, Liz;->d:I

    invoke-direct {v0, v1, v2, v3}, Liz;-><init>(III)V

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    .line 226
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p0, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lgm;->a(Liz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Liz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgm;->c:[Lgm;

    iget v2, p0, Liz;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Liz;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
