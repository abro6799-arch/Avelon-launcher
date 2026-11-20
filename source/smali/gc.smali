###### Class defpackage.gc (gc)
.class public Lgc;
.super Lda;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    sget-object v0, Lfp;->a:Ljava/lang/String;

    sput-object v0, Lgc;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lda;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lgc;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lgc;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 20
    iget v0, p0, Lgc;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgc;->i:I

    return-void
.end method

.method protected a(CI)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    .line 27
    iget-object p1, p0, Lgc;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void

    :cond_a
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_35

    .line 31
    iget-object p1, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2f

    .line 33
    iget-object p1, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lgc;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p2, p1}, Lnet/minecraft/client/Minecraft;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2f

    .line 35
    iget-object p2, p0, Lgc;->b:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p2, p1}, Ldc;->a(Ljava/lang/String;)V

    .line 38
    :cond_2f
    iget-object p1, p0, Lgc;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void

    :cond_35
    const/16 v0, 0xe

    if-ne p2, v0, :cond_4f

    .line 41
    iget-object p2, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4f

    iget-object p2, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lgc;->a:Ljava/lang/String;

    .line 42
    :cond_4f
    sget-object p2, Lgc;->j:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_74

    iget-object p2, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_74

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgc;->a:Ljava/lang/String;

    :cond_74
    return-void
.end method

.method public a(IIF)V
    .registers 16

    const/4 v1, 0x2

    .line 48
    iget v0, p0, Lgc;->d:I

    add-int/lit8 v2, v0, -0xe

    iget v0, p0, Lgc;->c:I

    add-int/lit8 v3, v0, -0x2

    iget v0, p0, Lgc;->d:I

    add-int/lit8 v4, v0, -0x2

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgc;->a(IIIII)V

    .line 49
    iget-object v7, p0, Lgc;->g:Lsj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgc;->i:I

    div-int/lit8 v1, v1, 0x6

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2c

    const-string v1, "_"

    goto :goto_2e

    :cond_2c
    const-string v1, ""

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    iget v0, p0, Lgc;->d:I

    add-int/lit8 v10, v0, -0xc

    const v11, 0xe0e0e0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lgc;->b(Lsj;Ljava/lang/String;III)V

    .line 51
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(III)V
    .registers 5

    if-nez p3, :cond_5d

    .line 56
    iget-object v0, p0, Lgc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->v:Luq;

    iget-object v0, v0, Luq;->a:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 57
    iget-object p1, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2f

    iget-object p1, p0, Lgc;->a:Ljava/lang/String;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgc;->a:Ljava/lang/String;

    .line 60
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lgc;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lgc;->b:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->v:Luq;

    iget-object p2, p2, Luq;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgc;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_5d

    .line 63
    iget-object p1, p0, Lgc;->a:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgc;->a:Ljava/lang/String;

    goto :goto_5d

    .line 66
    :cond_5a
    invoke-super {p0, p1, p2, p3}, Lda;->a(III)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    return-void
.end method
