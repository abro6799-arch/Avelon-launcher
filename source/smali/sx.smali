###### Class defpackage.sx (sx)
.class public final Lsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsx;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lsx;)Ljava/util/List;
    .registers 1

    .line 23
    iget-object p0, p0, Lsx;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lqe;
    .registers 2

    .line 64
    new-instance v0, Loy;

    invoke-direct {v0, p0}, Loy;-><init>(Lsx;)V

    invoke-static {v0}, Lol;->a(Ljava/util/Map;)Lqe;

    move-result-object v0

    return-object v0
.end method

.method public a(Lpn;)Lsx;
    .registers 3

    .line 58
    iget-object v0, p0, Lsx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic b()Lgu;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lsx;->a()Lqe;

    move-result-object v0

    return-object v0
.end method
