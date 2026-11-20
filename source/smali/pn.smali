###### Class defpackage.pn (pn)
.class final Lpn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Llb;

.field private b:Llb;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lpn;
    .registers 1

    .line 22
    new-instance v0, Lpn;

    invoke-direct {v0}, Lpn;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Llb;)Lpn;
    .registers 2

    .line 26
    iput-object p1, p0, Lpn;->a:Llb;

    return-object p0
.end method

.method b(Llb;)Lpn;
    .registers 2

    .line 31
    iput-object p1, p0, Lpn;->b:Llb;

    return-object p0
.end method

.method b()Lqa;
    .registers 2

    .line 36
    iget-object v0, p0, Lpn;->a:Llb;

    invoke-interface {v0}, Llb;->b()Lgu;

    move-result-object v0

    check-cast v0, Lqa;

    return-object v0
.end method

.method c()Lgu;
    .registers 2

    .line 40
    iget-object v0, p0, Lpn;->b:Llb;

    invoke-interface {v0}, Llb;->b()Lgu;

    move-result-object v0

    return-object v0
.end method
