###### Class defpackage.re (re)
.class public Lre;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmcshim/awt/image/BufferedImage;

.field public b:Lfd;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Lfd;II)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lre;->e:Z

    .line 15
    iput-boolean v0, p0, Lre;->f:Z

    .line 17
    iput v0, p0, Lre;->g:I

    .line 19
    iput-boolean v0, p0, Lre;->h:Z

    .line 22
    iput-object p1, p0, Lre;->b:Lfd;

    .line 23
    invoke-virtual {p0, p2, p3}, Lre;->a(II)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lre;->e:Z

    .line 28
    iput p1, p0, Lre;->c:I

    .line 29
    iput p2, p0, Lre;->d:I

    .line 30
    iput v0, p0, Lre;->g:I

    .line 31
    iput-boolean v0, p0, Lre;->h:Z

    return-void
.end method

.method public a(Lfd;II)V
    .registers 4

    .line 35
    iput-object p1, p0, Lre;->b:Lfd;

    .line 36
    invoke-virtual {p0, p2, p3}, Lre;->a(II)V

    return-void
.end method
