###### Class defpackage.qz (qz)
.class public Lqz;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lqz;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 7

    .line 14
    iget-object v0, p3, Lgs;->c:Lix;

    sget-object v1, Lgm;->j:Lgm;

    iget v1, v1, Lgm;->bf:I

    invoke-virtual {v0, v1}, Lix;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 15
    sget-object v0, Lqz;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    const-string v2, "random.bow"

    invoke-virtual {p2, p3, v2, v1, v0}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 16
    iget-boolean v0, p2, Lfd;->B:Z

    if-nez v0, :cond_2f

    new-instance v0, Lsl;

    invoke-direct {v0, p2, p3}, Lsl;-><init>(Lfd;Lls;)V

    invoke-virtual {p2, v0}, Lfd;->b(Lsn;)Z

    :cond_2f
    return-object p1
.end method
