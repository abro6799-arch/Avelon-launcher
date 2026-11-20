###### Class defpackage.cw (cw)
.class public final enum Lcw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcw;

.field public static final enum b:Lcw;

.field public static final enum c:Lcw;

.field public static final enum d:Lcw;

.field public static final enum e:Lcw;

.field private static final synthetic f:[Lcw;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 582
    new-instance v0, Lcw;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcw;->a:Lcw;

    new-instance v1, Lcw;

    const-string v2, "NOT_POSSIBLE_HERE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcw;->b:Lcw;

    new-instance v2, Lcw;

    const-string v3, "NOT_POSSIBLE_NOW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcw;->c:Lcw;

    new-instance v3, Lcw;

    const-string v4, "TOO_FAR_AWAY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcw;->d:Lcw;

    new-instance v4, Lcw;

    const-string v5, "OTHER_PROBLEM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcw;->e:Lcw;

    .line 581
    filled-new-array {v0, v1, v2, v3, v4}, [Lcw;

    move-result-object v0

    sput-object v0, Lcw;->f:[Lcw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcw;
    .registers 2

    .line 581
    const-class v0, Lcw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcw;

    return-object p0
.end method

.method public static values()[Lcw;
    .registers 1

    .line 581
    sget-object v0, Lcw;->f:[Lcw;

    invoke-virtual {v0}, [Lcw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcw;

    return-object v0
.end method
