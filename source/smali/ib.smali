###### Class defpackage.ib (ib)
.class public Lib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lbt;

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FFFFF)V
    .registers 12

    float-to-double v0, p1

    float-to-double v2, p2

    float-to-double v4, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lbt;->a(DDD)Lbt;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lib;-><init>(Lbt;FF)V

    return-void
.end method

.method public constructor <init>(Lbt;FF)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lib;->a:Lbt;

    .line 26
    iput p2, p0, Lib;->b:F

    .line 27
    iput p3, p0, Lib;->c:F

    return-void
.end method

.method public constructor <init>(Lib;FF)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object p1, p1, Lib;->a:Lbt;

    iput-object p1, p0, Lib;->a:Lbt;

    .line 20
    iput p2, p0, Lib;->b:F

    .line 21
    iput p3, p0, Lib;->c:F

    return-void
.end method


# virtual methods
.method public a(FF)Lib;
    .registers 4

    .line 15
    new-instance v0, Lib;

    invoke-direct {v0, p0, p1, p2}, Lib;-><init>(Lib;FF)V

    return-object v0
.end method
