###### Class defpackage.si (si)
.class public Lsi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgs;

.field public b:[I

.field public c:[I

.field final synthetic d:Liu;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Liu;Lgs;)V
    .registers 5

    .line 35
    iput-object p1, p0, Lsi;->d:Liu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array v0, p1, [I

    .line 29
    iput-object v0, p0, Lsi;->b:[I

    new-array p1, p1, [I

    .line 30
    iput-object p1, p0, Lsi;->c:[I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lsi;->e:I

    .line 32
    iput p1, p0, Lsi;->f:I

    .line 36
    iput-object p2, p0, Lsi;->a:Lgs;

    move p2, p1

    .line 37
    :goto_17
    iget-object v0, p0, Lsi;->b:[I

    array-length v1, v0

    if-ge p2, v1, :cond_27

    .line 38
    aput p1, v0, p2

    .line 39
    iget-object v0, p0, Lsi;->c:[I

    const/16 v1, 0x7f

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_27
    return-void
.end method
