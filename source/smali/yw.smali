###### Class defpackage.yw (yw)
.class public Lyw;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:I

.field private bk:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 11
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    .line 12
    iput p2, p0, Lyw;->a:I

    .line 13
    iput-boolean p3, p0, Lyw;->bk:Z

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lyw;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 4

    .line 19
    iget p2, p1, Liz;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Liz;->a:I

    .line 20
    iget p2, p0, Lyw;->a:I

    invoke-virtual {p3, p2}, Lgs;->c(I)V

    return-object p1
.end method

.method public l()I
    .registers 2

    .line 25
    iget v0, p0, Lyw;->a:I

    return v0
.end method

.method public m()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lyw;->bk:Z

    return v0
.end method
