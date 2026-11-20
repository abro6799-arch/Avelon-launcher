###### Class defpackage.mp (mp)
.class public Lmp;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lki;-><init>()V

    .line 13
    iput-object p1, p0, Lmp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 29
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    const/16 v0, 0x20

    .line 17
    invoke-static {p1, v0}, Lmp;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmp;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 21
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lmp;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 25
    invoke-virtual {p1, p0}, Lti;->a(Lmp;)V

    return-void
.end method
