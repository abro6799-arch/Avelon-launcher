###### Class defpackage.bj (bj)
.class public Lbj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Class;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lbj;->a:Ljava/lang/Class;

    .line 190
    iput p2, p0, Lbj;->b:I

    return-void
.end method
