###### Class org.lwjgl.Sys (org.lwjgl.Sys)
.class public final Lorg/lwjgl/Sys;
.super Ljava/lang/Object;
.source "Sys.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALERT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getTime()J
    .registers 4

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimerResolution()J
    .registers 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.9.0 (mcport shim)"

    return-object v0
.end method

.method public static openURL(Ljava/lang/String;)Z
    .registers 2

    .line 4
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmcport/Platform;->openURL(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
