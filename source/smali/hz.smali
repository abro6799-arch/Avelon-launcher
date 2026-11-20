###### Class defpackage.hz (hz)
.class Lhz;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lqj;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lqj;II)V
    .registers 4

    .line 252
    iput-object p1, p0, Lhz;->a:Lqj;

    const/16 p1, 0x1fa0

    .line 253
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 254
    iput p2, p0, Lhz;->b:I

    .line 255
    iput p3, p0, Lhz;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 259
    iget-object v0, p0, Lhz;->a:Lqj;

    iget v1, p0, Lhz;->b:I

    iget v2, p0, Lhz;->c:I

    iget-object v3, p0, Lhz;->buf:[B

    iget v4, p0, Lhz;->count:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lqj;->a(II[BI)V

    return-void
.end method
