###### Class defpackage.kh (kh)
.class public Lkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgt;


# instance fields
.field final synthetic a:Lnet/minecraft/client/Minecraft;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lkh;->a:Lnet/minecraft/client/Minecraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 324
    iget-object v0, p0, Lkh;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v0, v0, Lkv;->r:Lqb;

    iget v0, v0, Lqb;->b:I

    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
