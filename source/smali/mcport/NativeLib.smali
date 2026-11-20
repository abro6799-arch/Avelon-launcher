###### Class mcport.NativeLib (mcport.NativeLib)
.class public final Lmcport/NativeLib;
.super Ljava/lang/Object;
.source "NativeLib.java"


# static fields
.field private static loaded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized load()V
    .registers 2

    const-class v0, Lmcport/NativeLib;

    monitor-enter v0

    .line 3
    :try_start_3
    sget-boolean v1, Lmcport/NativeLib;->loaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    const-string v1, "mcport.lib"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_1a

    :cond_15
    const-string v1, "mcport"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_1a
    const/4 v1, 0x1

    sput-boolean v1, Lmcport/NativeLib;->loaded:Z
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method
