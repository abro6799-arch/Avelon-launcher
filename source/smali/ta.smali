###### Class defpackage.ta (ta)
.class public Lta;
.super Ldq;
.source "SourceFile"


# static fields
.field private static bk:[Luu;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 6
    sget-object v0, Luu;->y:Luu;

    sget-object v1, Luu;->ao:Luu;

    sget-object v2, Luu;->K:Luu;

    sget-object v3, Luu;->av:Luu;

    filled-new-array {v0, v1, v2, v3}, [Luu;

    move-result-object v0

    sput-object v0, Lta;->bk:[Luu;

    return-void
.end method

.method protected constructor <init>(ILbu;)V
    .registers 5

    const/4 v0, 0x3

    .line 11
    sget-object v1, Lta;->bk:[Luu;

    invoke-direct {p0, p1, v0, p2, v1}, Ldq;-><init>(IILbu;[Luu;)V

    return-void
.end method
