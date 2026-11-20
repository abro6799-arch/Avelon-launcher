###### Class defpackage.ia (ia)
.class public Lia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    .line 5
    sput-object v0, Lia;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)I
    .registers 8

    mul-double/2addr p2, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double p0, v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v2

    double-to-int p0, p0

    sub-double/2addr v0, p2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 15
    sget-object p2, Lia;->a:[I

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    aget p0, p2, p0

    return p0
.end method

.method public static a([I)V
    .registers 1

    .line 8
    sput-object p0, Lia;->a:[I

    return-void
.end method
