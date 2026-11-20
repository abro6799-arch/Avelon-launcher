###### Class defpackage.Cdo (do)
.class public Ldo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lnh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    sput-object v0, Ldo;->a:Lnh;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8
    sget-object v0, Ldo;->a:Lnh;

    invoke-virtual {v0, p0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 12
    sget-object v0, Ldo;->a:Lnh;

    invoke-virtual {v0, p0, p1}, Lnh;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
