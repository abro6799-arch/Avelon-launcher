###### Class defpackage.mo (mo)
.class public Lmo;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/16 p1, 0x10

    .line 10
    iput p1, p0, Lmo;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 7

    .line 14
    iget v0, p1, Liz;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Liz;->a:I

    .line 15
    sget-object v0, Lmo;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    const-string v0, "random.bow"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, v0, v2, v1}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 16
    iget-boolean v0, p2, Lfd;->B:Z

    if-nez v0, :cond_28

    new-instance v0, Lvv;

    invoke-direct {v0, p2, p3}, Lvv;-><init>(Lfd;Lls;)V

    invoke-virtual {p2, v0}, Lfd;->b(Lsn;)Z

    :cond_28
    return-object p1
.end method
