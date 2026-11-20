###### Class defpackage.as (as)
.class public Las;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lnu;
    .registers 2

    .line 46
    invoke-static {p0}, Lij;->b(Ljava/io/DataInput;)Lij;

    move-result-object p0

    .line 47
    instance-of v0, p0, Lnu;

    if-eqz v0, :cond_b

    check-cast p0, Lnu;

    return-object p0

    .line 48
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Root tag must be a named compound tag"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Lnu;
    .registers 3

    .line 8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    :try_start_a
    invoke-static {v0}, Las;->a(Ljava/io/DataInput;)Lnu;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p0
.end method

.method public static a(Lnu;Ljava/io/DataOutput;)V
    .registers 2

    .line 52
    invoke-static {p0, p1}, Lij;->a(Lij;Ljava/io/DataOutput;)V

    return-void
.end method

.method public static a(Lnu;Ljava/io/OutputStream;)V
    .registers 4

    .line 17
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    :try_start_a
    invoke-static {p0, v0}, Las;->a(Lnu;Ljava/io/DataOutput;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 21
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_11
    move-exception p0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p0
.end method
