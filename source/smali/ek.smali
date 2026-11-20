###### Class defpackage.ek (ek)
.class public Lek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmcshim/awt/image/BufferedImage;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnf;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lek;->b:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lek;->c:I

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lek;->d:Z

    .line 16
    new-instance v0, Ltj;

    invoke-direct {v0, p0, p1, p2}, Ltj;-><init>(Lek;Ljava/lang/String;Lnf;)V

    invoke-virtual {v0}, Ltj;->start()V

    return-void
.end method
