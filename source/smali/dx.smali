###### Class defpackage.dx (dx)
.class public Ldx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ldx;

.field public static final b:Ldx;

.field public static final c:Ldx;

.field public static final d:Ldx;

.field public static final e:Ldx;

.field public static final f:Ldx;

.field public static final g:Ldx;

.field public static final h:Ldx;

.field public static final i:Ldx;

.field public static final j:Ldx;

.field public static final k:Ldx;

.field public static final l:Ldx;

.field public static final m:Ldx;

.field public static final n:Ldx;

.field public static final o:Ldx;


# instance fields
.field public final p:I

.field public final q:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [Ldx;

    .line 5
    sput-object v0, Ldx;->a:[Ldx;

    .line 7
    new-instance v0, Ldx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->b:Ldx;

    .line 8
    new-instance v0, Ldx;

    const/4 v1, 0x1

    const v2, 0x7fb238

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->c:Ldx;

    .line 9
    new-instance v0, Ldx;

    const/4 v1, 0x2

    const v2, 0xf7e9a3

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->d:Ldx;

    .line 10
    new-instance v0, Ldx;

    const/4 v1, 0x3

    const v2, 0xa7a7a7

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->e:Ldx;

    .line 11
    new-instance v0, Ldx;

    const/4 v1, 0x4

    const/high16 v3, 0xff0000

    invoke-direct {v0, v1, v3}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->f:Ldx;

    .line 12
    new-instance v0, Ldx;

    const/4 v1, 0x5

    const v3, 0xa0a0ff

    invoke-direct {v0, v1, v3}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->g:Ldx;

    .line 13
    new-instance v0, Ldx;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->h:Ldx;

    .line 14
    new-instance v0, Ldx;

    const/4 v1, 0x7

    const/16 v2, 0x7c00

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->i:Ldx;

    .line 15
    new-instance v0, Ldx;

    const/16 v1, 0x8

    const v2, 0xffffff

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->j:Ldx;

    .line 16
    new-instance v0, Ldx;

    const/16 v1, 0x9

    const v2, 0xa4a8b8

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->k:Ldx;

    .line 17
    new-instance v0, Ldx;

    const/16 v1, 0xa

    const v2, 0xb76a2f

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->l:Ldx;

    .line 18
    new-instance v0, Ldx;

    const/16 v1, 0xb

    const v2, 0x707070

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->m:Ldx;

    .line 19
    new-instance v0, Ldx;

    const/16 v1, 0xc

    const v2, 0x4040ff

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->n:Ldx;

    .line 20
    new-instance v0, Ldx;

    const/16 v1, 0xd

    const v2, 0x685332

    invoke-direct {v0, v1, v2}, Ldx;-><init>(II)V

    sput-object v0, Ldx;->o:Ldx;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Ldx;->q:I

    .line 27
    iput p2, p0, Ldx;->p:I

    .line 28
    sget-object p2, Ldx;->a:[Ldx;

    aput-object p0, p2, p1

    return-void
.end method
