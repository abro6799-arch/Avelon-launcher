###### Class defpackage.ba (ba)
.class abstract Lba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyp;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 15
    invoke-virtual {p0, p1}, Lba;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    invoke-virtual {p0, p1}, Lba;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_b
    invoke-static {p0}, Lmz;->a(Lyp;)Lad;

    move-result-object p1

    throw p1
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method
