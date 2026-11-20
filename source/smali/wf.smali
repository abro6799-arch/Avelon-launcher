###### Class defpackage.wf (wf)
.class public Lwf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lwf;->a:I

    .line 8
    iput p2, p0, Lwf;->b:I

    .line 9
    iput p3, p0, Lwf;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 13
    instance-of v0, p1, Lwf;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 15
    check-cast p1, Lwf;

    .line 16
    iget v0, p1, Lwf;->a:I

    iget v2, p0, Lwf;->a:I

    if-ne v0, v2, :cond_1a

    iget v0, p1, Lwf;->b:I

    iget v2, p0, Lwf;->b:I

    if-ne v0, v2, :cond_1a

    iget p1, p1, Lwf;->c:I

    iget v0, p0, Lwf;->c:I

    if-ne p1, v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 23
    iget v0, p0, Lwf;->a:I

    const v1, 0x88f9fa

    mul-int/2addr v0, v1

    iget v1, p0, Lwf;->b:I

    const v2, 0xef88b

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lwf;->c:I

    add-int/2addr v0, v1

    return v0
.end method
