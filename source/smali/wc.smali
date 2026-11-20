###### Class defpackage.wc (wc)
.class public Lwc;
.super Ldq;
.source "SourceFile"


# static fields
.field private static bk:[Luu;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Luu;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Luu;->v:Lwp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Luu;->w:Luu;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Luu;->F:Luu;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Luu;->G:Luu;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Luu;->aT:Luu;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Luu;->aV:Luu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Luu;->aX:Luu;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Luu;->aB:Luu;

    aput-object v2, v0, v1

    sput-object v0, Lwc;->bk:[Luu;

    return-void
.end method

.method public constructor <init>(ILbu;)V
    .registers 5

    const/4 v0, 0x1

    .line 11
    sget-object v1, Lwc;->bk:[Luu;

    invoke-direct {p0, p1, v0, p2, v1}, Ldq;-><init>(IILbu;[Luu;)V

    return-void
.end method


# virtual methods
.method public a(Luu;)Z
    .registers 4

    .line 15
    sget-object v0, Luu;->aT:Luu;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 16
    :cond_6
    sget-object v0, Luu;->aV:Luu;

    if-ne p1, v0, :cond_b

    return v1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
