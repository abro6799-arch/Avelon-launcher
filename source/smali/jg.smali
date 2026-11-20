###### Class defpackage.jg (jg)
.class public final enum Ljg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ljg;

.field public static final enum b:Ljg;

.field private static final synthetic c:[Ljg;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Ljg;

    const-string v1, "TILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljg;->a:Ljg;

    new-instance v1, Ljg;

    const-string v2, "ENTITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljg;->b:Ljg;

    .line 7
    filled-new-array {v0, v1}, [Ljg;

    move-result-object v0

    sput-object v0, Ljg;->c:[Ljg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljg;
    .registers 2

    .line 7
    const-class v0, Ljg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljg;

    return-object p0
.end method

.method public static values()[Ljg;
    .registers 1

    .line 7
    sget-object v0, Ljg;->c:[Ljg;

    invoke-virtual {v0}, [Ljg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljg;

    return-object v0
.end method
