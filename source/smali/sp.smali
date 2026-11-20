###### Class defpackage.sp (sp)
.class public Lsp;
.super Lij;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Lij;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsp;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public a(I)Lij;
    .registers 3

    .line 58
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lij;

    return-object p1
.end method

.method public a(Lij;)V
    .registers 3

    .line 53
    invoke-virtual {p1}, Lij;->a()B

    move-result v0

    iput-byte v0, p0, Lsp;->b:B

    .line 54
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/io/DataInput;)V
    .registers 6

    .line 22
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsp;->b:B

    .line 23
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsp;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_25

    .line 27
    iget-byte v2, p0, Lsp;->b:B

    invoke-static {v2}, Lij;->a(B)Lij;

    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Lij;->a(Ljava/io/DataInput;)V

    .line 29
    iget-object v3, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_25
    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 4

    .line 11
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij;

    invoke-virtual {v0}, Lij;->a()B

    move-result v0

    iput-byte v0, p0, Lsp;->b:B

    goto :goto_1b

    :cond_18
    const/4 v0, 0x1

    .line 12
    iput-byte v0, p0, Lsp;->b:B

    .line 14
    :goto_1b
    iget-byte v0, p0, Lsp;->b:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 15
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 16
    :goto_29
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 17
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij;

    invoke-virtual {v0, p1}, Lij;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3f
    return-void
.end method

.method public c()I
    .registers 2

    .line 62
    iget-object v0, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsp;->b:B

    invoke-static {v1}, Lij;->b(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
