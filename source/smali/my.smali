###### Class defpackage.my (my)
.class Lmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpu;


# instance fields
.field final synthetic a:Lsx;

.field final synthetic b:Llt;


# direct methods
.method constructor <init>(Llt;Lsx;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lmy;->b:Llt;

    iput-object p2, p0, Lmy;->a:Lsx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llb;)V
    .registers 3

    .line 56
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Coding failure in Argo:  Attempt to add a node to an object."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lpn;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lmy;->a:Lsx;

    invoke-virtual {v0, p1}, Lsx;->a(Lpn;)Lsx;

    return-void
.end method
