###### Class defpackage.mx (mx)
.class public Lmx;
.super Lfm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lfm;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Lxa;)Lbf;
    .registers 4

    .line 23
    invoke-virtual {p0}, Lmx;->a()Ljava/io/File;

    move-result-object v0

    .line 25
    instance-of p1, p1, Lwd;

    if-eqz p1, :cond_18

    .line 26
    new-instance p1, Ljava/io/File;

    const-string v1, "DIM-1"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 28
    new-instance v0, Lld;

    invoke-direct {v0, p1}, Lld;-><init>(Ljava/io/File;)V

    return-object v0

    .line 31
    :cond_18
    new-instance p1, Lld;

    invoke-direct {p1, v0}, Lld;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method public a(Lei;Ljava/util/List;)V
    .registers 4

    const/16 v0, 0x4abc

    .line 36
    invoke-virtual {p1, v0}, Lei;->d(I)V

    .line 37
    invoke-super {p0, p1, p2}, Lfm;->a(Lei;Ljava/util/List;)V

    return-void
.end method
