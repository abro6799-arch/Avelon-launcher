###### Class defpackage.tw (tw)
.class public Ltw;
.super Lvr;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2}, Lvr;-><init>(ILjava/lang/String;)V

    .line 10
    iput p3, p0, Ltw;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 14
    iget v0, p0, Ltw;->a:I

    return v0
.end method
