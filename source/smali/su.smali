###### Class defpackage.su (su)
.class Lsu;
.super Llg;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldv;


# direct methods
.method public constructor <init>(Ldv;)V
    .registers 9

    .line 111
    iput-object p1, p0, Lsu;->a:Ldv;

    .line 112
    invoke-static {p1}, Ldv;->a(Ldv;)Lnet/minecraft/client/Minecraft;

    move-result-object v1

    iget v2, p1, Ldv;->c:I

    iget v3, p1, Ldv;->d:I

    const/16 v4, 0x20

    iget p1, p1, Ldv;->d:I

    add-int/lit8 v5, p1, -0x40

    const/16 v6, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Llg;-><init>(Lnet/minecraft/client/Minecraft;IIIII)V

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lsu;->a(Z)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 119
    sget-object v0, Ljl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a(IIIILnw;)V
    .registers 15

    .line 143
    sget-object p4, Ljl;->c:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvr;

    .line 144
    iget-object v0, p0, Lsu;->a:Ldv;

    invoke-static {v0}, Ldv;->b(Ldv;)Lsj;

    move-result-object v1

    iget-object v2, p4, Lvr;->f:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v7, p3, 0x1

    rem-int/lit8 p1, p1, 0x2

    const p3, 0xffffff

    const p5, 0x909090

    if-nez p1, :cond_20

    move v5, p3

    goto :goto_21

    :cond_20
    move v5, p5

    :goto_21
    move v3, p2

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Ldv;->b(Lsj;Ljava/lang/String;III)V

    .line 145
    iget-object v0, p0, Lsu;->a:Ldv;

    invoke-static {v0}, Ldv;->c(Ldv;)Lxi;

    move-result-object v0

    invoke-virtual {v0, p4}, Lxi;->a(Lvr;)I

    move-result v0

    invoke-virtual {p4, v0}, Lvr;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-object v3, p0, Lsu;->a:Ldv;

    invoke-static {v3}, Ldv;->d(Ldv;)Lsj;

    move-result-object v4

    add-int/lit16 p2, p2, 0xd5

    iget-object p4, p0, Lsu;->a:Ldv;

    invoke-static {p4}, Ldv;->e(Ldv;)Lsj;

    move-result-object p4

    invoke-virtual {p4, v5}, Lsj;->a(Ljava/lang/String;)I

    move-result p4

    sub-int v6, p2, p4

    if-nez p1, :cond_4c

    move v8, p3

    goto :goto_4d

    :cond_4c
    move v8, p5

    :goto_4d
    invoke-virtual/range {v3 .. v8}, Ldv;->b(Lsj;Ljava/lang/String;III)V

    return-void
.end method

.method protected a(IZ)V
    .registers 3

    return-void
.end method

.method protected b()I
    .registers 2

    .line 133
    invoke-virtual {p0}, Lsu;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method protected c()V
    .registers 2

    .line 138
    iget-object v0, p0, Lsu;->a:Ldv;

    invoke-virtual {v0}, Ldv;->i()V

    return-void
.end method

.method protected c_(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
