###### Class defpackage.bi (bi)
.class public Lbi;
.super Lck;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lck;-><init>(I)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lbi;->e(I)Lgm;

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lbi;->a(Z)Lgm;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .line 17
    sget-object v0, Luu;->ac:Luu;

    const/4 v1, 0x2

    invoke-static {p1}, Lee;->d(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Luu;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Liz;)Ljava/lang/String;
    .registers 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkm;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    invoke-static {p1}, Lee;->d(I)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)I
    .registers 2

    return p1
.end method
