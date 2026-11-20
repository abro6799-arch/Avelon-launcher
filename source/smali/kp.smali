###### Class defpackage.kp (kp)
.class public Lkp;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnet/minecraft/client/Minecraft;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 2

    .line 1229
    iput-object p1, p0, Lkp;->a:Lnet/minecraft/client/Minecraft;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
