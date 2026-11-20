###### Class defpackage.lk (lk)
.class public final enum Llk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Llk;

.field public static final enum b:Llk;

.field public static final enum c:Llk;

.field private static final synthetic h:[Llk;


# instance fields
.field private final d:Ljava/lang/Class;

.field private final e:I

.field private final f:Lln;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 10
    new-instance v7, Llk;

    const-string v1, "monster"

    const/4 v2, 0x0

    const-class v3, Lff;

    const/16 v4, 0x46

    sget-object v5, Lln;->a:Lln;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Llk;-><init>(Ljava/lang/String;ILjava/lang/Class;ILln;Z)V

    sput-object v7, Llk;->a:Llk;

    .line 12
    new-instance v0, Llk;

    const-string v9, "creature"

    const/4 v10, 0x1

    const-class v11, Lbg;

    const/16 v12, 0xf

    sget-object v13, Lln;->a:Lln;

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Llk;-><init>(Ljava/lang/String;ILjava/lang/Class;ILln;Z)V

    sput-object v0, Llk;->b:Llk;

    .line 14
    new-instance v1, Llk;

    const-string v16, "waterCreature"

    const/16 v17, 0x2

    const-class v18, Lar;

    const/16 v19, 0x5

    sget-object v20, Lln;->g:Lln;

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Llk;-><init>(Ljava/lang/String;ILjava/lang/Class;ILln;Z)V

    sput-object v1, Llk;->c:Llk;

    .line 8
    filled-new-array {v7, v0, v1}, [Llk;

    move-result-object v0

    sput-object v0, Llk;->h:[Llk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;ILln;Z)V
    .registers 7

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Llk;->d:Ljava/lang/Class;

    .line 23
    iput p4, p0, Llk;->e:I

    .line 24
    iput-object p5, p0, Llk;->f:Lln;

    .line 25
    iput-boolean p6, p0, Llk;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llk;
    .registers 2

    .line 8
    const-class v0, Llk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llk;

    return-object p0
.end method

.method public static values()[Llk;
    .registers 1

    .line 8
    sget-object v0, Llk;->h:[Llk;

    invoke-virtual {v0}, [Llk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llk;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2

    .line 29
    iget-object v0, p0, Llk;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 33
    iget v0, p0, Llk;->e:I

    return v0
.end method

.method public c()Lln;
    .registers 2

    .line 37
    iget-object v0, p0, Llk;->f:Lln;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Llk;->g:Z

    return v0
.end method
