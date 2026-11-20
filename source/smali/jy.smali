###### Class defpackage.jy (jy)
.class public Ljy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 7

    .line 8
    new-instance v0, Liz;

    sget-object v1, Luu;->av:Luu;

    invoke-direct {v0, v1}, Liz;-><init>(Luu;)V

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Luu;->y:Luu;

    const-string v3, "###"

    const-string v4, "# #"

    filled-new-array {v3, v4, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 15
    new-instance v0, Liz;

    sget-object v2, Luu;->aC:Luu;

    invoke-direct {v0, v2}, Liz;-><init>(Luu;)V

    sget-object v2, Luu;->x:Luu;

    filled-new-array {v3, v4, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 22
    new-instance v0, Liz;

    sget-object v2, Luu;->az:Luu;

    invoke-direct {v0, v2}, Liz;-><init>(Luu;)V

    sget-object v2, Luu;->y:Luu;

    const-string v3, "##"

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Liz;

    sget-object v2, Luu;->R:Luu;

    invoke-direct {v0, v2}, Liz;-><init>(Luu;)V

    sget-object v2, Luu;->F:Luu;

    filled-new-array {v3, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    return-void
.end method
