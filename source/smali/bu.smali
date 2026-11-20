###### Class defpackage.bu (bu)
.class public final enum Lbu;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lbu;

.field public static final enum b:Lbu;

.field public static final enum c:Lbu;

.field public static final enum d:Lbu;

.field public static final enum e:Lbu;

.field private static final synthetic j:[Lbu;


# instance fields
.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 22
    new-instance v7, Lbu;

    const-string v1, "WOOD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3b

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lbu;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v7, Lbu;->a:Lbu;

    .line 23
    new-instance v0, Lbu;

    const-string v9, "STONE"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v12, 0x83

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lbu;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lbu;->b:Lbu;

    .line 24
    new-instance v1, Lbu;

    const-string v16, "IRON"

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0xfa

    const/high16 v20, 0x40c00000    # 6.0f

    const/16 v21, 0x2

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lbu;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v1, Lbu;->c:Lbu;

    .line 25
    new-instance v2, Lbu;

    const-string v9, "EMERALD"

    const/4 v10, 0x3

    const/4 v11, 0x3

    const/16 v12, 0x619

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v14, 0x3

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lbu;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v2, Lbu;->d:Lbu;

    .line 26
    new-instance v3, Lbu;

    const-string v16, "GOLD"

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x20

    const/high16 v20, 0x41400000    # 12.0f

    const/16 v21, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lbu;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v3, Lbu;->e:Lbu;

    .line 21
    filled-new-array {v7, v0, v1, v2, v3}, [Lbu;

    move-result-object v0

    sput-object v0, Lbu;->j:[Lbu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIFI)V
    .registers 7

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lbu;->f:I

    .line 35
    iput p4, p0, Lbu;->g:I

    .line 36
    iput p5, p0, Lbu;->h:F

    .line 37
    iput p6, p0, Lbu;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbu;
    .registers 2

    .line 21
    const-class v0, Lbu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbu;

    return-object p0
.end method

.method public static values()[Lbu;
    .registers 1

    .line 21
    sget-object v0, Lbu;->j:[Lbu;

    invoke-virtual {v0}, [Lbu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbu;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 41
    iget v0, p0, Lbu;->g:I

    return v0
.end method

.method public b()F
    .registers 2

    .line 45
    iget v0, p0, Lbu;->h:F

    return v0
.end method

.method public c()I
    .registers 2

    .line 49
    iget v0, p0, Lbu;->i:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 53
    iget v0, p0, Lbu;->f:I

    return v0
.end method
