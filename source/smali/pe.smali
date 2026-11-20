###### Class defpackage.pe (pe)
.class public Lpe;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Lki;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x77

    if-le v0, v1, :cond_10

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 24
    :cond_10
    iput-object p1, p0, Lpe;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 40
    iget-object v0, p0, Lpe;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    const/16 v0, 0x77

    .line 28
    invoke-static {p1, v0}, Lpe;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpe;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 32
    iget-object v0, p0, Lpe;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lpe;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 36
    invoke-virtual {p1, p0}, Lti;->a(Lpe;)V

    return-void
.end method
