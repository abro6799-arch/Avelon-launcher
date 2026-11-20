###### Class defpackage.vr (vr)
.class public Lvr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/text/NumberFormat;

.field private static c:Ljava/text/DecimalFormat;

.field public static i:Lwk;

.field public static j:Lwk;

.field public static k:Lwk;


# instance fields
.field private final a:Lwk;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lvr;->b:Ljava/text/NumberFormat;

    .line 51
    new-instance v0, Lbq;

    invoke-direct {v0}, Lbq;-><init>()V

    sput-object v0, Lvr;->i:Lwk;

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "########0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvr;->c:Ljava/text/DecimalFormat;

    .line 58
    new-instance v0, Lbo;

    invoke-direct {v0}, Lbo;-><init>()V

    sput-object v0, Lvr;->j:Lwk;

    .line 80
    new-instance v0, Lbn;

    invoke-direct {v0}, Lbn;-><init>()V

    sput-object v0, Lvr;->k:Lwk;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 22
    sget-object v0, Lvr;->i:Lwk;

    invoke-direct {p0, p1, p2, v0}, Lvr;-><init>(ILjava/lang/String;Lwk;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lwk;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lvr;->g:Z

    .line 16
    iput p1, p0, Lvr;->e:I

    .line 17
    iput-object p2, p0, Lvr;->f:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lvr;->a:Lwk;

    return-void
.end method

.method static synthetic i()Ljava/text/NumberFormat;
    .registers 1

    .line 8
    sget-object v0, Lvr;->b:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic j()Ljava/text/DecimalFormat;
    .registers 1

    .line 8
    sget-object v0, Lvr;->c:Ljava/text/DecimalFormat;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Lvr;->a:Lwk;

    invoke-interface {v0, p1}, Lwk;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lvr;
    .registers 5

    .line 31
    sget-object v0, Ljl;->a:Ljava/util/Map;

    iget v1, p0, Lvr;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 34
    sget-object v0, Ljl;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Ljl;->a:Ljava/util/Map;

    iget v1, p0, Lvr;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget v0, p0, Lvr;->e:I

    invoke-static {v0}, Lb;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvr;->h:Ljava/lang/String;

    return-object p0

    .line 32
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate stat id: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljl;->a:Ljava/util/Map;

    iget v3, p0, Lvr;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvr;

    iget-object v2, v2, Lvr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" and \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lvr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" at id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvr;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lvr;
    .registers 2

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lvr;->g:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lvr;->f:Ljava/lang/String;

    return-object v0
.end method
