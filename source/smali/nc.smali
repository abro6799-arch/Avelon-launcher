###### Class defpackage.nc (nc)
.class Lnc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpu;


# instance fields
.field final synthetic a:Lpn;

.field final synthetic b:Llt;


# direct methods
.method constructor <init>(Llt;Lpn;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lnc;->b:Llt;

    iput-object p2, p0, Lnc;->a:Lpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llb;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lnc;->a:Lpn;

    invoke-virtual {v0, p1}, Lpn;->b(Llb;)Lpn;

    return-void
.end method

.method public a(Lpn;)V
    .registers 3

    .line 76
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Coding failure in Argo:  Attempt to add a field to a field."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
