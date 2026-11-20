###### Class defpackage.wm (wm)
.class Lwm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field b:Ljava/lang/Object;

.field c:Lwm;

.field final d:I


# direct methods
.method constructor <init>(IILjava/lang/Object;Lwm;)V
    .registers 5

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p3, p0, Lwm;->b:Ljava/lang/Object;

    .line 178
    iput-object p4, p0, Lwm;->c:Lwm;

    .line 179
    iput p2, p0, Lwm;->a:I

    .line 180
    iput p1, p0, Lwm;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 184
    iget v0, p0, Lwm;->a:I

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 188
    iget-object v0, p0, Lwm;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 193
    instance-of v0, p1, Lwm;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 194
    :cond_6
    check-cast p1, Lwm;

    .line 195
    invoke-virtual {p0}, Lwm;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lwm;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq v0, v2, :cond_22

    if-eqz v0, :cond_35

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 198
    :cond_22
    invoke-virtual {p0}, Lwm;->b()Ljava/lang/Object;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lwm;->b()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_36

    if-eqz v0, :cond_35

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    return v1

    :cond_36
    :goto_36
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 206
    iget v0, p0, Lwm;->a:I

    invoke-static {v0}, Ljx;->d(I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lwm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwm;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
