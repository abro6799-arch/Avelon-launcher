###### Class defpackage.jn (jn)
.class final enum Ljn;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ljn;

.field public static final enum b:Ljn;

.field public static final enum c:Ljn;

.field public static final enum d:Ljn;

.field public static final enum e:Ljn;

.field private static final synthetic f:[Ljn;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 19
    new-instance v0, Ljn;

    const-string v1, "linux"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn;->a:Ljn;

    new-instance v1, Ljn;

    const-string v2, "solaris"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljn;->b:Ljn;

    new-instance v2, Ljn;

    const-string v3, "windows"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljn;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljn;->c:Ljn;

    new-instance v3, Ljn;

    const-string v4, "macos"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljn;->d:Ljn;

    new-instance v4, Ljn;

    const-string v5, "unknown"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljn;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ljn;->e:Ljn;

    .line 18
    filled-new-array {v0, v1, v2, v3, v4}, [Ljn;

    move-result-object v0

    sput-object v0, Ljn;->f:[Ljn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljn;
    .registers 2

    .line 18
    const-class v0, Ljn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljn;

    return-object p0
.end method

.method public static values()[Ljn;
    .registers 1

    .line 18
    sget-object v0, Ljn;->f:[Ljn;

    invoke-virtual {v0}, [Ljn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljn;

    return-object v0
.end method
