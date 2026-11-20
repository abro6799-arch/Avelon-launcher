###### Class defpackage.oc (oc)
.class final Loc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb;


# instance fields
.field private final a:Lgu;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lol;->b(Ljava/lang/String;)Lgu;

    move-result-object p1

    iput-object p1, p0, Loc;->a:Lgu;

    return-void
.end method


# virtual methods
.method public b()Lgu;
    .registers 2

    .line 22
    iget-object v0, p0, Loc;->a:Lgu;

    return-object v0
.end method
