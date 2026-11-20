###### Class mcport.NativeStats (mcport.NativeStats)
.class public final Lmcport/NativeStats;
.super Ljava/lang/Object;
.source "NativeStats.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 3
    invoke-static {}, Lmcport/NativeLib;->load()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native read()[J
.end method
