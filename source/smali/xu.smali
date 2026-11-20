###### Class defpackage.xu (xu)
.class Lxu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J


# direct methods
.method public constructor <init>(IIIJ)V
    .registers 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lxu;->a:I

    .line 19
    iput p2, p0, Lxu;->b:I

    .line 20
    iput p3, p0, Lxu;->c:I

    .line 21
    iput-wide p4, p0, Lxu;->d:J

    return-void
.end method
