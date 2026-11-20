###### Class defpackage.tm (tm)
.class Ltm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field final synthetic g:Lmm;


# direct methods
.method public constructor <init>(Lmm;IIIII)V
    .registers 7

    .line 22
    iput-object p1, p0, Ltm;->g:Lmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Ltm;->a:I

    .line 24
    iput p3, p0, Ltm;->b:I

    .line 25
    iput p4, p0, Ltm;->c:I

    const/16 p1, 0x50

    .line 26
    iput p1, p0, Ltm;->d:I

    .line 27
    iput p5, p0, Ltm;->e:I

    .line 28
    iput p6, p0, Ltm;->f:I

    return-void
.end method
