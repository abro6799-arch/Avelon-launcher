###### Class defpackage.qb (qb)
.class public Lqb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lqb;->a:Ljava/lang/String;

    .line 11
    iput p2, p0, Lqb;->b:I

    return-void
.end method
