###### Class defpackage.na (na)
.class Lna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpu;


# instance fields
.field final synthetic a:Led;

.field final synthetic b:Llt;


# direct methods
.method constructor <init>(Llt;Led;)V
    .registers 3

    .line 37
    iput-object p1, p0, Lna;->b:Llt;

    iput-object p2, p0, Lna;->a:Led;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llb;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lna;->a:Led;

    invoke-virtual {v0, p1}, Led;->a(Llb;)Led;

    return-void
.end method

.method public a(Lpn;)V
    .registers 3

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Coding failure in Argo:  Attempt to add a field to an array."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
