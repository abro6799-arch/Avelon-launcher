###### Class defpackage.me (me)
.class public Lme;
.super Lgv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lko;Lko;F)V
    .registers 4

    .line 8
    invoke-direct {p0, p1, p3}, Lgv;-><init>(Lko;F)V

    .line 9
    invoke-virtual {p0, p2}, Lme;->a(Lko;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lls;IF)Z
    .registers 4

    .line 6
    check-cast p1, Lwh;

    invoke-virtual {p0, p1, p2, p3}, Lme;->a(Lwh;IF)Z

    move-result p1

    return p1
.end method

.method protected a(Lwh;IF)Z
    .registers 4

    const-string p3, "/mob/saddle.png"

    .line 13
    invoke-virtual {p0, p3}, Lme;->a(Ljava/lang/String;)V

    if-nez p2, :cond_f

    .line 14
    invoke-virtual {p1}, Lwh;->v()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method
