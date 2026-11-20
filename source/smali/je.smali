###### Class defpackage.je (je)
.class public abstract Lje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lll;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsj;
    .registers 2

    .line 38
    iget-object v0, p0, Lje;->a:Lll;

    invoke-virtual {v0}, Lll;->a()Lsj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfd;)V
    .registers 2

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lje;->a:Lll;

    iget-object v0, v0, Lll;->e:Lji;

    .line 16
    invoke-virtual {v0, p1}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lji;->b(I)V

    return-void
.end method

.method public a(Lll;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lje;->a:Lll;

    return-void
.end method

.method public abstract a(Low;DDDF)V
.end method
