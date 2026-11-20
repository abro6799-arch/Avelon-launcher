###### Class defpackage.nt (nt)
.class public Lnt;
.super Lgz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1}, Lgz;-><init>(Lfd;)V

    const-string p1, "/mob/zombie.png"

    .line 8
    iput-object p1, p0, Lnt;->O:Ljava/lang/String;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 9
    iput p1, p0, Lnt;->aB:F

    const/16 p1, 0x32

    .line 10
    iput p1, p0, Lnt;->c:I

    .line 11
    iget p1, p0, Lnt;->Y:I

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lnt;->Y:I

    .line 12
    iget p1, p0, Lnt;->bf:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lnt;->bf:F

    .line 13
    iget p1, p0, Lnt;->bg:F

    mul-float/2addr p1, v0

    iget v1, p0, Lnt;->bh:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lnt;->b(FF)V

    return-void
.end method


# virtual methods
.method protected a(III)F
    .registers 5

    .line 17
    iget-object v0, p0, Lnt;->aI:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->c(III)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    return p1
.end method
