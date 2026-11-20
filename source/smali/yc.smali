###### Class defpackage.yc (yc)
.class public Lyc;
.super Lda;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field private i:Lyk;

.field private j:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-object v0, Lfp;->a:Ljava/lang/String;

    sput-object v0, Lyc;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lyk;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Lda;-><init>()V

    const-string v0, "Edit sign message:"

    .line 16
    iput-object v0, p0, Lyc;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lyc;->l:I

    .line 22
    iput-object p1, p0, Lyc;->i:Lyk;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 39
    iget v0, p0, Lyc;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyc;->j:I

    return-void
.end method

.method protected a(CI)V
    .registers 7

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_c

    .line 54
    iget v0, p0, Lyc;->l:I

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lyc;->l:I

    :cond_c
    const/16 v0, 0xd0

    if-eq p2, v0, :cond_14

    const/16 v0, 0x1c

    if-ne p2, v0, :cond_1c

    .line 55
    :cond_14
    iget v0, p0, Lyc;->l:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lyc;->l:I

    :cond_1c
    const/16 v0, 0xe

    if-ne p2, v0, :cond_51

    .line 56
    iget-object p2, p0, Lyc;->i:Lyk;

    iget-object p2, p2, Lyk;->a:[Ljava/lang/String;

    iget v0, p0, Lyc;->l:I

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_51

    .line 57
    iget-object p2, p0, Lyc;->i:Lyk;

    iget-object p2, p2, Lyk;->a:[Ljava/lang/String;

    iget v0, p0, Lyc;->l:I

    iget-object v1, p0, Lyc;->i:Lyk;

    iget-object v1, v1, Lyk;->a:[Ljava/lang/String;

    iget v2, p0, Lyc;->l:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lyc;->i:Lyk;

    iget-object v2, v2, Lyk;->a:[Ljava/lang/String;

    iget v3, p0, Lyc;->l:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 59
    :cond_51
    sget-object p2, Lyc;->m:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_82

    iget-object p2, p0, Lyc;->i:Lyk;

    iget-object p2, p2, Lyk;->a:[Ljava/lang/String;

    iget v0, p0, Lyc;->l:I

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xf

    if-ge p2, v0, :cond_82

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lyc;->i:Lyk;

    iget-object v0, v0, Lyk;->a:[Ljava/lang/String;

    iget v1, p0, Lyc;->l:I

    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    :cond_82
    return-void
.end method

.method public a(IIF)V
    .registers 15

    .line 65
    invoke-virtual {p0}, Lyc;->i()V

    .line 67
    iget-object v1, p0, Lyc;->g:Lsj;

    iget-object v2, p0, Lyc;->a:Ljava/lang/String;

    iget v0, p0, Lyc;->c:I

    const/4 v6, 0x2

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x28

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lyc;->a(Lsj;Ljava/lang/String;III)V

    .line 69
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 70
    iget v0, p0, Lyc;->c:I

    div-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v0, -0x3d448000    # -93.75f

    .line 72
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-static {v0, v2, v1, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 75
    iget-object v3, p0, Lyc;->i:Lyk;

    invoke-virtual {v3}, Lyk;->f()Luu;

    move-result-object v3

    .line 77
    sget-object v4, Luu;->aE:Luu;

    const/high16 v5, -0x40780000    # -1.0625f

    if-ne v3, v4, :cond_4e

    .line 78
    iget-object v0, p0, Lyc;->i:Lyk;

    invoke-virtual {v0}, Lyk;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v0, v3

    .line 79
    invoke-static {v0, v2, v1, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 81
    invoke-static {v2, v5, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    goto :goto_68

    .line 84
    :cond_4e
    iget-object v3, p0, Lyc;->i:Lyk;

    invoke-virtual {v3}, Lyk;->e()I

    move-result v3

    if-ne v3, v6, :cond_57

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5d

    const/high16 v0, 0x42b40000    # 90.0f

    :cond_5d
    const/4 v4, 0x5

    if-ne v3, v4, :cond_62

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 90
    :cond_62
    invoke-static {v0, v2, v1, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 91
    invoke-static {v2, v5, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 94
    :goto_68
    iget v0, p0, Lyc;->j:I

    div-int/lit8 v0, v0, 0x6

    rem-int/2addr v0, v6

    if-nez v0, :cond_75

    iget-object v0, p0, Lyc;->i:Lyk;

    iget v1, p0, Lyc;->l:I

    iput v1, v0, Lyk;->b:I

    .line 96
    :cond_75
    sget-object v2, Lll;->a:Lll;

    iget-object v3, p0, Lyc;->i:Lyk;

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4018000000000000L    # -0.75

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lll;->a(Low;DDDF)V

    .line 97
    iget-object v0, p0, Lyc;->i:Lyk;

    const/4 v1, -0x1

    iput v1, v0, Lyk;->b:I

    .line 99
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 101
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 3

    .line 43
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 45
    :cond_5
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_14

    .line 46
    iget-object p1, p0, Lyc;->i:Lyk;

    invoke-virtual {p1}, Lyk;->y_()V

    .line 47
    iget-object p1, p0, Lyc;->b:Lnet/minecraft/client/Minecraft;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_14
    return-void
.end method

.method public b()V
    .registers 7

    .line 26
    iget-object v0, p0, Lyc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    .line 28
    iget-object v0, p0, Lyc;->e:Ljava/util/List;

    new-instance v1, Lke;

    iget v2, p0, Lyc;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x64

    iget v3, p0, Lyc;->d:I

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x78

    const-string v4, "Done"

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .registers 7

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    .line 33
    iget-object v0, p0, Lyc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_2a

    .line 34
    iget-object v0, p0, Lyc;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->s()Lnb;

    move-result-object v0

    new-instance v1, Lui;

    iget-object v2, p0, Lyc;->i:Lyk;

    iget v2, v2, Lyk;->e:I

    iget-object v3, p0, Lyc;->i:Lyk;

    iget v3, v3, Lyk;->f:I

    iget-object v4, p0, Lyc;->i:Lyk;

    iget v4, v4, Lyk;->g:I

    iget-object v5, p0, Lyc;->i:Lyk;

    iget-object v5, v5, Lyk;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lui;-><init>(III[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    :cond_2a
    return-void
.end method
