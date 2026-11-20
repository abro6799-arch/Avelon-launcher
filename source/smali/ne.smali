###### Class defpackage.ne (ne)
.class public Lne;
.super Lgk;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lgk;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    const/16 p1, 0xa

    .line 13
    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lgm;->an:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    .line 14
    :cond_d
    iget p1, p0, Lne;->bn:I

    return p1
.end method
