###### Class defpackage.vt (vt)
.class public Lvt;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lqv;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Lki;-><init>()V

    .line 18
    iget v0, p1, Lqv;->aD:I

    iput v0, p0, Lvt;->a:I

    .line 19
    iget v0, p1, Lqv;->b:I

    iput v0, p0, Lvt;->b:I

    .line 20
    iget v0, p1, Lqv;->c:I

    iput v0, p0, Lvt;->c:I

    .line 21
    iget v0, p1, Lqv;->d:I

    iput v0, p0, Lvt;->d:I

    .line 22
    iget v0, p1, Lqv;->a:I

    iput v0, p0, Lvt;->e:I

    .line 23
    iget-object p1, p1, Lqv;->e:Liq;

    iget-object p1, p1, Liq;->A:Ljava/lang/String;

    iput-object p1, p0, Lvt;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lvt;->a:I

    .line 28
    sget v0, Liq;->z:I

    invoke-static {p1, v0}, Lvt;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvt;->f:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lvt;->b:I

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lvt;->c:I

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lvt;->d:I

    .line 32
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lvt;->e:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 36
    iget v0, p0, Lvt;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lvt;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lvt;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 38
    iget v0, p0, Lvt;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 39
    iget v0, p0, Lvt;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 40
    iget v0, p0, Lvt;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 41
    iget v0, p0, Lvt;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 45
    invoke-virtual {p1, p0}, Lti;->a(Lvt;)V

    return-void
.end method
