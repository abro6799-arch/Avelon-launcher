###### Class defpackage.ig (ig)
.class public Lig;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:F

.field public f:F

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 121
    invoke-direct {p0}, Lki;-><init>()V

    .line 122
    iput-boolean p1, p0, Lig;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 2

    .line 130
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Lig;->g:Z

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 134
    iget-boolean v0, p0, Lig;->g:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 126
    invoke-virtual {p1, p0}, Lti;->a(Lig;)V

    return-void
.end method
