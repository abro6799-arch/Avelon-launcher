###### Class defpackage.vf (vf)
.class public Lvf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljg;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lbt;

.field public g:Lsn;


# direct methods
.method public constructor <init>(IIIILbt;)V
    .registers 13

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Ljg;->a:Ljg;

    iput-object v0, p0, Lvf;->a:Ljg;

    .line 18
    iput p1, p0, Lvf;->b:I

    .line 19
    iput p2, p0, Lvf;->c:I

    .line 20
    iput p3, p0, Lvf;->d:I

    .line 21
    iput p4, p0, Lvf;->e:I

    .line 22
    iget-wide v1, p5, Lbt;->a:D

    iget-wide v3, p5, Lbt;->b:D

    iget-wide v5, p5, Lbt;->c:D

    invoke-static/range {v1 .. v6}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    iput-object p1, p0, Lvf;->f:Lbt;

    return-void
.end method

.method public constructor <init>(Lsn;)V
    .registers 9

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Ljg;->b:Ljg;

    iput-object v0, p0, Lvf;->a:Ljg;

    .line 27
    iput-object p1, p0, Lvf;->g:Lsn;

    .line 28
    iget-wide v1, p1, Lsn;->aM:D

    iget-wide v3, p1, Lsn;->aN:D

    iget-wide v5, p1, Lsn;->aO:D

    invoke-static/range {v1 .. v6}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    iput-object p1, p0, Lvf;->f:Lbt;

    return-void
.end method
