###### Class defpackage.ui (ui)
.class public Lui;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lui;->k:Z

    return-void
.end method

.method public constructor <init>(III[Ljava/lang/String;)V
    .registers 6

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lui;->k:Z

    .line 17
    iput p1, p0, Lui;->a:I

    .line 18
    iput p2, p0, Lui;->b:I

    .line 19
    iput p3, p0, Lui;->c:I

    .line 20
    iput-object p4, p0, Lui;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    .line 47
    iget-object v2, p0, Lui;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 6

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lui;->a:I

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lui;->b:I

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lui;->c:I

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lui;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_27

    .line 29
    iget-object v2, p0, Lui;->d:[Ljava/lang/String;

    const/16 v3, 0xf

    invoke-static {p1, v3}, Lui;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_27
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 33
    iget v0, p0, Lui;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    iget v0, p0, Lui;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 35
    iget v0, p0, Lui;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    .line 37
    iget-object v1, p0, Lui;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lui;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 41
    invoke-virtual {p1, p0}, Lti;->a(Lui;)V

    return-void
.end method
