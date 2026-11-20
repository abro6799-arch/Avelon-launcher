###### Class defpackage.gp (gp)
.class public Lgp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private final d:I

.field private final e:Llw;


# direct methods
.method public constructor <init>(Llw;III)V
    .registers 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lgp;->e:Llw;

    .line 15
    iput p2, p0, Lgp;->d:I

    .line 16
    iput p3, p0, Lgp;->b:I

    .line 17
    iput p4, p0, Lgp;->c:I

    return-void
.end method


# virtual methods
.method public a()Liz;
    .registers 3

    .line 47
    iget-object v0, p0, Lgp;->e:Llw;

    iget v1, p0, Lgp;->d:I

    invoke-interface {v0, v1}, Llw;->f_(I)Liz;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Liz;
    .registers 4

    .line 79
    iget-object v0, p0, Lgp;->e:Llw;

    iget v1, p0, Lgp;->d:I

    invoke-interface {v0, v1, p1}, Llw;->a(II)Liz;

    move-result-object p1

    return-object p1
.end method

.method public a(Liz;)V
    .registers 2

    .line 39
    invoke-virtual {p0}, Lgp;->c()V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 51
    invoke-virtual {p0}, Lgp;->a()Liz;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public b(Liz;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .registers 2

    .line 60
    iget-object v0, p0, Lgp;->e:Llw;

    invoke-interface {v0}, Llw;->y_()V

    return-void
.end method

.method public c(Liz;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lgp;->e:Llw;

    iget v1, p0, Lgp;->d:I

    invoke-interface {v0, v1, p1}, Llw;->a(ILiz;)V

    .line 56
    invoke-virtual {p0}, Lgp;->c()V

    return-void
.end method

.method public d()I
    .registers 2

    .line 64
    iget-object v0, p0, Lgp;->e:Llw;

    invoke-interface {v0}, Llw;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
