###### Class defpackage.vi (vi)
.class public Lvi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 6
    sput-object v1, Lvi;->a:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    int-to-byte v3, v2

    if-eqz v3, :cond_16

    .line 12
    :try_start_d
    sget-object v4, Luu;->m:[Luu;

    and-int/lit16 v5, v3, 0xff

    aget-object v4, v4, v5

    if-nez v4, :cond_16

    move v3, v1

    .line 15
    :cond_16
    sget-object v4, Lvi;->a:[B

    aput-byte v3, v4, v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_1d
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)V
    .registers 4

    const/4 v0, 0x0

    .line 23
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 24
    sget-object v1, Lvi;->a:[B

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method
