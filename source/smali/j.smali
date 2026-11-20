###### Class defpackage.j (j)
.class final Lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyp;


# instance fields
.field private final a:Ljt;

.field private final b:Ljt;


# direct methods
.method constructor <init>(Ljt;Ljt;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lj;->a:Ljt;

    .line 22
    iput-object p2, p0, Lj;->b:Ljt;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lj;->b:Ljt;

    invoke-virtual {v0}, Ljt;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4

    .line 26
    iget-object v0, p0, Lj;->a:Ljt;

    invoke-virtual {v0, p1}, Ljt;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lj;->b:Ljt;

    iget-object v1, p0, Lj;->a:Ljt;

    invoke-virtual {v1, p1}, Ljt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljt;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lj;->a:Ljt;

    invoke-virtual {v0, p1}, Ljt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Lmz; {:try_start_0 .. :try_end_6} :catch_15

    .line 38
    :try_start_6
    iget-object v0, p0, Lj;->b:Ljt;

    invoke-virtual {v0, p1}, Ljt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Lmz; {:try_start_6 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 40
    iget-object v0, p0, Lj;->a:Ljt;

    invoke-static {p1, v0}, Lmz;->a(Lmz;Ljt;)Lad;

    move-result-object p1

    throw p1

    :catch_15
    move-exception p1

    .line 34
    iget-object v0, p0, Lj;->a:Ljt;

    invoke-static {p1, v0}, Lmz;->b(Lmz;Ljt;)Lad;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj;->a:Ljt;

    invoke-virtual {v1}, Ljt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj;->b:Ljt;

    invoke-virtual {v1}, Ljt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
