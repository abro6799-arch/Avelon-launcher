###### Class defpackage.yr (yr)
.class public Lyr;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lki;-><init>()V

    .line 14
    iput-object p1, p0, Lyr;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 30
    iget-object v0, p0, Lyr;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    const/16 v0, 0x64

    .line 18
    invoke-static {p1, v0}, Lyr;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyr;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 22
    iget-object v0, p0, Lyr;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lyr;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 26
    invoke-virtual {p1, p0}, Lti;->a(Lyr;)V

    return-void
.end method
