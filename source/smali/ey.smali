###### Class defpackage.ey (ey)
.class public Ley;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ley;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ley;

    invoke-direct {v0}, Ley;-><init>()V

    sput-object v0, Ley;->a:Ley;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ley;->b:Ljava/util/Map;

    .line 20
    sget-object v0, Luu;->I:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->m:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 21
    sget-object v0, Luu;->H:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->n:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 22
    sget-object v0, Luu;->ax:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->l:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 23
    sget-object v0, Luu;->F:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Luu;->N:Luu;

    invoke-direct {v1, v2}, Liz;-><init>(Luu;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 24
    sget-object v0, Lgm;->ao:Lgm;

    iget v0, v0, Lgm;->bf:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->ap:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 25
    sget-object v0, Lgm;->aS:Lgm;

    iget v0, v0, Lgm;->bf:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->aT:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 26
    sget-object v0, Luu;->x:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Luu;->u:Luu;

    invoke-direct {v1, v2}, Liz;-><init>(Luu;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 27
    sget-object v0, Lgm;->aG:Lgm;

    iget v0, v0, Lgm;->bf:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->aF:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 28
    sget-object v0, Luu;->aW:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Liz;-><init>(Lgm;II)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    .line 29
    sget-object v0, Luu;->K:Luu;

    iget v0, v0, Luu;->bn:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->k:Lgm;

    invoke-direct {v1, v2, v4, v4}, Liz;-><init>(Lgm;II)V

    invoke-virtual {p0, v0, v1}, Ley;->a(ILiz;)V

    return-void
.end method

.method public static final a()Ley;
    .registers 1

    .line 15
    sget-object v0, Ley;->a:Ley;

    return-object v0
.end method


# virtual methods
.method public a(I)Liz;
    .registers 3

    .line 43
    iget-object v0, p0, Ley;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liz;

    return-object p1
.end method

.method public a(ILiz;)V
    .registers 4

    .line 35
    iget-object v0, p0, Ley;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 2

    .line 47
    iget-object v0, p0, Ley;->b:Ljava/util/Map;

    return-object v0
.end method
