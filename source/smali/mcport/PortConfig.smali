###### Class mcport.PortConfig (mcport.PortConfig)
.class public final Lmcport/PortConfig;
.super Ljava/lang/Object;
.source "PortConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmcport/PortConfig$CrashSink;
    }
.end annotation


# static fields
.field public static volatile crashSink:Lmcport/PortConfig$CrashSink; = null

.field public static volatile dataDir:Ljava/io/File; = null

.field public static volatile exitHandler:Ljava/lang/Runnable; = null

.field public static volatile localSkin:Ljava/io/File; = null

.field public static volatile username:Ljava/lang/String; = "Player"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launch(Ljava/lang/String;I)Lmcport/GameBridge;
    .registers 10

    :try_start_0
    const-string v0, "MCPortMinecraft"

    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "launch"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lmcport/PortConfig;->username:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmcport/GameBridge;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-object p0

    :catch_34
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "could not start game"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

###### Class mcport.PortConfig.CrashSink (mcport.PortConfig$CrashSink)
.class public interface abstract Lmcport/PortConfig$CrashSink;
.super Ljava/lang/Object;
.source "PortConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmcport/PortConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CrashSink"
.end annotation


# virtual methods
.method public abstract onCrash(Ljava/lang/String;)V
.end method
