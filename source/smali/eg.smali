###### Class defpackage.eg (eg)
.class public Leg;
.super Low;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Low;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 3

    .line 18
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    const-string v0, "Record"

    .line 19
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Leg;->a:I

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 24
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    .line 25
    iget v0, p0, Leg;->a:I

    if-lez v0, :cond_c

    const-string v1, "Record"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;I)V

    :cond_c
    return-void
.end method
