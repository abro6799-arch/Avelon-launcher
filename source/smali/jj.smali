###### Class defpackage.jj (jj)
.class public Ljj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 12
    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Ljj;->a:[I

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 17
    filled-new-array {v3, v1, v0, v2}, [I

    move-result-object v0

    sput-object v0, Ljj;->b:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 22
    fill-array-data v1, :array_2e

    new-array v2, v0, [I

    fill-array-data v2, :array_3e

    new-array v3, v0, [I

    fill-array-data v3, :array_4e

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    filled-new-array {v1, v2, v3, v0}, [[I

    move-result-object v0

    sput-object v0, Ljj;->c:[[I

    return-void

    :array_2e
    .array-data 4
        0x1
        0x0
        0x3
        0x2
        0x5
        0x4
    .end array-data

    :array_3e
    .array-data 4
        0x1
        0x0
        0x5
        0x4
        0x2
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x1
        0x0
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x0
        0x4
        0x5
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
