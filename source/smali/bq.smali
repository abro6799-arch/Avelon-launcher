###### Class defpackage.bq (bq)
.class final Lbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 5

    .line 53
    invoke-static {}, Lvr;->i()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
