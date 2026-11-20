###### Class defpackage.ma (ma)
.class public Lma;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p2, p0, Lma;->b:I

    .line 274
    iput-object p3, p0, Lma;->c:Ljava/lang/Object;

    .line 275
    iput p1, p0, Lma;->a:I

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lma;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 280
    iget v0, p0, Lma;->b:I

    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lma;->c:Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 300
    iput-boolean p1, p0, Lma;->d:Z

    return-void
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .line 288
    iget-object v0, p0, Lma;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 292
    iget v0, p0, Lma;->a:I

    return v0
.end method
