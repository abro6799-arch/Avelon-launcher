###### Class defpackage.bh (bh)
.class public Lbh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lbh;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lbh;->b:Ljava/net/URL;

    return-void
.end method
