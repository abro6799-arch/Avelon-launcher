###### Class defpackage.wa (wa)
.class public Lwa;
.super Lgm;
.source "SourceFile"


# static fields
.field private static final bn:[I

.field private static final bo:[I


# instance fields
.field public final a:I

.field public final bk:I

.field public final bl:I

.field public final bm:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 4
    filled-new-array {v2, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lwa;->bn:[I

    const/16 v0, 0xf

    const/16 v1, 0xd

    const/16 v2, 0xb

    const/16 v3, 0x10

    .line 7
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lwa;->bo:[I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 16
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    .line 17
    iput p2, p0, Lwa;->a:I

    .line 18
    iput p4, p0, Lwa;->bk:I

    .line 19
    iput p3, p0, Lwa;->bm:I

    .line 20
    sget-object p1, Lwa;->bn:[I

    aget p1, p1, p4

    iput p1, p0, Lwa;->bl:I

    .line 21
    sget-object p1, Lwa;->bo:[I

    aget p1, p1, p4

    mul-int/lit8 p1, p1, 0x3

    shl-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lwa;->e(I)Lgm;

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lwa;->bg:I

    return-void
.end method
