###### Class defpackage.nv (nv)
.class Lnv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgw;)V
    .registers 2

    .line 209
    invoke-direct {p0}, Lnv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    .line 214
    iget v0, p0, Lnv;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnv;->a:I

    .line 215
    iget-wide v0, p0, Lnv;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnv;->b:J

    return-void
.end method
