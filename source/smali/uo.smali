###### Class defpackage.uo (uo)
.class public Luo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Luo;->a:F

    .line 8
    iput v0, p0, Luo;->b:F

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Luo;->c:Z

    .line 11
    iput-boolean v0, p0, Luo;->d:Z

    .line 12
    iput-boolean v0, p0, Luo;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(IZ)V
    .registers 3

    return-void
.end method

.method public a(Lgs;)V
    .registers 2

    return-void
.end method
