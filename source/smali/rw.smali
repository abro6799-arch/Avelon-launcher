###### Class defpackage.rw (rw)
.class public abstract Lrw;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(IILln;)V
    .registers 4

    .line 14
    invoke-direct {p0, p1, p2, p3}, Luu;-><init>(IILln;)V

    .line 15
    sget-object p2, Lrw;->p:[Z

    const/4 p3, 0x1

    aput-boolean p3, p2, p1

    return-void
.end method

.method protected constructor <init>(ILln;)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2}, Luu;-><init>(ILln;)V

    .line 10
    sget-object p2, Lrw;->p:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    return-void
.end method


# virtual methods
.method protected abstract a_()Low;
.end method

.method public b(Lfd;III)V
    .registers 5

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    .line 25
    invoke-virtual {p1, p2, p3, p4}, Lfd;->p(III)V

    return-void
.end method

.method public c(Lfd;III)V
    .registers 6

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Luu;->c(Lfd;III)V

    .line 20
    invoke-virtual {p0}, Lrw;->a_()Low;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->a(IIILow;)V

    return-void
.end method
