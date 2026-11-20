###### Class defpackage.f (f)
.class public final Lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lf;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lqa;
    .registers 2

    .line 25
    iget-object v0, p0, Lf;->a:Ljava/lang/String;

    invoke-static {v0}, Lol;->a(Ljava/lang/String;)Lqa;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lgu;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lf;->a()Lqa;

    move-result-object v0

    return-object v0
.end method
