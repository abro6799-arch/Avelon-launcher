###### Class defpackage.vn (vn)
.class final Lvn;
.super Lgu;
.source "SourceFile"


# static fields
.field static final a:Lvn;

.field static final b:Lvn;

.field static final c:Lvn;


# instance fields
.field private final d:Lat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lvn;

    sget-object v1, Lat;->g:Lat;

    invoke-direct {v0, v1}, Lvn;-><init>(Lat;)V

    sput-object v0, Lvn;->a:Lvn;

    .line 19
    new-instance v0, Lvn;

    sget-object v1, Lat;->e:Lat;

    invoke-direct {v0, v1}, Lvn;-><init>(Lat;)V

    sput-object v0, Lvn;->b:Lvn;

    .line 20
    new-instance v0, Lvn;

    sget-object v1, Lat;->f:Lat;

    invoke-direct {v0, v1}, Lvn;-><init>(Lat;)V

    sput-object v0, Lvn;->c:Lvn;

    return-void
.end method

.method private constructor <init>(Lat;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lgu;-><init>()V

    .line 25
    iput-object p1, p0, Lvn;->d:Lat;

    return-void
.end method


# virtual methods
.method public a()Lat;
    .registers 2

    .line 29
    iget-object v0, p0, Lvn;->d:Lat;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get text on a JsonNode without text."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/util/Map;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get fields on a JsonNode without fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/util/List;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get elements on a JsonNode without elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
