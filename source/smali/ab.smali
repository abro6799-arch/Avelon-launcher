###### Class defpackage.ab (ab)
.class public Lab;
.super Lke;
.source "SourceFile"


# instance fields
.field private final i:Lht;


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .registers 7

    .line 14
    invoke-direct/range {p0 .. p6}, Lke;-><init>(IIIIILjava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lab;->i:Lht;

    return-void
.end method

.method public constructor <init>(IIILht;Ljava/lang/String;)V
    .registers 13

    const/16 v4, 0x96

    const/16 v5, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p5

    .line 19
    invoke-direct/range {v0 .. v6}, Lke;-><init>(IIIIILjava/lang/String;)V

    .line 20
    iput-object p4, p0, Lab;->i:Lht;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lab;-><init>(IIILht;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lht;
    .registers 2

    .line 24
    iget-object v0, p0, Lab;->i:Lht;

    return-object v0
.end method
