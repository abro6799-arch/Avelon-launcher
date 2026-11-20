###### Class defpackage.ld (ld)
.class public Lld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf;


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lld;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Lfd;II)Llm;
    .registers 11

    .line 25
    iget-object v0, p0, Lld;->a:Ljava/io/File;

    invoke-static {v0, p2, p3}, Lrj;->c(Ljava/io/File;II)Ljava/io/DataInputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c0

    .line 29
    invoke-static {v0}, Las;->a(Ljava/io/DataInput;)Lnu;

    move-result-object v0

    const-string v2, "Level"

    .line 34
    invoke-virtual {v0, v2}, Lnu;->b(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ","

    const-string v5, "Chunk file at "

    if-nez v3, :cond_36

    .line 35
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is missing level data, skipping"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    .line 38
    :cond_36
    invoke-virtual {v0, v2}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v3

    const-string v6, "Blocks"

    invoke-virtual {v3, v6}, Lnu;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 39
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is missing block data, skipping"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    .line 42
    :cond_5f
    invoke-virtual {v0, v2}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v1

    invoke-static {p1, v1}, Lto;->a(Lfd;Lnu;)Llm;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p2, p3}, Llm;->a(II)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is in the wrong location; relocating. (Expected "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", got "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Llm;->j:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Llm;->k:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "xPos"

    .line 45
    invoke-virtual {v0, v1, p2}, Lnu;->a(Ljava/lang/String;I)V

    const-string p2, "zPos"

    .line 46
    invoke-virtual {v0, p2, p3}, Lnu;->a(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, v2}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p2

    invoke-static {p1, p2}, Lto;->a(Lfd;Lnu;)Llm;

    move-result-object v1

    .line 49
    :cond_bd
    invoke-virtual {v1}, Llm;->i()V

    :cond_c0
    return-object v1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lfd;Llm;)V
    .registers 7

    .line 54
    invoke-virtual {p1}, Lfd;->r()V

    .line 58
    :try_start_3
    iget-object v0, p0, Lld;->a:Ljava/io/File;

    iget v1, p2, Llm;->j:I

    iget v2, p2, Llm;->k:I

    invoke-static {v0, v1, v2}, Lrj;->d(Ljava/io/File;II)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 59
    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    .line 60
    new-instance v2, Lnu;

    invoke-direct {v2}, Lnu;-><init>()V

    const-string v3, "Level"

    .line 61
    invoke-virtual {v1, v3, v2}, Lnu;->a(Ljava/lang/String;Lij;)V

    .line 62
    invoke-static {p2, p1, v2}, Lto;->a(Llm;Lfd;Lnu;)V

    .line 63
    invoke-static {v1, v0}, Las;->a(Lnu;Ljava/io/DataOutput;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 66
    invoke-virtual {p1}, Lfd;->x()Lei;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lei;->g()J

    move-result-wide v0

    iget-object v2, p0, Lld;->a:Ljava/io/File;

    iget v3, p2, Llm;->j:I

    iget p2, p2, Llm;->k:I

    invoke-static {v2, v3, p2}, Lrj;->b(Ljava/io/File;II)I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lei;->b(J)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Lfd;Llm;)V
    .registers 3

    return-void
.end method
