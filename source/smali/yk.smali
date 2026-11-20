###### Class defpackage.yk (yk)
.class public Lyk;
.super Low;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Low;-><init>()V

    const-string v0, ""

    .line 11
    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyk;->a:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lyk;->b:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lyk;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 8

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lyk;->c:Z

    .line 27
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    move v1, v0

    :goto_7
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3a

    .line 29
    iget-object v2, p0, Lyk;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 30
    iget-object v2, p0, Lyk;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_38

    iget-object v2, p0, Lyk;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_38
    move v1, v4

    goto :goto_7

    :cond_3a
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 18
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    .line 19
    iget-object v0, p0, Lyk;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Text1"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lyk;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "Text2"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lyk;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "Text3"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lyk;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "Text4"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
