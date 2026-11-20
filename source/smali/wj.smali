###### Class defpackage.wj (wj)
.class public Lwj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 12
    fill-array-data v1, :array_1e

    sput-object v1, Lwj;->a:[I

    new-array v1, v0, [I

    .line 16
    fill-array-data v1, :array_2e

    sput-object v1, Lwj;->b:[I

    new-array v1, v0, [I

    .line 19
    fill-array-data v1, :array_3e

    sput-object v1, Lwj;->c:[I

    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_4e

    sput-object v0, Lwj;->d:[I

    return-void

    :array_1e
    .array-data 4
        0x1
        0x0
        0x3
        0x2
        0x5
        0x4
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x0
        -0x1
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
