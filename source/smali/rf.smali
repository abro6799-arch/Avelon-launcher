###### Class defpackage.rf (rf)
.class public Lrf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lps;

.field public b:Lps;


# direct methods
.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v1, Lps;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9}, Lps;-><init>(II)V

    iput-object v1, v0, Lrf;->a:Lps;

    const/high16 v2, -0x3ec00000    # -12.0f

    const/high16 v3, -0x3ea00000    # -14.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x18

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 11
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 13
    new-instance v10, Lps;

    const/16 v1, 0xe

    invoke-direct {v10, v9, v1}, Lps;-><init>(II)V

    iput-object v10, v0, Lrf;->b:Lps;

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x2

    const/16 v15, 0xe

    const/16 v16, 0x2

    const/16 v17, 0x0

    .line 14
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 19
    iget-object v0, p0, Lrf;->a:Lps;

    const/high16 v1, 0x3d800000    # 0.0625f

    invoke-virtual {v0, v1}, Lps;->a(F)V

    .line 20
    iget-object v0, p0, Lrf;->b:Lps;

    invoke-virtual {v0, v1}, Lps;->a(F)V

    return-void
.end method
