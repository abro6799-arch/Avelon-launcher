###### Class defpackage.ca (ca)
.class public Lca;
.super Lki;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "tile.bed.notValid"

    const/4 v1, 0x0

    .line 11
    filled-new-array {v0, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 2

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lca;->b:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 29
    iget v0, p0, Lca;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 33
    invoke-virtual {p1, p0}, Lti;->a(Lca;)V

    return-void
.end method
