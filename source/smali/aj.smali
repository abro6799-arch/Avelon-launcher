###### Class defpackage.aj (aj)
.class final Laj;
.super Lct;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;FF)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lct;-><init>(Ljava/lang/String;FF)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "step.gravel"

    return-object v0
.end method
