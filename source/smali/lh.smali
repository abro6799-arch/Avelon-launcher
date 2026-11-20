###### Class defpackage.lh (lh)
.class public Llh;
.super Lij;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 2

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "END"

    return-object v0
.end method
