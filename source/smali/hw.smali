###### Class defpackage.hw (hw)
.class public Lhw;
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
    sput-object v0, Lhw;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I)V
    .registers 1

    .line 8
    sput-object p0, Lhw;->a:[I

    return-void
.end method
