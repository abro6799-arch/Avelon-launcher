###### Class defpackage.ax (ax)
.class public Lax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:B

.field public b:B

.field public c:B

.field public d:B

.field final synthetic e:Liu;


# direct methods
.method public constructor <init>(Liu;BBBB)V
    .registers 6

    .line 19
    iput-object p1, p0, Lax;->e:Liu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-byte p2, p0, Lax;->a:B

    .line 21
    iput-byte p3, p0, Lax;->b:B

    .line 22
    iput-byte p4, p0, Lax;->c:B

    .line 23
    iput-byte p5, p0, Lax;->d:B

    return-void
.end method
