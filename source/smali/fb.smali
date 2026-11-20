###### Class defpackage.fb (fb)
.class public Lfb;
.super Leo;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Leo;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 15
    sget-object p1, Luu;->aq:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
