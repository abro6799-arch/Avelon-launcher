###### Class defpackage.dz (dz)
.class Ldz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Ldz;->a:Ljava/io/File;

    .line 248
    sget-object v0, Lrs;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldz;->b:I

    const/4 v0, 0x2

    .line 251
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ldz;->c:I

    goto :goto_33

    :cond_2e
    const/4 p1, 0x0

    .line 253
    iput p1, p0, Ldz;->b:I

    .line 254
    iput p1, p0, Ldz;->c:I

    :goto_33
    return-void
.end method


# virtual methods
.method public a(Ldz;)I
    .registers 4

    .line 261
    iget v0, p0, Ldz;->b:I

    shr-int/lit8 v0, v0, 0x5

    .line 262
    iget v1, p1, Ldz;->b:I

    shr-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_14

    .line 264
    iget v0, p0, Ldz;->c:I

    shr-int/lit8 v0, v0, 0x5

    .line 265
    iget p1, p1, Ldz;->c:I

    shr-int/lit8 p1, p1, 0x5

    sub-int/2addr v0, p1

    return v0

    :cond_14
    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/io/File;
    .registers 2

    .line 273
    iget-object v0, p0, Ldz;->a:Ljava/io/File;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 277
    iget v0, p0, Ldz;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 281
    iget v0, p0, Ldz;->c:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 240
    check-cast p1, Ldz;

    invoke-virtual {p0, p1}, Ldz;->a(Ldz;)I

    move-result p1

    return p1
.end method
