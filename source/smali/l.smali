###### Class defpackage.l (l)
.class public Ll;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 7
    sget-object v0, Lln;->f:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    .line 8
    iput p2, p0, Ll;->bm:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    .line 12
    iget p1, p0, Ll;->bm:I

    return p1
.end method
