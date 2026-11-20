###### Class defpackage.aw (aw)
.class public Law;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Law;->a:[B

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Law;->c:Z

    .line 13
    iput v0, p0, Law;->d:I

    const/4 v1, 0x1

    .line 14
    iput v1, p0, Law;->e:I

    .line 15
    iput v0, p0, Law;->f:I

    .line 18
    iput p1, p0, Law;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lji;)V
    .registers 5

    .line 25
    iget v0, p0, Law;->f:I

    const/16 v1, 0xde1

    if-nez v0, :cond_10

    const-string v0, "/terrain.png"

    .line 26
    invoke-virtual {p1, v0}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    goto :goto_1c

    :cond_10
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    const-string v0, "/gui/items.png"

    .line 28
    invoke-virtual {p1, v0}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    :cond_1c
    :goto_1c
    return-void
.end method
