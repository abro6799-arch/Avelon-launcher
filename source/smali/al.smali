###### Class defpackage.al (al)
.class final Lal;
.super Lct;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;FF)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lct;-><init>(Ljava/lang/String;FF)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "random.glass"

    return-object v0
.end method
