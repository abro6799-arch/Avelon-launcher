###### Class defpackage.hx (hx)
.class public final Lhx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lqe;
    .registers 4

    .line 35
    new-instance v0, Llt;

    invoke-direct {v0}, Llt;-><init>()V

    .line 36
    new-instance v1, Lan;

    invoke-direct {v1}, Lan;-><init>()V

    invoke-virtual {v1, p1, v0}, Lan;->a(Ljava/io/Reader;Lwg;)V

    .line 37
    invoke-virtual {v0}, Llt;->a()Lqe;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lqe;
    .registers 4

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhx;->a(Ljava/io/Reader;)Lqe;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Coding failure in Argo:  StringWriter gave an IOException"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
