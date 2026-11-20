###### Class defpackage.ux (ux)
.class public Lux;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lux;->a:I

    .line 25
    invoke-static {p1}, Lud;->a(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lux;->b:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 29
    iget v0, p0, Lux;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lux;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lud;->a(Ljava/util/List;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 34
    invoke-virtual {p1, p0}, Lti;->a(Lux;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    .line 42
    iget-object v0, p0, Lux;->b:Ljava/util/List;

    return-object v0
.end method
