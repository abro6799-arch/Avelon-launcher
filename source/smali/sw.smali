###### Class defpackage.sw (sw)
.class public Lsw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lsw;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lsw;->b:I

    return-void
.end method
