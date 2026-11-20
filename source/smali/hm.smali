###### Class defpackage.hm (hm)
.class public abstract Lhm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lhm;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lhm;->a(Z)V

    return-void
.end method

.method public abstract a(Lnu;)V
.end method

.method public a(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lhm;->b:Z

    return-void
.end method

.method public abstract b(Lnu;)V
.end method

.method public b()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lhm;->b:Z

    return v0
.end method
