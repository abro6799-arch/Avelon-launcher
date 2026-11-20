###### Class defpackage.mg (mg)
.class Lmg;
.super Llg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lrq;


# direct methods
.method public constructor <init>(Lrq;)V
    .registers 9

    .line 187
    iput-object p1, p0, Lmg;->a:Lrq;

    .line 188
    iget-object v1, p1, Lrq;->b:Lnet/minecraft/client/Minecraft;

    iget v2, p1, Lrq;->c:I

    iget v3, p1, Lrq;->d:I

    const/16 v4, 0x20

    iget p1, p1, Lrq;->d:I

    add-int/lit8 v5, p1, -0x40

    const/16 v6, 0x24

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Llg;-><init>(Lnet/minecraft/client/Minecraft;IIIII)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 194
    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-static {v0}, Lrq;->a(Lrq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a(IIIILnw;)V
    .registers 16

    .line 227
    iget-object p4, p0, Lmg;->a:Lrq;

    invoke-static {p4}, Lrq;->a(Lrq;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvb;

    .line 229
    invoke-virtual {p4}, Lvb;->b()Ljava/lang/String;

    move-result-object p5

    const-string v0, " "

    if-eqz p5, :cond_1a

    .line 230
    invoke-static {p5}, Lin;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 231
    :cond_1a
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmg;->a:Lrq;

    invoke-static {v1}, Lrq;->f(Lrq;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_34
    move-object v3, p5

    .line 234
    invoke-virtual {p4}, Lvb;->a()Ljava/lang/String;

    move-result-object p1

    .line 235
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmg;->a:Lrq;

    invoke-static {p1}, Lrq;->g(Lrq;)Ljava/text/DateFormat;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p4}, Lvb;->e()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p4}, Lvb;->c()J

    move-result-wide v1

    .line 238
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    const-wide/16 v6, 0x64

    mul-long/2addr v1, v6

    div-long/2addr v1, v4

    long-to-float p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " MB)"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p4}, Lvb;->d()Z

    move-result p4

    if-eqz p4, :cond_a4

    .line 242
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lmg;->a:Lrq;

    invoke-static {p5}, Lrq;->h(Lrq;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_a6

    :cond_a4
    const-string p4, ""

    .line 245
    :goto_a6
    iget-object v1, p0, Lmg;->a:Lrq;

    iget-object v2, v1, Lrq;->g:Lsj;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v5, p3, 0x1

    const v6, 0xffffff

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lrq;->b(Lsj;Ljava/lang/String;III)V

    .line 246
    iget-object v4, p0, Lmg;->a:Lrq;

    iget-object v5, v4, Lrq;->g:Lsj;

    add-int/lit8 p3, p3, 0xc

    const v9, 0x808080

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lrq;->b(Lsj;Ljava/lang/String;III)V

    .line 247
    iget-object v4, p0, Lmg;->a:Lrq;

    iget-object v5, v4, Lrq;->g:Lsj;

    add-int/lit8 v8, p3, 0xa

    move-object v6, p4

    invoke-virtual/range {v4 .. v9}, Lrq;->b(Lsj;Ljava/lang/String;III)V

    return-void
.end method

.method protected a(IZ)V
    .registers 5

    .line 199
    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-static {v0, p1}, Lrq;->a(Lrq;I)I

    .line 200
    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-static {v0}, Lrq;->b(Lrq;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-static {v0}, Lrq;->b(Lrq;)I

    move-result v0

    invoke-virtual {p0}, Lmg;->a()I

    move-result v1

    if-ge v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 201
    :goto_1c
    iget-object v1, p0, Lmg;->a:Lrq;

    invoke-static {v1}, Lrq;->c(Lrq;)Lke;

    move-result-object v1

    iput-boolean v0, v1, Lke;->g:Z

    .line 202
    iget-object v1, p0, Lmg;->a:Lrq;

    invoke-static {v1}, Lrq;->d(Lrq;)Lke;

    move-result-object v1

    iput-boolean v0, v1, Lke;->g:Z

    .line 203
    iget-object v1, p0, Lmg;->a:Lrq;

    invoke-static {v1}, Lrq;->e(Lrq;)Lke;

    move-result-object v1

    iput-boolean v0, v1, Lke;->g:Z

    if-eqz p2, :cond_3d

    if-eqz v0, :cond_3d

    .line 206
    iget-object p2, p0, Lmg;->a:Lrq;

    invoke-virtual {p2, p1}, Lrq;->e(I)V

    :cond_3d
    return-void
.end method

.method protected b()I
    .registers 2

    .line 217
    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-static {v0}, Lrq;->a(Lrq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x24

    return v0
.end method

.method protected c()V
    .registers 2

    .line 222
    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-virtual {v0}, Lrq;->i()V

    return-void
.end method

.method protected c_(I)Z
    .registers 3

    .line 212
    iget-object v0, p0, Lmg;->a:Lrq;

    invoke-static {v0}, Lrq;->b(Lrq;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
