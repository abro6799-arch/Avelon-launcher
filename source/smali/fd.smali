###### Class defpackage.fd (fd)
.class public Lfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxp;


# static fields
.field static A:I


# instance fields
.field public B:Z

.field private C:Ljava/util/List;

.field private D:Ljava/util/List;

.field private E:Ljava/util/TreeSet;

.field private F:Ljava/util/Set;

.field private G:Ljava/util/List;

.field private H:J

.field private I:J

.field private J:Z

.field private K:Ljava/util/ArrayList;

.field private L:Z

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Ljava/util/Set;

.field private Q:I

.field private R:Ljava/util/List;

.field public a:Z

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:I

.field protected g:I

.field public gb:I

.field protected final h:I

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:I

.field public n:I

.field public o:Z

.field protected p:I

.field public q:I

.field public r:Ljava/util/Random;

.field public s:Z

.field public final t:Lxa;

.field protected u:Ljava/util/List;

.field protected v:Lcl;

.field protected final w:Lwt;

.field protected x:Lei;

.field public y:Z

.field public z:Lhc;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lfd;Lxa;)V
    .registers 6

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lfd;->a:Z

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->C:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->b:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->D:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lfd;->E:Ljava/util/TreeSet;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfd;->F:Ljava/util/Set;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->c:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->G:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->d:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->e:Ljava/util/List;

    const-wide/32 v1, 0xffffff

    .line 48
    iput-wide v1, p0, Lfd;->H:J

    .line 50
    iput v0, p0, Lfd;->f:I

    .line 52
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lfd;->g:I

    const v1, 0x3c6ef35f

    .line 53
    iput v1, p0, Lfd;->h:I

    .line 56
    iput v0, p0, Lfd;->m:I

    .line 57
    iput v0, p0, Lfd;->n:I

    .line 59
    iput-boolean v0, p0, Lfd;->o:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lfd;->I:J

    const/16 v1, 0xc8

    .line 63
    iput v1, p0, Lfd;->p:I

    .line 66
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lfd;->r:Ljava/util/Random;

    .line 67
    iput-boolean v0, p0, Lfd;->s:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->u:Ljava/util/List;

    .line 825
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->K:Ljava/util/ArrayList;

    .line 1498
    iput v0, p0, Lfd;->M:I

    const/4 v1, 0x1

    .line 1499
    iput-boolean v1, p0, Lfd;->N:Z

    .line 1500
    iput-boolean v1, p0, Lfd;->O:Z

    .line 1691
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfd;->P:Ljava/util/Set;

    .line 1693
    iget-object v1, p0, Lfd;->r:Ljava/util/Random;

    const/16 v2, 0x2ee0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lfd;->Q:I

    .line 1832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->R:Ljava/util/List;

    .line 1833
    iput-boolean v0, p0, Lfd;->B:Z

    .line 120
    iget-wide v0, p1, Lfd;->I:J

    iput-wide v0, p0, Lfd;->I:J

    .line 121
    iget-object v0, p1, Lfd;->w:Lwt;

    iput-object v0, p0, Lfd;->w:Lwt;

    .line 122
    new-instance v1, Lei;

    iget-object p1, p1, Lfd;->x:Lei;

    invoke-direct {v1, p1}, Lei;-><init>(Lei;)V

    iput-object v1, p0, Lfd;->x:Lei;

    .line 123
    new-instance p1, Lhc;

    invoke-direct {p1, v0}, Lhc;-><init>(Lwt;)V

    iput-object p1, p0, Lfd;->z:Lhc;

    .line 125
    iput-object p2, p0, Lfd;->t:Lxa;

    .line 126
    invoke-virtual {p2, p0}, Lxa;->a(Lfd;)V

    .line 127
    invoke-virtual {p0}, Lfd;->b()Lcl;

    move-result-object p1

    iput-object p1, p0, Lfd;->v:Lcl;

    .line 128
    invoke-virtual {p0}, Lfd;->k()V

    .line 129
    invoke-direct {p0}, Lfd;->E()V

    return-void
.end method

.method public constructor <init>(Lwt;Ljava/lang/String;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 133
    invoke-direct/range {v0 .. v5}, Lfd;-><init>(Lwt;Ljava/lang/String;JLxa;)V

    return-void
.end method

.method public constructor <init>(Lwt;Ljava/lang/String;JLxa;)V
    .registers 10

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lfd;->a:Z

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->C:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->b:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->D:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lfd;->E:Ljava/util/TreeSet;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfd;->F:Ljava/util/Set;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->c:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->G:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->d:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->e:Ljava/util/List;

    const-wide/32 v1, 0xffffff

    .line 48
    iput-wide v1, p0, Lfd;->H:J

    .line 50
    iput v0, p0, Lfd;->f:I

    .line 52
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lfd;->g:I

    const v1, 0x3c6ef35f

    .line 53
    iput v1, p0, Lfd;->h:I

    .line 56
    iput v0, p0, Lfd;->m:I

    .line 57
    iput v0, p0, Lfd;->n:I

    .line 59
    iput-boolean v0, p0, Lfd;->o:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lfd;->I:J

    const/16 v1, 0xc8

    .line 63
    iput v1, p0, Lfd;->p:I

    .line 66
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lfd;->r:Ljava/util/Random;

    .line 67
    iput-boolean v0, p0, Lfd;->s:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->u:Ljava/util/List;

    .line 825
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->K:Ljava/util/ArrayList;

    .line 1498
    iput v0, p0, Lfd;->M:I

    const/4 v1, 0x1

    .line 1499
    iput-boolean v1, p0, Lfd;->N:Z

    .line 1500
    iput-boolean v1, p0, Lfd;->O:Z

    .line 1691
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lfd;->P:Ljava/util/Set;

    .line 1693
    iget-object v2, p0, Lfd;->r:Ljava/util/Random;

    const/16 v3, 0x2ee0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lfd;->Q:I

    .line 1832
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfd;->R:Ljava/util/List;

    .line 1833
    iput-boolean v0, p0, Lfd;->B:Z

    .line 137
    iput-object p1, p0, Lfd;->w:Lwt;

    .line 138
    new-instance v2, Lhc;

    invoke-direct {v2, p1}, Lhc;-><init>(Lwt;)V

    iput-object v2, p0, Lfd;->z:Lhc;

    .line 140
    invoke-interface {p1}, Lwt;->c()Lei;

    move-result-object p1

    iput-object p1, p0, Lfd;->x:Lei;

    if-nez p1, :cond_b7

    move v2, v1

    goto :goto_b8

    :cond_b7
    move v2, v0

    .line 141
    :goto_b8
    iput-boolean v2, p0, Lfd;->s:Z

    if-eqz p5, :cond_bf

    .line 144
    iput-object p5, p0, Lfd;->t:Lxa;

    goto :goto_d5

    :cond_bf
    if-eqz p1, :cond_cf

    .line 145
    invoke-virtual {p1}, Lei;->i()I

    move-result p1

    const/4 p5, -0x1

    if-ne p1, p5, :cond_cf

    .line 146
    invoke-static {p5}, Lxa;->a(I)Lxa;

    move-result-object p1

    iput-object p1, p0, Lfd;->t:Lxa;

    goto :goto_d5

    .line 148
    :cond_cf
    invoke-static {v0}, Lxa;->a(I)Lxa;

    move-result-object p1

    iput-object p1, p0, Lfd;->t:Lxa;

    .line 152
    :goto_d5
    iget-object p1, p0, Lfd;->x:Lei;

    if-nez p1, :cond_e2

    .line 153
    new-instance p1, Lei;

    invoke-direct {p1, p3, p4, p2}, Lei;-><init>(JLjava/lang/String;)V

    iput-object p1, p0, Lfd;->x:Lei;

    move v0, v1

    goto :goto_e5

    .line 156
    :cond_e2
    invoke-virtual {p1, p2}, Lei;->a(Ljava/lang/String;)V

    .line 159
    :goto_e5
    iget-object p1, p0, Lfd;->t:Lxa;

    invoke-virtual {p1, p0}, Lxa;->a(Lfd;)V

    .line 160
    invoke-virtual {p0}, Lfd;->b()Lcl;

    move-result-object p1

    iput-object p1, p0, Lfd;->v:Lcl;

    if-eqz v0, :cond_f5

    .line 163
    invoke-virtual {p0}, Lfd;->c()V

    .line 167
    :cond_f5
    invoke-virtual {p0}, Lfd;->k()V

    .line 168
    invoke-direct {p0}, Lfd;->E()V

    return-void
.end method

.method public constructor <init>(Lwt;Ljava/lang/String;Lxa;J)V
    .registers 9

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lfd;->a:Z

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->C:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->b:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->D:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lfd;->E:Ljava/util/TreeSet;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfd;->F:Ljava/util/Set;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->c:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->G:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->d:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->e:Ljava/util/List;

    const-wide/32 v1, 0xffffff

    .line 48
    iput-wide v1, p0, Lfd;->H:J

    .line 50
    iput v0, p0, Lfd;->f:I

    .line 52
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lfd;->g:I

    const v1, 0x3c6ef35f

    .line 53
    iput v1, p0, Lfd;->h:I

    .line 56
    iput v0, p0, Lfd;->m:I

    .line 57
    iput v0, p0, Lfd;->n:I

    .line 59
    iput-boolean v0, p0, Lfd;->o:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lfd;->I:J

    const/16 v1, 0xc8

    .line 63
    iput v1, p0, Lfd;->p:I

    .line 66
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lfd;->r:Ljava/util/Random;

    .line 67
    iput-boolean v0, p0, Lfd;->s:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->u:Ljava/util/List;

    .line 825
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->K:Ljava/util/ArrayList;

    .line 1498
    iput v0, p0, Lfd;->M:I

    const/4 v1, 0x1

    .line 1499
    iput-boolean v1, p0, Lfd;->N:Z

    .line 1500
    iput-boolean v1, p0, Lfd;->O:Z

    .line 1691
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfd;->P:Ljava/util/Set;

    .line 1693
    iget-object v1, p0, Lfd;->r:Ljava/util/Random;

    const/16 v2, 0x2ee0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lfd;->Q:I

    .line 1832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfd;->R:Ljava/util/List;

    .line 1833
    iput-boolean v0, p0, Lfd;->B:Z

    .line 107
    iput-object p1, p0, Lfd;->w:Lwt;

    .line 108
    new-instance v0, Lei;

    invoke-direct {v0, p4, p5, p2}, Lei;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lfd;->x:Lei;

    .line 109
    iput-object p3, p0, Lfd;->t:Lxa;

    .line 110
    new-instance p2, Lhc;

    invoke-direct {p2, p1}, Lhc;-><init>(Lwt;)V

    iput-object p2, p0, Lfd;->z:Lhc;

    .line 112
    invoke-virtual {p3, p0}, Lxa;->a(Lfd;)V

    .line 113
    invoke-virtual {p0}, Lfd;->b()Lcl;

    move-result-object p1

    iput-object p1, p0, Lfd;->v:Lcl;

    .line 115
    invoke-virtual {p0}, Lfd;->k()V

    .line 116
    invoke-direct {p0}, Lfd;->E()V

    return-void
.end method

.method private D()V
    .registers 4

    .line 252
    invoke-virtual {p0}, Lfd;->r()V

    .line 254
    iget-object v0, p0, Lfd;->w:Lwt;

    iget-object v1, p0, Lfd;->x:Lei;

    iget-object v2, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lwt;->a(Lei;Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lfd;->z:Lhc;

    invoke-virtual {v0}, Lhc;->a()V

    return-void
.end method

.method private E()V
    .registers 3

    .line 1619
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->o()Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1620
    iput v0, p0, Lfd;->j:F

    .line 1621
    iget-object v1, p0, Lfd;->x:Lei;

    invoke-virtual {v1}, Lei;->m()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1622
    iput v0, p0, Lfd;->l:F

    :cond_16
    return-void
.end method

.method private F()V
    .registers 3

    .line 1685
    iget-object v0, p0, Lfd;->x:Lei;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lei;->f(I)V

    .line 1686
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0, v1}, Lei;->b(Z)V

    .line 1687
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0, v1}, Lei;->e(I)V

    .line 1688
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0, v1}, Lei;->a(Z)V

    return-void
.end method

.method private f(II)Z
    .registers 4

    .line 305
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0, p1, p2}, Lcl;->a(II)Z

    move-result p1

    return p1
.end method

.method private l(IIII)V
    .registers 13

    .line 451
    iget-boolean v0, p0, Lfd;->o:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lfd;->B:Z

    if-eqz v0, :cond_9

    goto :goto_1b

    .line 452
    :cond_9
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result v1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1b

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 453
    invoke-virtual/range {v2 .. v7}, Luu;->b(Lfd;IIII)V

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public A()Z
    .registers 4

    .line 2217
    iget-boolean v0, p0, Lfd;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lfd;->B:Z

    if-nez v0, :cond_24

    .line 2219
    iget-object v0, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs;

    .line 2221
    invoke-virtual {v2}, Lgs;->O()Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_24
    return v1
.end method

.method public B()Z
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2245
    invoke-virtual {p0, v0}, Lfd;->f(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public C()Z
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2249
    invoke-virtual {p0, v0}, Lfd;->g(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public a(IIII)F
    .registers 5

    .line 574
    invoke-virtual {p0, p1, p2, p3}, Lfd;->n(III)I

    move-result p1

    if-ge p1, p4, :cond_7

    goto :goto_8

    :cond_7
    move p4, p1

    .line 576
    :goto_8
    iget-object p1, p0, Lfd;->t:Lxa;

    iget-object p1, p1, Lxa;->f:[F

    aget p1, p1, p4

    return p1
.end method

.method public a(Lbt;Leq;)F
    .registers 29

    move-object/from16 v0, p2

    .line 1396
    iget-wide v1, v0, Leq;->d:D

    iget-wide v3, v0, Leq;->a:D

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v5

    div-double v1, v5, v1

    .line 1397
    iget-wide v7, v0, Leq;->e:D

    iget-wide v9, v0, Leq;->b:D

    sub-double/2addr v7, v9

    mul-double/2addr v7, v3

    add-double/2addr v7, v5

    div-double v7, v5, v7

    .line 1398
    iget-wide v9, v0, Leq;->f:D

    iget-wide v11, v0, Leq;->c:D

    sub-double/2addr v9, v11

    mul-double/2addr v9, v3

    add-double/2addr v9, v5

    div-double/2addr v5, v9

    const/4 v3, 0x0

    move v9, v3

    const/4 v10, 0x0

    :goto_23
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v12, v10, v11

    if-gtz v12, :cond_8f

    const/4 v12, 0x0

    :goto_2a
    cmpg-float v13, v12, v11

    if-gtz v13, :cond_81

    const/4 v13, 0x0

    :goto_2f
    cmpg-float v14, v13, v11

    if-gtz v14, :cond_72

    .line 1404
    iget-wide v14, v0, Leq;->a:D

    move-wide/from16 v16, v5

    iget-wide v4, v0, Leq;->d:D

    move-wide/from16 v18, v7

    iget-wide v6, v0, Leq;->a:D

    sub-double/2addr v4, v6

    float-to-double v6, v10

    mul-double/2addr v4, v6

    add-double v20, v14, v4

    .line 1405
    iget-wide v4, v0, Leq;->b:D

    iget-wide v6, v0, Leq;->e:D

    iget-wide v14, v0, Leq;->b:D

    sub-double/2addr v6, v14

    float-to-double v14, v12

    mul-double/2addr v6, v14

    add-double v22, v4, v6

    .line 1406
    iget-wide v4, v0, Leq;->c:D

    iget-wide v6, v0, Leq;->f:D

    iget-wide v14, v0, Leq;->c:D

    sub-double/2addr v6, v14

    float-to-double v13, v13

    mul-double/2addr v6, v13

    add-double v24, v4, v6

    .line 1407
    invoke-static/range {v20 .. v25}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual {v5, v4, v6}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object v4

    if-nez v4, :cond_68

    add-int/lit8 v3, v3, 0x1

    :cond_68
    add-int/lit8 v9, v9, 0x1

    add-double v13, v13, v16

    double-to-float v13, v13

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    goto :goto_2f

    :cond_72
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    float-to-double v12, v12

    add-double v12, v12, v18

    double-to-float v12, v12

    move-wide/from16 v5, v16

    goto :goto_2a

    :cond_81
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    float-to-double v10, v10

    add-double/2addr v10, v1

    double-to-float v10, v10

    move-wide/from16 v5, v16

    goto :goto_23

    :cond_8f
    move-object/from16 v5, p0

    int-to-float v0, v3

    int-to-float v1, v9

    div-float/2addr v0, v1

    return v0
.end method

.method public a(F)I
    .registers 13

    .line 868
    invoke-virtual {p0, p1}, Lfd;->b(F)F

    move-result v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 870
    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1d

    move v0, v2

    :cond_1d
    cmpl-float v2, v0, v1

    if-lez v2, :cond_22

    move v0, v1

    :cond_22
    sub-float v0, v1, v0

    float-to-double v2, v0

    .line 876
    invoke-virtual {p0, p1}, Lfd;->g(F)F

    move-result v0

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v0, v4

    float-to-double v5, v0

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v5, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v5, v9, v5

    mul-double/2addr v2, v5

    double-to-float v0, v2

    float-to-double v2, v0

    .line 877
    invoke-virtual {p0, p1}, Lfd;->f(F)F

    move-result p1

    mul-float/2addr p1, v4

    float-to-double v4, p1

    div-double/2addr v4, v7

    sub-double/2addr v9, v4

    mul-double/2addr v2, v9

    double-to-float p1, v2

    sub-float/2addr v1, p1

    const/high16 p1, 0x41300000    # 11.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    return p1
.end method

.method public a(II)I
    .registers 6

    const/16 v0, 0x3f

    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 211
    invoke-virtual {p0, p1, v1, p2}, Lfd;->d(III)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_2

    .line 214
    :cond_c
    invoke-virtual {p0, p1, v0, p2}, Lfd;->a(III)I

    move-result p1

    return p1
.end method

.method public a(III)I
    .registers 6

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_29

    if-lt p3, v1, :cond_29

    const v1, 0x1e84800

    if-ge p1, v1, :cond_29

    if-le p3, v1, :cond_10

    goto :goto_29

    :cond_10
    if-gez p2, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x80

    if-lt p2, v1, :cond_18

    return v0

    :cond_18
    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 270
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    invoke-virtual {v0, p1, p2, p3}, Llm;->a(III)I

    move-result p1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method public a(IIIZ)I
    .registers 9

    const/16 v0, 0xf

    const v1, -0x1e84800

    if-lt p1, v1, :cond_79

    if-lt p3, v1, :cond_79

    const v1, 0x1e84800

    if-ge p1, v1, :cond_79

    if-le p3, v1, :cond_12

    goto/16 :goto_79

    :cond_12
    const/4 v1, 0x0

    if-eqz p4, :cond_5f

    .line 477
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p4

    .line 478
    sget-object v2, Luu;->al:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq p4, v2, :cond_31

    sget-object v2, Luu;->aB:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq p4, v2, :cond_31

    sget-object v2, Luu;->aI:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq p4, v2, :cond_31

    sget-object v2, Luu;->au:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne p4, v2, :cond_5f

    :cond_31
    add-int/lit8 p4, p2, 0x1

    .line 479
    invoke-virtual {p0, p1, p4, p3, v1}, Lfd;->a(IIIZ)I

    move-result p4

    add-int/lit8 v0, p1, 0x1

    .line 480
    invoke-virtual {p0, v0, p2, p3, v1}, Lfd;->a(IIIZ)I

    move-result v0

    add-int/lit8 v2, p1, -0x1

    .line 481
    invoke-virtual {p0, v2, p2, p3, v1}, Lfd;->a(IIIZ)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    .line 482
    invoke-virtual {p0, p1, p2, v3, v1}, Lfd;->a(IIIZ)I

    move-result v3

    add-int/lit8 p3, p3, -0x1

    .line 483
    invoke-virtual {p0, p1, p2, p3, v1}, Lfd;->a(IIIZ)I

    move-result p1

    if-le v0, p4, :cond_52

    move p4, v0

    :cond_52
    if-le v2, p4, :cond_55

    goto :goto_56

    :cond_55
    move v2, p4

    :goto_56
    if-le v3, v2, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v2

    :goto_5a
    if-le p1, v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move p1, v3

    :goto_5e
    return p1

    :cond_5f
    if-gez p2, :cond_62

    return v1

    :cond_62
    const/16 p4, 0x80

    if-lt p2, p4, :cond_68

    const/16 p2, 0x7f

    :cond_68
    shr-int/lit8 p4, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 499
    invoke-virtual {p0, p4, v1}, Lfd;->c(II)Llm;

    move-result-object p4

    and-int/2addr p1, v0

    and-int/2addr p3, v0

    .line 502
    iget v0, p0, Lfd;->f:I

    invoke-virtual {p4, p1, p2, p3, v0}, Llm;->c(IIII)I

    move-result p1

    return p1

    :cond_79
    :goto_79
    return v0
.end method

.method public a(Leb;III)I
    .registers 9

    const/4 v0, 0x0

    if-gez p3, :cond_4

    move p3, v0

    :cond_4
    const/16 v1, 0x80

    if-lt p3, v1, :cond_a

    const/16 p3, 0x7f

    :cond_a
    if-ltz p3, :cond_35

    if-ge p3, v1, :cond_35

    const v1, -0x1e84800

    if-lt p2, v1, :cond_35

    if-lt p4, v1, :cond_35

    const v1, 0x1e84800

    if-ge p2, v1, :cond_35

    if-le p4, v1, :cond_1d

    goto :goto_35

    :cond_1d
    shr-int/lit8 v1, p2, 0x4

    shr-int/lit8 v2, p4, 0x4

    .line 554
    invoke-direct {p0, v1, v2}, Lfd;->f(II)Z

    move-result v3

    if-nez v3, :cond_28

    return v0

    .line 555
    :cond_28
    invoke-virtual {p0, v1, v2}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p2, p2, 0xf

    and-int/lit8 p4, p4, 0xf

    .line 556
    invoke-virtual {v0, p1, p2, p3, p4}, Llm;->a(Leb;III)I

    move-result p1

    return p1

    .line 550
    :cond_35
    :goto_35
    iget p1, p1, Leb;->c:I

    return p1
.end method

.method public a(Lsn;F)Lbt;
    .registers 15

    .line 884
    invoke-virtual {p0, p2}, Lfd;->b(F)F

    move-result v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 886
    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_19

    move v0, v1

    :cond_19
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_20

    move v0, v2

    .line 890
    :cond_20
    iget-wide v3, p1, Lsn;->aM:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 891
    iget-wide v4, p1, Lsn;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result p1

    .line 892
    invoke-virtual {p0}, Lfd;->a()Lxv;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Lxv;->b(II)D

    move-result-wide v4

    double-to-float v4, v4

    .line 893
    invoke-virtual {p0}, Lfd;->a()Lxv;

    move-result-object v5

    invoke-virtual {v5, v3, p1}, Lxv;->a(II)Lkd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lkd;->a(F)I

    move-result p1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v4

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v4

    mul-float/2addr v3, v0

    mul-float/2addr v5, v0

    mul-float/2addr p1, v0

    .line 902
    invoke-virtual {p0, p2}, Lfd;->g(F)F

    move-result v0

    cmpl-float v4, v0, v1

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3de147ae    # 0.11f

    const v8, 0x3f170a3d    # 0.59f

    const v9, 0x3e99999a    # 0.3f

    if-lez v4, :cond_81

    mul-float v4, v3, v9

    mul-float v10, v5, v8

    add-float/2addr v4, v10

    mul-float v10, p1, v7

    add-float/2addr v4, v10

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v10

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    mul-float/2addr v3, v0

    sub-float v10, v2, v0

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    mul-float/2addr p1, v0

    add-float/2addr p1, v4

    .line 911
    :cond_81
    invoke-virtual {p0, p2}, Lfd;->f(F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_9e

    mul-float/2addr v9, v3

    mul-float/2addr v8, v5

    add-float/2addr v9, v8

    mul-float/2addr v7, p1

    add-float/2addr v9, v7

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v1

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    mul-float/2addr v3, v0

    sub-float v1, v2, v0

    mul-float/2addr v9, v1

    add-float/2addr v3, v9

    mul-float/2addr v5, v0

    add-float/2addr v5, v9

    mul-float/2addr p1, v0

    add-float/2addr p1, v9

    .line 921
    :cond_9e
    iget v0, p0, Lfd;->n:I

    if-lez v0, :cond_ba

    int-to-float v0, v0

    sub-float/2addr v0, p2

    cmpl-float p2, v0, v2

    if-lez p2, :cond_a9

    move v0, v2

    :cond_a9
    const p2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, p2

    sub-float p2, v2, v0

    mul-float/2addr v3, p2

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    mul-float/2addr v5, p2

    add-float/2addr v5, v1

    mul-float/2addr p1, p2

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    :cond_ba
    float-to-double v6, v3

    float-to-double v8, v5

    float-to-double v10, p1

    .line 930
    invoke-static/range {v6 .. v11}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public a(Lsn;IIIF)Ldh;
    .registers 19

    move-object v1, p1

    .line 1945
    iget-wide v2, v1, Lsn;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v0

    .line 1946
    iget-wide v2, v1, Lsn;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 1947
    iget-wide v3, v1, Lsn;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    add-float v4, p5, v4

    float-to-int v4, v4

    sub-int v7, v0, v4

    sub-int v8, v2, v4

    sub-int v9, v3, v4

    add-int v10, v0, v4

    add-int v11, v2, v4

    add-int v12, v3, v4

    .line 1956
    new-instance v0, Lew;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lew;-><init>(Lfd;IIIIII)V

    .line 1957
    new-instance v2, Lfw;

    invoke-direct {v2, v0}, Lfw;-><init>(Lxp;)V

    move-object v0, v2

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lfw;->a(Lsn;IIIF)Ldh;

    move-result-object v0

    return-object v0
.end method

.method public a(Lsn;Lsn;F)Ldh;
    .registers 16

    .line 1929
    iget-wide v0, p1, Lsn;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1930
    iget-wide v1, p1, Lsn;->aN:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 1931
    iget-wide v2, p1, Lsn;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v3, p3

    float-to-int v3, v3

    sub-int v6, v0, v3

    sub-int v7, v1, v3

    sub-int v8, v2, v3

    add-int v9, v0, v3

    add-int v10, v1, v3

    add-int v11, v2, v3

    .line 1940
    new-instance v0, Lew;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lew;-><init>(Lfd;IIIIII)V

    .line 1941
    new-instance v1, Lfw;

    invoke-direct {v1, v0}, Lfw;-><init>(Lxp;)V

    invoke-virtual {v1, p1, p2, p3}, Lfw;->a(Lsn;Lsn;F)Ldh;

    move-result-object p1

    return-object p1
.end method

.method public a(DDDD)Lgs;
    .registers 24

    move-object v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v5, v1

    .line 2002
    :goto_6
    iget-object v7, v0, Lfd;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3a

    .line 2003
    iget-object v7, v0, Lfd;->d:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgs;

    move-object v8, v7

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    .line 2004
    invoke-virtual/range {v8 .. v14}, Lgs;->g(DDD)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v10, p7, v10

    if-ltz v10, :cond_2d

    mul-double v10, p7, p7

    cmpg-double v10, v8, v10

    if-gez v10, :cond_37

    :cond_2d
    cmpl-double v10, v5, v1

    if-eqz v10, :cond_35

    cmpg-double v10, v8, v5

    if-gez v10, :cond_37

    :cond_35
    move-object v3, v7

    move-wide v5, v8

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_3a
    return-object v3
.end method

.method public a(Ljava/lang/String;)Lgs;
    .registers 4

    const/4 v0, 0x0

    .line 2014
    :goto_1
    iget-object v1, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 2015
    iget-object v1, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs;

    iget-object v1, v1, Lgs;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2016
    iget-object p1, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs;

    return-object p1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lsn;D)Lgs;
    .registers 13

    .line 1996
    iget-wide v1, p1, Lsn;->aM:D

    iget-wide v3, p1, Lsn;->aN:D

    iget-wide v5, p1, Lsn;->aO:D

    move-object v0, p0

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lfd;->a(DDDD)Lgs;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Lhm;
    .registers 4

    .line 2267
    iget-object v0, p0, Lfd;->z:Lhc;

    invoke-virtual {v0, p1, p2}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;)Lhm;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Leq;)Ljava/util/List;
    .registers 12

    .line 1852
    iget-wide v0, p2, Leq;->a:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1853
    iget-wide v6, p2, Leq;->d:D

    add-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v1

    .line 1854
    iget-wide v6, p2, Leq;->c:D

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    .line 1855
    iget-wide v7, p2, Leq;->f:D

    add-double/2addr v7, v2

    div-double/2addr v7, v4

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v2

    .line 1856
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_29
    if-gt v0, v1, :cond_41

    move v4, v6

    :goto_2c
    if-gt v4, v2, :cond_3e

    .line 1859
    invoke-direct {p0, v0, v4}, Lfd;->f(II)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1860
    invoke-virtual {p0, v0, v4}, Lfd;->c(II)Llm;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v3}, Llm;->a(Ljava/lang/Class;Leq;Ljava/util/List;)V

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_41
    return-object v3
.end method

.method public a(Lsn;Leq;)Ljava/util/List;
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 829
    iget-object v0, v7, Lfd;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-wide v0, v9, Leq;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 831
    iget-wide v1, v9, Leq;->d:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v10

    .line 832
    iget-wide v1, v9, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v11

    .line 833
    iget-wide v1, v9, Leq;->e:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v12

    .line 834
    iget-wide v1, v9, Leq;->c:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v13

    .line 835
    iget-wide v1, v9, Leq;->f:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v14

    move v15, v0

    :goto_35
    if-ge v15, v10, :cond_77

    move v6, v13

    :goto_38
    if-ge v6, v14, :cond_74

    const/16 v0, 0x40

    .line 839
    invoke-virtual {v7, v15, v0, v6}, Lfd;->i(III)Z

    move-result v0

    if-eqz v0, :cond_6f

    add-int/lit8 v0, v11, -0x1

    move v5, v0

    :goto_45
    if-ge v5, v12, :cond_6f

    .line 841
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {v7, v15, v5, v6}, Lfd;->a(III)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_66

    .line 843
    iget-object v4, v7, Lfd;->K:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move v2, v15

    move v3, v5

    move-object/from16 v16, v4

    move v4, v6

    move/from16 v17, v5

    move-object/from16 v5, p2

    move/from16 v18, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto :goto_6a

    :cond_66
    move/from16 v17, v5

    move/from16 v18, v6

    :goto_6a
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_45

    :cond_6f
    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    goto :goto_38

    :cond_74
    add-int/lit8 v15, v15, 0x1

    goto :goto_35

    :cond_77
    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    move-object/from16 v0, p2

    move-wide v1, v5

    move-wide v3, v5

    .line 851
    invoke-virtual/range {v0 .. v6}, Leq;->b(DDD)Leq;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 852
    :goto_86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_bd

    .line 853
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    invoke-virtual {v2}, Lsn;->f()Leq;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 854
    invoke-virtual {v2, v9}, Leq;->a(Leq;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 855
    iget-object v3, v7, Lfd;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_a3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    invoke-virtual {v8, v2}, Lsn;->a(Lsn;)Leq;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 859
    invoke-virtual {v2, v9}, Leq;->a(Leq;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 860
    iget-object v3, v7, Lfd;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 864
    :cond_bd
    iget-object v0, v7, Lfd;->K:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lsn;DDDF)Lqx;
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 1384
    invoke-virtual/range {v0 .. v9}, Lfd;->a(Lsn;DDDFZ)Lqx;

    move-result-object v0

    return-object v0
.end method

.method public a(Lsn;DDDFZ)Lqx;
    .registers 21

    .line 1388
    new-instance v10, Lqx;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lqx;-><init>(Lfd;Lsn;DDDF)V

    move/from16 v0, p9

    .line 1389
    iput-boolean v0, v10, Lqx;->a:Z

    .line 1390
    invoke-virtual {v10}, Lqx;->a()V

    const/4 v0, 0x1

    .line 1391
    invoke-virtual {v10, v0}, Lqx;->a(Z)V

    return-object v10
.end method

.method public a(Ljava/lang/Class;)Lsn;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lbt;Lbt;)Lvf;
    .registers 4

    const/4 v0, 0x0

    .line 588
    invoke-virtual {p0, p1, p2, v0, v0}, Lfd;->a(Lbt;Lbt;ZZ)Lvf;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbt;Lbt;Z)Lvf;
    .registers 5

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, p1, p2, p3, v0}, Lfd;->a(Lbt;Lbt;ZZ)Lvf;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbt;Lbt;ZZ)Lvf;
    .registers 37

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    .line 596
    iget-wide v0, v8, Lbt;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_242

    iget-wide v0, v8, Lbt;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_242

    iget-wide v0, v8, Lbt;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_242

    .line 597
    :cond_23
    iget-wide v0, v9, Lbt;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_23f

    iget-wide v0, v9, Lbt;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_23f

    iget-wide v0, v9, Lbt;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto/16 :goto_23f

    .line 599
    :cond_3d
    iget-wide v0, v9, Lbt;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v12

    .line 600
    iget-wide v0, v9, Lbt;->b:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v13

    .line 601
    iget-wide v0, v9, Lbt;->c:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v14

    .line 603
    iget-wide v0, v8, Lbt;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v15

    .line 604
    iget-wide v0, v8, Lbt;->b:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v6

    .line 605
    iget-wide v0, v8, Lbt;->c:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v5

    .line 608
    invoke-virtual {v7, v15, v6, v5}, Lfd;->a(III)I

    move-result v0

    .line 609
    invoke-virtual {v7, v15, v6, v5}, Lfd;->e(III)I

    move-result v1

    .line 610
    sget-object v2, Luu;->m:[Luu;

    aget-object v2, v2, v0

    if-eqz p4, :cond_78

    if-eqz v2, :cond_78

    .line 611
    invoke-virtual {v2, v7, v15, v6, v5}, Luu;->e(Lfd;III)Leq;

    move-result-object v3

    if-nez v3, :cond_78

    goto :goto_95

    :cond_78
    if-lez v0, :cond_95

    .line 614
    invoke-virtual {v2, v1, v10}, Luu;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_95

    move-object v0, v2

    move-object/from16 v1, p0

    move v2, v15

    move v3, v6

    move v4, v5

    move/from16 v16, v5

    move-object/from16 v5, p1

    move/from16 v17, v6

    move-object/from16 v6, p2

    .line 615
    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIILbt;Lbt;)Lvf;

    move-result-object v0

    if-eqz v0, :cond_99

    return-object v0

    :cond_95
    :goto_95
    move/from16 v16, v5

    move/from16 v17, v6

    :cond_99
    const/16 v0, 0xc8

    move/from16 v5, v16

    move/from16 v6, v17

    :goto_9f
    add-int/lit8 v16, v0, -0x1

    if-ltz v0, :cond_23c

    .line 622
    iget-wide v0, v8, Lbt;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_239

    iget-wide v0, v8, Lbt;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_239

    iget-wide v0, v8, Lbt;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_bd

    goto/16 :goto_239

    :cond_bd
    if-ne v15, v12, :cond_c4

    if-ne v6, v13, :cond_c4

    if-ne v5, v14, :cond_c4

    return-object v11

    :cond_c4
    const-wide/16 v0, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide v19, 0x408f380000000000L    # 999.0

    if-le v12, v15, :cond_d5

    int-to-double v2, v15

    add-double v2, v2, v17

    :goto_d2
    const/16 v21, 0x1

    goto :goto_de

    :cond_d5
    if-ge v12, v15, :cond_da

    int-to-double v2, v15

    add-double/2addr v2, v0

    goto :goto_d2

    :cond_da
    move-wide/from16 v2, v19

    const/16 v21, 0x0

    :goto_de
    if-le v13, v6, :cond_e8

    move/from16 v22, v12

    int-to-double v11, v6

    add-double v11, v11, v17

    :goto_e5
    const/16 v23, 0x1

    goto :goto_f3

    :cond_e8
    move/from16 v22, v12

    if-ge v13, v6, :cond_ef

    int-to-double v11, v6

    add-double/2addr v11, v0

    goto :goto_e5

    :cond_ef
    move-wide/from16 v11, v19

    const/16 v23, 0x0

    :goto_f3
    if-le v14, v5, :cond_fd

    int-to-double v0, v5

    add-double v0, v0, v17

    move v7, v5

    move/from16 v24, v6

    :goto_fb
    const/4 v6, 0x1

    goto :goto_10b

    :cond_fd
    if-ge v14, v5, :cond_105

    move/from16 v24, v6

    int-to-double v6, v5

    add-double/2addr v0, v6

    move v7, v5

    goto :goto_fb

    :cond_105
    move/from16 v24, v6

    move v7, v5

    move-wide/from16 v0, v19

    const/4 v6, 0x0

    .line 649
    :goto_10b
    iget-wide v4, v9, Lbt;->a:D

    move/from16 v26, v13

    move/from16 v27, v14

    iget-wide v13, v8, Lbt;->a:D

    sub-double/2addr v4, v13

    .line 650
    iget-wide v13, v9, Lbt;->b:D

    move-wide/from16 v28, v0

    iget-wide v0, v8, Lbt;->b:D

    sub-double/2addr v13, v0

    .line 651
    iget-wide v0, v9, Lbt;->c:D

    iget-wide v9, v8, Lbt;->c:D

    sub-double/2addr v0, v9

    if-eqz v21, :cond_128

    .line 653
    iget-wide v9, v8, Lbt;->a:D

    sub-double v9, v2, v9

    div-double/2addr v9, v4

    goto :goto_12a

    :cond_128
    move-wide/from16 v9, v19

    :goto_12a
    move-wide/from16 v30, v4

    if-eqz v23, :cond_134

    .line 654
    iget-wide v4, v8, Lbt;->b:D

    sub-double v4, v11, v4

    div-double/2addr v4, v13

    goto :goto_136

    :cond_134
    move-wide/from16 v4, v19

    :goto_136
    move/from16 v21, v7

    if-eqz v6, :cond_140

    .line 655
    iget-wide v6, v8, Lbt;->c:D

    sub-double v6, v28, v6

    div-double v19, v6, v0

    :cond_140
    cmpg-double v6, v9, v4

    const/4 v7, 0x3

    if-gez v6, :cond_161

    cmpg-double v6, v9, v19

    if-gez v6, :cond_161

    move/from16 v6, v22

    if-le v6, v15, :cond_14f

    const/4 v4, 0x4

    goto :goto_150

    :cond_14f
    const/4 v4, 0x5

    .line 662
    :goto_150
    iput-wide v2, v8, Lbt;->a:D

    .line 663
    iget-wide v2, v8, Lbt;->b:D

    mul-double/2addr v13, v9

    add-double/2addr v2, v13

    iput-wide v2, v8, Lbt;->b:D

    .line 664
    iget-wide v2, v8, Lbt;->c:D

    mul-double/2addr v0, v9

    add-double/2addr v2, v0

    iput-wide v2, v8, Lbt;->c:D

    move/from16 v9, v26

    goto :goto_181

    :cond_161
    move/from16 v6, v22

    cmpg-double v2, v4, v19

    if-gez v2, :cond_184

    move/from16 v2, v24

    move/from16 v9, v26

    if-le v9, v2, :cond_16f

    const/4 v2, 0x0

    goto :goto_170

    :cond_16f
    const/4 v2, 0x1

    .line 669
    :goto_170
    iget-wide v13, v8, Lbt;->a:D

    mul-double v19, v30, v4

    add-double v13, v13, v19

    iput-wide v13, v8, Lbt;->a:D

    .line 670
    iput-wide v11, v8, Lbt;->b:D

    .line 671
    iget-wide v10, v8, Lbt;->c:D

    mul-double/2addr v0, v4

    add-double/2addr v10, v0

    iput-wide v10, v8, Lbt;->c:D

    move v4, v2

    :goto_181
    move/from16 v10, v27

    goto :goto_1a2

    :cond_184
    move/from16 v0, v21

    move/from16 v9, v26

    move/from16 v10, v27

    if-le v10, v0, :cond_18f

    const/4 v0, 0x2

    move v4, v0

    goto :goto_190

    :cond_18f
    move v4, v7

    .line 676
    :goto_190
    iget-wide v0, v8, Lbt;->a:D

    mul-double v2, v30, v19

    add-double/2addr v0, v2

    iput-wide v0, v8, Lbt;->a:D

    .line 677
    iget-wide v0, v8, Lbt;->b:D

    mul-double v13, v13, v19

    add-double/2addr v0, v13

    iput-wide v0, v8, Lbt;->b:D

    move-wide/from16 v0, v28

    .line 678
    iput-wide v0, v8, Lbt;->c:D

    .line 681
    :goto_1a2
    iget-wide v0, v8, Lbt;->a:D

    iget-wide v2, v8, Lbt;->b:D

    iget-wide v11, v8, Lbt;->c:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v2

    move-wide/from16 v28, v11

    invoke-static/range {v24 .. v29}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 682
    iget-wide v1, v8, Lbt;->a:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lbt;->a:D

    double-to-int v1, v1

    const/4 v2, 0x5

    if-ne v4, v2, :cond_1c7

    add-int/lit8 v1, v1, -0x1

    .line 685
    iget-wide v2, v0, Lbt;->a:D

    add-double v2, v2, v17

    iput-wide v2, v0, Lbt;->a:D

    :cond_1c7
    move v15, v1

    .line 687
    iget-wide v1, v8, Lbt;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lbt;->b:D

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1dd

    add-int/lit8 v1, v1, -0x1

    .line 690
    iget-wide v2, v0, Lbt;->b:D

    add-double v2, v2, v17

    iput-wide v2, v0, Lbt;->b:D

    :cond_1dd
    move v11, v1

    .line 692
    iget-wide v1, v8, Lbt;->c:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lbt;->c:D

    double-to-int v1, v1

    if-ne v4, v7, :cond_1f2

    add-int/lit8 v1, v1, -0x1

    .line 695
    iget-wide v2, v0, Lbt;->c:D

    add-double v2, v2, v17

    iput-wide v2, v0, Lbt;->c:D

    :cond_1f2
    move-object/from16 v12, p0

    move v7, v1

    .line 698
    invoke-virtual {v12, v15, v11, v7}, Lfd;->a(III)I

    move-result v0

    .line 699
    invoke-virtual {v12, v15, v11, v7}, Lfd;->e(III)I

    move-result v1

    .line 700
    sget-object v2, Luu;->m:[Luu;

    aget-object v2, v2, v0

    if-eqz p4, :cond_20c

    if-eqz v2, :cond_20c

    .line 701
    invoke-virtual {v2, v12, v15, v11, v7}, Luu;->e(Lfd;III)Leq;

    move-result-object v3

    if-nez v3, :cond_20c

    goto :goto_228

    :cond_20c
    if-lez v0, :cond_228

    move/from16 v13, p3

    .line 704
    invoke-virtual {v2, v1, v13}, Luu;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_22a

    move-object v0, v2

    move-object/from16 v1, p0

    move v2, v15

    move v3, v11

    move v4, v7

    move-object/from16 v5, p1

    move v14, v6

    move-object/from16 v6, p2

    .line 705
    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIILbt;Lbt;)Lvf;

    move-result-object v0

    if-eqz v0, :cond_22b

    return-object v0

    :cond_228
    :goto_228
    move/from16 v13, p3

    :cond_22a
    move v14, v6

    :cond_22b
    move v5, v7

    move v6, v11

    move-object v7, v12

    move v12, v14

    move/from16 v0, v16

    const/4 v11, 0x0

    move v14, v10

    move v10, v13

    move v13, v9

    move-object/from16 v9, p2

    goto/16 :goto_9f

    :cond_239
    :goto_239
    move-object v12, v7

    move-object v0, v11

    return-object v0

    :cond_23c
    move-object v12, v7

    move-object v0, v11

    return-object v0

    :cond_23f
    :goto_23f
    move-object v12, v7

    move-object v0, v11

    return-object v0

    :cond_242
    :goto_242
    move-object v12, v7

    move-object v0, v11

    return-object v0
.end method

.method public a()Lxv;
    .registers 2

    .line 83
    iget-object v0, p0, Lfd;->t:Lxa;

    iget-object v0, v0, Lxa;->b:Lxv;

    return-object v0
.end method

.method public a(DDDLjava/lang/String;FF)V
    .registers 23

    move-object v0, p0

    const/4 v1, 0x0

    .line 726
    :goto_2
    iget-object v2, v0, Lfd;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 727
    iget-object v2, v0, Lfd;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lpm;

    move-object/from16 v4, p7

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lpm;->a(Ljava/lang/String;DDDFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method public a(IIIIII[B)V
    .registers 34

    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    add-int v2, p1, p4

    add-int/lit8 v3, v2, -0x1

    shr-int/lit8 v3, v3, 0x4

    add-int v4, p3, p6

    add-int/lit8 v5, v4, -0x1

    shr-int/lit8 v5, v5, 0x4

    add-int v6, p2, p5

    const/4 v7, 0x0

    if-gez p2, :cond_18

    move/from16 v17, v7

    goto :goto_1a

    :cond_18
    move/from16 v17, p2

    :goto_1a
    const/16 v8, 0x80

    if-le v6, v8, :cond_1f

    move v6, v8

    :cond_1f
    move v8, v7

    :goto_20
    if-gt v0, v3, :cond_86

    mul-int/lit8 v18, v0, 0x10

    sub-int v9, p1, v18

    sub-int v10, v2, v18

    if-gez v9, :cond_2d

    move/from16 v19, v7

    goto :goto_2f

    :cond_2d
    move/from16 v19, v9

    :goto_2f
    const/16 v15, 0x10

    if-le v10, v15, :cond_36

    move/from16 v20, v15

    goto :goto_38

    :cond_36
    move/from16 v20, v10

    :goto_38
    move v14, v1

    move/from16 v16, v8

    :goto_3b
    if-gt v14, v5, :cond_81

    mul-int/lit8 v21, v14, 0x10

    sub-int v8, p3, v21

    sub-int v9, v4, v21

    if-gez v8, :cond_48

    move/from16 v22, v7

    goto :goto_4a

    :cond_48
    move/from16 v22, v8

    :goto_4a
    move-object/from16 v13, p0

    if-le v9, v15, :cond_51

    move/from16 v23, v15

    goto :goto_53

    :cond_51
    move/from16 v23, v9

    .line 2075
    :goto_53
    invoke-virtual {v13, v0, v14}, Lfd;->c(II)Llm;

    move-result-object v8

    move-object/from16 v9, p7

    move/from16 v10, v19

    move/from16 v11, v17

    move/from16 v12, v22

    move/from16 v13, v20

    move/from16 v24, v14

    move v14, v6

    move/from16 v25, v15

    move/from16 v15, v23

    invoke-virtual/range {v8 .. v16}, Llm;->a([BIIIIIII)I

    move-result v16

    add-int v9, v18, v19

    add-int v11, v21, v22

    add-int v12, v18, v20

    add-int v14, v21, v23

    move-object/from16 v8, p0

    move/from16 v10, v17

    move v13, v6

    .line 2076
    invoke-virtual/range {v8 .. v14}, Lfd;->b(IIIIII)V

    add-int/lit8 v14, v24, 0x1

    move/from16 v15, v25

    goto :goto_3b

    :cond_81
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v16

    goto :goto_20

    :cond_86
    return-void
.end method

.method public a(IIILow;)V
    .registers 7

    .line 1448
    invoke-virtual {p4}, Low;->g()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1449
    iget-boolean v0, p0, Lfd;->L:Z

    if-eqz v0, :cond_16

    .line 1450
    iput p1, p4, Low;->e:I

    .line 1451
    iput p2, p4, Low;->f:I

    .line 1452
    iput p3, p4, Low;->g:I

    .line 1453
    iget-object p1, p0, Lfd;->G:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1455
    :cond_16
    iget-object v0, p0, Lfd;->c:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 1457
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    if-eqz v0, :cond_2c

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 1458
    invoke-virtual {v0, p1, p2, p3, p4}, Llm;->a(IIILow;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public a(J)V
    .registers 4

    .line 2089
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0, p1, p2}, Lei;->a(J)V

    return-void
.end method

.method public a(Lbr;)V
    .registers 5

    .line 2113
    iget-object v0, p0, Lfd;->x:Lei;

    iget v1, p1, Lbr;->a:I

    iget v2, p1, Lbr;->b:I

    iget p1, p1, Lbr;->c:I

    invoke-virtual {v0, v1, v2, p1}, Lei;->a(III)V

    return-void
.end method

.method public a(Leb;IIII)V
    .registers 14

    .line 530
    iget-object v0, p0, Lfd;->t:Lxa;

    iget-boolean v0, v0, Lxa;->e:Z

    if-eqz v0, :cond_b

    sget-object v0, Leb;->a:Leb;

    if-ne p1, v0, :cond_b

    return-void

    .line 532
    :cond_b
    invoke-virtual {p0, p2, p3, p4}, Lfd;->i(III)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 534
    :cond_12
    sget-object v0, Leb;->a:Leb;

    if-ne p1, v0, :cond_1f

    .line 535
    invoke-virtual {p0, p2, p3, p4}, Lfd;->o(III)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 p5, 0xf

    goto :goto_31

    .line 536
    :cond_1f
    sget-object v0, Leb;->b:Leb;

    if-ne p1, v0, :cond_31

    .line 537
    invoke-virtual {p0, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    .line 538
    sget-object v1, Luu;->s:[I

    aget v1, v1, v0

    if-le v1, p5, :cond_31

    sget-object p5, Luu;->s:[I

    aget p5, p5, v0

    .line 541
    :cond_31
    :goto_31
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->a(Leb;III)I

    move-result v0

    if-eq v0, p5, :cond_42

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p3

    move v7, p4

    .line 542
    invoke-virtual/range {v0 .. v7}, Lfd;->a(Leb;IIIIII)V

    :cond_42
    return-void
.end method

.method public a(Leb;IIIIII)V
    .registers 17

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 1520
    invoke-virtual/range {v0 .. v8}, Lfd;->a(Leb;IIIIIIZ)V

    return-void
.end method

.method public a(Leb;IIIIIIZ)V
    .registers 21

    move-object v1, p0

    move-object v0, p1

    .line 1527
    iget-object v2, v1, Lfd;->t:Lxa;

    iget-boolean v2, v2, Lxa;->e:Z

    if-eqz v2, :cond_d

    sget-object v2, Leb;->a:Leb;

    if-ne v0, v2, :cond_d

    return-void

    .line 1529
    :cond_d
    sget v2, Lfd;->A:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lfd;->A:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1c

    add-int/lit8 v2, v2, -0x1

    .line 1558
    sput v2, Lfd;->A:I

    return-void

    :cond_1c
    add-int v2, p5, p2

    .line 1534
    :try_start_1e
    div-int/lit8 v2, v2, 0x2

    add-int v3, p7, p4

    .line 1535
    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0x40

    .line 1536
    invoke-virtual {p0, v2, v4, v3}, Lfd;->i(III)Z

    move-result v4
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_ca

    if-nez v4, :cond_33

    .line 1558
    sget v0, Lfd;->A:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfd;->A:I

    return-void

    .line 1539
    :cond_33
    :try_start_33
    invoke-virtual {p0, v2, v3}, Lfd;->b(II)Llm;

    move-result-object v2

    invoke-virtual {v2}, Llm;->h()Z

    move-result v2
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_ca

    if-eqz v2, :cond_44

    .line 1558
    sget v0, Lfd;->A:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfd;->A:I

    return-void

    .line 1540
    :cond_44
    :try_start_44
    iget-object v2, v1, Lfd;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p8, :cond_82

    const/4 v3, 0x5

    if-le v3, v2, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    :goto_51
    const/4 v3, 0x0

    move v10, v3

    :goto_53
    if-ge v10, v2, :cond_82

    .line 1545
    iget-object v3, v1, Lfd;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v10

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lst;

    .line 1546
    iget-object v4, v3, Lst;->a:Leb;

    if-ne v4, v0, :cond_7f

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lst;->a(IIIIII)Z

    move-result v3
    :try_end_76
    .catchall {:try_start_44 .. :try_end_76} :catchall_ca

    if-eqz v3, :cond_7f

    .line 1558
    sget v0, Lfd;->A:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfd;->A:I

    return-void

    :cond_7f
    add-int/lit8 v10, v10, 0x1

    goto :goto_53

    .line 1551
    :cond_82
    :try_start_82
    iget-object v10, v1, Lfd;->C:Ljava/util/List;

    new-instance v11, Lst;

    move-object v2, v11

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lst;-><init>(Leb;IIIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    iget-object v0, v1, Lfd;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v2, 0xf4240

    if-le v0, v2, :cond_c3

    .line 1554
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "More than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " updates, aborting lighting updates"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1555
    iget-object v0, v1, Lfd;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_c3
    .catchall {:try_start_82 .. :try_end_c3} :catchall_ca

    .line 1558
    :cond_c3
    sget v0, Lfd;->A:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfd;->A:I

    return-void

    :catchall_ca
    move-exception v0

    sget v2, Lfd;->A:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfd;->A:I

    throw v0
.end method

.method public a(Lgs;)V
    .registers 6

    .line 222
    :try_start_0
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->h()Lnu;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 224
    invoke-virtual {p1, v0}, Lgs;->e(Lnu;)V

    .line 225
    iget-object v0, p0, Lfd;->x:Lei;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lei;->a(Lnu;)V

    .line 227
    :cond_11
    iget-object v0, p0, Lfd;->v:Lcl;

    instance-of v1, v0, Lkx;

    if-eqz v1, :cond_30

    .line 228
    check-cast v0, Lkx;

    .line 230
    iget-wide v1, p1, Lgs;->aM:D

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lin;->d(F)I

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    .line 231
    iget-wide v2, p1, Lgs;->aO:D

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lin;->d(F)I

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    .line 233
    invoke-virtual {v0, v1, v2}, Lkx;->d(II)V

    .line 235
    :cond_30
    invoke-virtual {p0, p1}, Lfd;->b(Lsn;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public a(Lgs;IIII)V
    .registers 13

    if-nez p5, :cond_4

    add-int/lit8 p3, p3, -0x1

    :cond_4
    const/4 v0, 0x1

    if-ne p5, v0, :cond_9

    add-int/lit8 p3, p3, 0x1

    :cond_9
    const/4 v0, 0x2

    if-ne p5, v0, :cond_e

    add-int/lit8 p4, p4, -0x1

    :cond_e
    const/4 v0, 0x3

    if-ne p5, v0, :cond_13

    add-int/lit8 p4, p4, 0x1

    :cond_13
    const/4 v0, 0x4

    if-ne p5, v0, :cond_18

    add-int/lit8 p2, p2, -0x1

    :cond_18
    const/4 v0, 0x5

    if-ne p5, v0, :cond_1d

    add-int/lit8 p2, p2, 0x1

    .line 1422
    :cond_1d
    invoke-virtual {p0, p2, p3, p4}, Lfd;->a(III)I

    move-result p5

    sget-object v0, Luu;->as:Lyq;

    iget v0, v0, Lyq;->bn:I

    if-ne p5, v0, :cond_36

    const/16 v2, 0x3ec

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1423
    invoke-virtual/range {v0 .. v6}, Lfd;->a(Lgs;IIIII)V

    const/4 p1, 0x0

    .line 1424
    invoke-virtual {p0, p2, p3, p4, p1}, Lfd;->f(IIII)Z

    :cond_36
    return-void
.end method

.method public a(Lgs;IIIII)V
    .registers 16

    const/4 v0, 0x0

    .line 2279
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2280
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lpm;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lpm;->a(Lgs;IIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method public a(Ljava/lang/String;DDDDDD)V
    .registers 31

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 741
    :goto_3
    iget-object v2, v0, Lfd;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 742
    iget-object v2, v0, Lfd;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lpm;

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    invoke-interface/range {v3 .. v16}, Lpm;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_28
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .registers 7

    const/4 v0, 0x0

    .line 732
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 733
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpm;

    invoke-interface {v1, p1, p2, p3, p4}, Lpm;->a(Ljava/lang/String;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public a(Ljava/lang/String;Lhm;)V
    .registers 4

    .line 2263
    iget-object v0, p0, Lfd;->z:Lhc;

    invoke-virtual {v0, p1, p2}, Lhc;->a(Ljava/lang/String;Lhm;)V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3

    .line 1149
    iget-boolean v0, p0, Lfd;->L:Z

    if-eqz v0, :cond_a

    .line 1150
    iget-object v0, p0, Lfd;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 1152
    :cond_a
    iget-object v0, p0, Lfd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_f
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    .line 1890
    iget-object v0, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1891
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1892
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsn;

    invoke-virtual {p0, v1}, Lfd;->c(Lsn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public a(Lpm;)V
    .registers 3

    .line 818
    iget-object v0, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lsn;B)V
    .registers 3

    return-void
.end method

.method public a(Lsn;Ljava/lang/String;FF)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .line 720
    :goto_3
    iget-object v3, v0, Lfd;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 721
    iget-object v3, v0, Lfd;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lpm;

    iget-wide v6, v1, Lsn;->aM:D

    iget-wide v8, v1, Lsn;->aN:D

    iget v3, v1, Lsn;->bf:F

    float-to-double v10, v3

    sub-double/2addr v8, v10

    iget-wide v10, v1, Lsn;->aO:D

    move-object/from16 v5, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-interface/range {v4 .. v13}, Lpm;->a(Ljava/lang/String;DDDFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2a
    return-void
.end method

.method public a(Lsn;Z)V
    .registers 12

    .line 1161
    iget-wide v0, p1, Lsn;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1162
    iget-wide v1, p1, Lsn;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    if-eqz p2, :cond_21

    add-int/lit8 v3, v0, -0x20

    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x20

    add-int/lit8 v6, v0, 0x20

    const/16 v7, 0x80

    add-int/lit8 v8, v1, 0x20

    move-object v2, p0

    .line 1164
    invoke-virtual/range {v2 .. v8}, Lfd;->a(IIIIII)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 1168
    :cond_21
    iget-wide v0, p1, Lsn;->aM:D

    iput-wide v0, p1, Lsn;->bl:D

    .line 1169
    iget-wide v0, p1, Lsn;->aN:D

    iput-wide v0, p1, Lsn;->bm:D

    .line 1170
    iget-wide v0, p1, Lsn;->aO:D

    iput-wide v0, p1, Lsn;->bn:D

    .line 1171
    iget v0, p1, Lsn;->aS:F

    iput v0, p1, Lsn;->aU:F

    .line 1172
    iget v0, p1, Lsn;->aT:F

    iput v0, p1, Lsn;->aV:F

    if-eqz p2, :cond_46

    .line 1177
    iget-boolean v0, p1, Lsn;->bF:Z

    if-eqz v0, :cond_46

    .line 1178
    iget-object v0, p1, Lsn;->aH:Lsn;

    if-eqz v0, :cond_43

    .line 1179
    invoke-virtual {p1}, Lsn;->s_()V

    goto :goto_46

    .line 1181
    :cond_43
    invoke-virtual {p1}, Lsn;->w_()V

    .line 1186
    :cond_46
    :goto_46
    iget-wide v0, p1, Lsn;->aM:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_56

    iget-wide v0, p1, Lsn;->aM:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_56
    iget-wide v0, p1, Lsn;->bl:D

    iput-wide v0, p1, Lsn;->aM:D

    .line 1187
    :cond_5a
    iget-wide v0, p1, Lsn;->aN:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-wide v0, p1, Lsn;->aN:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6a
    iget-wide v0, p1, Lsn;->bm:D

    iput-wide v0, p1, Lsn;->aN:D

    .line 1188
    :cond_6e
    iget-wide v0, p1, Lsn;->aO:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-wide v0, p1, Lsn;->aO:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_7e
    iget-wide v0, p1, Lsn;->bn:D

    iput-wide v0, p1, Lsn;->aO:D

    .line 1189
    :cond_82
    iget v0, p1, Lsn;->aT:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_94

    iget v0, p1, Lsn;->aT:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_98

    :cond_94
    iget v0, p1, Lsn;->aV:F

    iput v0, p1, Lsn;->aT:F

    .line 1190
    :cond_98
    iget v0, p1, Lsn;->aS:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_aa

    iget v0, p1, Lsn;->aS:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_aa
    iget v0, p1, Lsn;->aU:F

    iput v0, p1, Lsn;->aS:F

    .line 1192
    :cond_ae
    iget-wide v0, p1, Lsn;->aM:D

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1193
    iget-wide v4, p1, Lsn;->aN:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v1

    .line 1194
    iget-wide v4, p1, Lsn;->aO:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v2

    .line 1198
    iget-boolean v3, p1, Lsn;->bF:Z

    if-eqz v3, :cond_d5

    iget v3, p1, Lsn;->bG:I

    if-ne v3, v0, :cond_d5

    iget v3, p1, Lsn;->bH:I

    if-ne v3, v1, :cond_d5

    iget v1, p1, Lsn;->bI:I

    if-eq v1, v2, :cond_104

    .line 1199
    :cond_d5
    iget-boolean v1, p1, Lsn;->bF:Z

    if-eqz v1, :cond_f0

    iget v1, p1, Lsn;->bG:I

    iget v3, p1, Lsn;->bI:I

    invoke-direct {p0, v1, v3}, Lfd;->f(II)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 1200
    iget v1, p1, Lsn;->bG:I

    iget v3, p1, Lsn;->bI:I

    invoke-virtual {p0, v1, v3}, Lfd;->c(II)Llm;

    move-result-object v1

    iget v3, p1, Lsn;->bH:I

    invoke-virtual {v1, p1, v3}, Llm;->a(Lsn;I)V

    .line 1203
    :cond_f0
    invoke-direct {p0, v0, v2}, Lfd;->f(II)Z

    move-result v1

    if-eqz v1, :cond_101

    const/4 v1, 0x1

    .line 1205
    iput-boolean v1, p1, Lsn;->bF:Z

    .line 1206
    invoke-virtual {p0, v0, v2}, Lfd;->c(II)Llm;

    move-result-object v0

    invoke-virtual {v0, p1}, Llm;->a(Lsn;)V

    goto :goto_104

    :cond_101
    const/4 v0, 0x0

    .line 1208
    iput-boolean v0, p1, Lsn;->bF:Z

    :cond_104
    :goto_104
    if-eqz p2, :cond_128

    .line 1213
    iget-boolean p2, p1, Lsn;->bF:Z

    if-eqz p2, :cond_128

    .line 1214
    iget-object p2, p1, Lsn;->aG:Lsn;

    if-eqz p2, :cond_128

    .line 1215
    iget-object p2, p1, Lsn;->aG:Lsn;

    iget-boolean p2, p2, Lsn;->be:Z

    if-nez p2, :cond_121

    iget-object p2, p1, Lsn;->aG:Lsn;

    iget-object p2, p2, Lsn;->aH:Lsn;

    if-eq p2, p1, :cond_11b

    goto :goto_121

    .line 1219
    :cond_11b
    iget-object p1, p1, Lsn;->aG:Lsn;

    invoke-virtual {p0, p1}, Lfd;->f(Lsn;)V

    goto :goto_128

    .line 1216
    :cond_121
    :goto_121
    iget-object p2, p1, Lsn;->aG:Lsn;

    const/4 v0, 0x0

    iput-object v0, p2, Lsn;->aH:Lsn;

    .line 1217
    iput-object v0, p1, Lsn;->aG:Lsn;

    :cond_128
    :goto_128
    return-void
.end method

.method public a(Lyb;)V
    .registers 3

    const/4 v0, 0x1

    .line 1491
    invoke-virtual {p0, v0, p1}, Lfd;->a(ZLyb;)V

    return-void
.end method

.method public a(ZLyb;)V
    .registers 4

    .line 242
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0}, Lcl;->b()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_10

    const-string v0, "Saving level"

    .line 244
    invoke-interface {p2, v0}, Lyb;->b(Ljava/lang/String;)V

    .line 245
    :cond_10
    invoke-direct {p0}, Lfd;->D()V

    if-eqz p2, :cond_1a

    const-string v0, "Saving chunks"

    .line 247
    invoke-interface {p2, v0}, Lyb;->d(Ljava/lang/String;)V

    .line 248
    :cond_1a
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0, p1, p2}, Lcl;->a(ZLyb;)Z

    return-void
.end method

.method public a(ZZ)V
    .registers 3

    .line 1573
    iput-boolean p1, p0, Lfd;->N:Z

    .line 1574
    iput-boolean p2, p0, Lfd;->O:Z

    return-void
.end method

.method public a(I)Z
    .registers 4

    .line 259
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0}, Lcl;->b()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    if-nez p1, :cond_f

    .line 260
    invoke-direct {p0}, Lfd;->D()V

    .line 261
    :cond_f
    iget-object p1, p0, Lfd;->v:Lcl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcl;->a(ZLyb;)Z

    move-result p1

    return p1
.end method

.method public a(IIIII)Z
    .registers 14

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_2c

    if-lt p3, v1, :cond_2c

    const v1, 0x1e84800

    if-ge p1, v1, :cond_2c

    if-le p3, v1, :cond_10

    goto :goto_2c

    :cond_10
    if-gez p2, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x80

    if-lt p2, v1, :cond_18

    return v0

    :cond_18
    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 322
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    and-int/lit8 v5, p3, 0xf

    move v4, p2

    move v6, p4

    move v7, p5

    .line 323
    invoke-virtual/range {v2 .. v7}, Llm;->a(IIIII)Z

    move-result p1

    return p1

    :cond_2c
    :goto_2c
    return v0
.end method

.method public a(IIIIII)Z
    .registers 8

    const/4 v0, 0x0

    if-ltz p5, :cond_24

    const/16 p5, 0x80

    if-lt p2, p5, :cond_8

    goto :goto_24

    :cond_8
    shr-int/lit8 p1, p1, 0x4

    shr-int/lit8 p2, p3, 0x4

    shr-int/lit8 p3, p4, 0x4

    shr-int/lit8 p4, p6, 0x4

    :goto_10
    if-gt p1, p3, :cond_22

    move p5, p2

    :goto_13
    if-gt p5, p4, :cond_1f

    .line 299
    invoke-direct {p0, p1, p5}, Lfd;->f(II)Z

    move-result p6

    if-nez p6, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 p5, p5, 0x1

    goto :goto_13

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    :goto_24
    return v0
.end method

.method public a(IIIIZI)Z
    .registers 15

    .line 1906
    invoke-virtual {p0, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    .line 1907
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    .line 1909
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, p1

    .line 1911
    invoke-virtual {v2, p0, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p5, :cond_14

    move-object v1, v3

    :cond_14
    const/4 p5, 0x0

    if-eqz v1, :cond_1e

    .line 1913
    invoke-virtual {p0, v1}, Lfd;->a(Leq;)Z

    move-result v1

    if-nez v1, :cond_1e

    return p5

    .line 1915
    :cond_1e
    sget-object v1, Luu;->B:Luu;

    if-eq v0, v1, :cond_36

    sget-object v1, Luu;->C:Luu;

    if-eq v0, v1, :cond_36

    sget-object v1, Luu;->D:Luu;

    if-eq v0, v1, :cond_36

    sget-object v1, Luu;->E:Luu;

    if-eq v0, v1, :cond_36

    sget-object v1, Luu;->as:Lyq;

    if-eq v0, v1, :cond_36

    sget-object v1, Luu;->aT:Luu;

    if-ne v0, v1, :cond_37

    :cond_36
    move-object v0, v3

    :cond_37
    if-lez p1, :cond_48

    if-nez v0, :cond_48

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    .line 1917
    invoke-virtual/range {v2 .. v7}, Luu;->a(Lfd;IIII)Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 p1, 0x1

    return p1

    :cond_48
    return p5
.end method

.method public a(Leq;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1226
    invoke-virtual {p0, v0, p1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1227
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 1229
    iget-boolean v3, v2, Lsn;->be:Z

    if-nez v3, :cond_1c

    iget-boolean v2, v2, Lsn;->aF:Z

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public a(Leq;Lln;)Z
    .registers 12

    .line 1339
    iget-wide v0, p1, Leq;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1340
    iget-wide v1, p1, Leq;->d:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 1341
    iget-wide v5, p1, Leq;->b:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v2

    .line 1342
    iget-wide v5, p1, Leq;->e:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v5

    .line 1343
    iget-wide v6, p1, Leq;->c:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    .line 1344
    iget-wide v7, p1, Leq;->f:D

    add-double/2addr v7, v3

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result p1

    :goto_29
    if-ge v0, v1, :cond_4a

    move v3, v2

    :goto_2c
    if-ge v3, v5, :cond_47

    move v4, v6

    :goto_2f
    if-ge v4, p1, :cond_44

    .line 1349
    sget-object v7, Luu;->m:[Luu;

    invoke-virtual {p0, v0, v3, v4}, Lfd;->a(III)I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_41

    .line 1350
    iget-object v7, v7, Luu;->bA:Lln;

    if-ne v7, p2, :cond_41

    const/4 p1, 0x1

    return p1

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_4a
    const/4 p1, 0x0

    return p1
.end method

.method public a(Leq;Lln;Lsn;)Z
    .registers 25

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    .line 1301
    iget-wide v1, v0, Leq;->a:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v9

    .line 1302
    iget-wide v1, v0, Leq;->d:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v10

    .line 1304
    iget-wide v1, v0, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v11

    .line 1305
    iget-wide v1, v0, Leq;->e:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v12

    .line 1307
    iget-wide v1, v0, Leq;->c:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v13

    .line 1308
    iget-wide v0, v0, Leq;->f:D

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v14

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move v3, v13

    move v4, v10

    move v5, v12

    move v6, v14

    .line 1310
    invoke-virtual/range {v0 .. v6}, Lfd;->a(IIIIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    return v1

    :cond_3f
    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    .line 1315
    invoke-static/range {v15 .. v20}, Lbt;->b(DDD)Lbt;

    move-result-object v15

    :goto_49
    if-ge v9, v10, :cond_a6

    move v6, v11

    :goto_4c
    if-ge v6, v12, :cond_9f

    move v5, v13

    :goto_4f
    if-ge v5, v14, :cond_95

    .line 1319
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {v7, v9, v6, v5}, Lfd;->a(III)I

    move-result v2

    aget-object v0, v0, v2

    if-eqz v0, :cond_87

    .line 1320
    iget-object v2, v0, Luu;->bA:Lln;

    move-object/from16 v4, p2

    if-ne v2, v4, :cond_87

    add-int/lit8 v2, v6, 0x1

    int-to-float v2, v2

    .line 1321
    invoke-virtual {v7, v9, v6, v5}, Lfd;->e(III)I

    move-result v3

    invoke-static {v3}, Lrp;->d(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move/from16 v16, v10

    move/from16 v17, v11

    int-to-double v10, v12

    cmpl-double v2, v10, v2

    if-ltz v2, :cond_8b

    move-object/from16 v1, p0

    move v2, v9

    move v3, v6

    move v4, v5

    move v10, v5

    move-object/from16 v5, p3

    move v11, v6

    move-object v6, v15

    .line 1324
    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIILsn;Lbt;)V

    const/4 v0, 0x1

    move v1, v0

    goto :goto_8d

    :cond_87
    move/from16 v16, v10

    move/from16 v17, v11

    :cond_8b
    move v10, v5

    move v11, v6

    :goto_8d
    add-int/lit8 v5, v10, 0x1

    move v6, v11

    move/from16 v10, v16

    move/from16 v11, v17

    goto :goto_4f

    :cond_95
    move/from16 v16, v10

    move/from16 v17, v11

    move v11, v6

    add-int/lit8 v6, v11, 0x1

    move/from16 v11, v17

    goto :goto_4c

    :cond_9f
    move/from16 v16, v10

    move/from16 v17, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    .line 1328
    :cond_a6
    invoke-virtual {v15}, Lbt;->d()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_d1

    .line 1329
    invoke-virtual {v15}, Lbt;->c()Lbt;

    move-result-object v0

    .line 1331
    iget-wide v2, v8, Lsn;->aP:D

    iget-wide v4, v0, Lbt;->a:D

    const-wide v9, 0x3f8cac083126e979L    # 0.014

    mul-double/2addr v4, v9

    add-double/2addr v2, v4

    iput-wide v2, v8, Lsn;->aP:D

    .line 1332
    iget-wide v2, v8, Lsn;->aQ:D

    iget-wide v4, v0, Lbt;->b:D

    mul-double/2addr v4, v9

    add-double/2addr v2, v4

    iput-wide v2, v8, Lsn;->aQ:D

    .line 1333
    iget-wide v2, v8, Lsn;->aR:D

    iget-wide v4, v0, Lbt;->c:D

    mul-double/2addr v4, v9

    add-double/2addr v2, v4

    iput-wide v2, v8, Lsn;->aR:D

    :cond_d1
    return v1
.end method

.method public a(Lgs;III)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lsn;)Z
    .registers 3

    .line 746
    iget-object v0, p0, Lfd;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Z)Z
    .registers 14

    .line 1793
    iget-object v0, p0, Lfd;->E:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 1794
    iget-object v1, p0, Lfd;->F:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_84

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_13

    move v0, v1

    :cond_13
    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_7a

    .line 1799
    iget-object v3, p0, Lfd;->E:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqy;

    if-nez p1, :cond_2e

    .line 1800
    iget-wide v4, v3, Lqy;->e:J

    iget-object v6, p0, Lfd;->x:Lei;

    invoke-virtual {v6}, Lei;->f()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2e

    goto :goto_7a

    .line 1804
    :cond_2e
    iget-object v4, p0, Lfd;->E:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1805
    iget-object v4, p0, Lfd;->F:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1807
    iget v4, v3, Lqy;->a:I

    add-int/lit8 v6, v4, -0x8

    iget v4, v3, Lqy;->b:I

    add-int/lit8 v7, v4, -0x8

    iget v4, v3, Lqy;->c:I

    add-int/lit8 v8, v4, -0x8

    iget v4, v3, Lqy;->a:I

    add-int/lit8 v9, v4, 0x8

    iget v4, v3, Lqy;->b:I

    add-int/lit8 v10, v4, 0x8

    iget v4, v3, Lqy;->c:I

    add-int/lit8 v11, v4, 0x8

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lfd;->a(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1808
    iget v4, v3, Lqy;->a:I

    iget v5, v3, Lqy;->b:I

    iget v6, v3, Lqy;->c:I

    invoke-virtual {p0, v4, v5, v6}, Lfd;->a(III)I

    move-result v4

    .line 1809
    iget v5, v3, Lqy;->d:I

    if-ne v4, v5, :cond_77

    if-lez v4, :cond_77

    .line 1810
    sget-object v5, Luu;->m:[Luu;

    aget-object v6, v5, v4

    iget v8, v3, Lqy;->a:I

    iget v9, v3, Lqy;->b:I

    iget v10, v3, Lqy;->c:I

    iget-object v11, p0, Lfd;->r:Ljava/util/Random;

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Luu;->a(Lfd;IIILjava/util/Random;)V

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1814
    :cond_7a
    :goto_7a
    iget-object p1, p0, Lfd;->E:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    if-eqz p1, :cond_83

    const/4 v1, 0x1

    :cond_83
    return v1

    .line 1795
    :cond_84
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TickNextTick list out of synch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(F)F
    .registers 5

    .line 934
    iget-object v0, p0, Lfd;->t:Lxa;

    iget-object v1, p0, Lfd;->x:Lei;

    invoke-virtual {v1}, Lei;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lxa;->a(JF)F

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Class;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 1882
    :goto_2
    iget-object v2, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1883
    iget-object v2, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 1884
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return v1
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    .line 2271
    iget-object v0, p0, Lfd;->z:Lhc;

    invoke-virtual {v0, p1}, Lhc;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected b()Lcl;
    .registers 4

    .line 172
    iget-object v0, p0, Lfd;->w:Lwt;

    iget-object v1, p0, Lfd;->t:Lxa;

    invoke-interface {v0, v1}, Lwt;->a(Lxa;)Lbf;

    move-result-object v0

    .line 174
    new-instance v1, Lok;

    iget-object v2, p0, Lfd;->t:Lxa;

    invoke-virtual {v2}, Lxa;->b()Lcl;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lok;-><init>(Lfd;Lbf;Lcl;)V

    return-object v1
.end method

.method public b(Lsn;Leq;)Ljava/util/List;
    .registers 12

    .line 1837
    iget-object v0, p0, Lfd;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1838
    iget-wide v0, p2, Leq;->a:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1839
    iget-wide v6, p2, Leq;->d:D

    add-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v1

    .line 1840
    iget-wide v6, p2, Leq;->c:D

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    .line 1841
    iget-wide v7, p2, Leq;->f:D

    add-double/2addr v7, v2

    div-double/2addr v7, v4

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v2

    :goto_29
    if-gt v0, v1, :cond_43

    move v3, v6

    :goto_2c
    if-gt v3, v2, :cond_40

    .line 1844
    invoke-direct {p0, v0, v3}, Lfd;->f(II)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1845
    invoke-virtual {p0, v0, v3}, Lfd;->c(II)Llm;

    move-result-object v4

    iget-object v5, p0, Lfd;->R:Ljava/util/List;

    invoke-virtual {v4, p1, p2, v5}, Llm;->a(Lsn;Leq;Ljava/util/List;)V

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1848
    :cond_43
    iget-object p1, p0, Lfd;->R:Ljava/util/List;

    return-object p1
.end method

.method public b(II)Llm;
    .registers 3

    shr-int/lit8 p1, p1, 0x4

    shr-int/lit8 p2, p2, 0x4

    .line 309
    invoke-virtual {p0, p1, p2}, Lfd;->c(II)Llm;

    move-result-object p1

    return-object p1
.end method

.method public b(III)Low;
    .registers 6

    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 1441
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    if-eqz v0, :cond_13

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 1442
    invoke-virtual {v0, p1, p2, p3}, Llm;->d(III)Low;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IIIIII)V
    .registers 16

    const/4 v0, 0x0

    .line 423
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 424
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lpm;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lpm;->b(IIIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method public b(IIILow;)V
    .registers 7

    .line 1872
    invoke-virtual {p0, p1, p2, p3}, Lfd;->i(III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1873
    invoke-virtual {p0, p1, p3}, Lfd;->b(II)Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->g()V

    :cond_d
    const/4 v0, 0x0

    .line 1875
    :goto_e
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1876
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpm;

    invoke-interface {v1, p1, p2, p3, p4}, Lpm;->a(IIILow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public b(Leb;IIII)V
    .registers 15

    const v0, -0x1e84800

    if-lt p2, v0, :cond_47

    if-lt p4, v0, :cond_47

    const v0, 0x1e84800

    if-ge p2, v0, :cond_47

    if-le p4, v0, :cond_f

    goto :goto_47

    :cond_f
    if-gez p3, :cond_12

    return-void

    :cond_12
    const/16 v0, 0x80

    if-lt p3, v0, :cond_17

    return-void

    :cond_17
    shr-int/lit8 v0, p2, 0x4

    shr-int/lit8 v1, p4, 0x4

    .line 565
    invoke-direct {p0, v0, v1}, Lfd;->f(II)Z

    move-result v2

    if-nez v2, :cond_22

    return-void

    .line 566
    :cond_22
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v3

    and-int/lit8 v5, p2, 0xf

    and-int/lit8 v7, p4, 0xf

    move-object v4, p1

    move v6, p3

    move v8, p5

    .line 567
    invoke-virtual/range {v3 .. v8}, Llm;->a(Leb;IIII)V

    const/4 p1, 0x0

    .line 568
    :goto_31
    iget-object p5, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_47

    .line 569
    iget-object p5, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpm;

    invoke-interface {p5, p2, p3, p4}, Lpm;->a(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_47
    :goto_47
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3

    .line 1897
    iget-object v0, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Lpm;)V
    .registers 3

    .line 822
    iget-object v0, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(IIII)Z
    .registers 12

    sub-int v1, p1, p4

    sub-int v2, p2, p4

    sub-int v3, p3, p4

    add-int v4, p1, p4

    add-int v5, p2, p4

    add-int v6, p3, p4

    move-object v0, p0

    .line 284
    invoke-virtual/range {v0 .. v6}, Lfd;->a(IIIIII)Z

    move-result p1

    return p1
.end method

.method public b(IIIII)Z
    .registers 6

    .line 387
    invoke-virtual/range {p0 .. p5}, Lfd;->a(IIIII)Z

    move-result p5

    if-eqz p5, :cond_b

    .line 390
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->g(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public b(Leq;)Z
    .registers 13

    .line 1258
    iget-wide v0, p1, Leq;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1259
    iget-wide v1, p1, Leq;->d:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 1260
    iget-wide v5, p1, Leq;->b:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v2

    .line 1261
    iget-wide v5, p1, Leq;->e:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v5

    .line 1262
    iget-wide v6, p1, Leq;->c:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    .line 1263
    iget-wide v7, p1, Leq;->f:D

    add-double/2addr v7, v3

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v3

    .line 1265
    iget-wide v7, p1, Leq;->a:D

    const-wide/16 v9, 0x0

    cmpg-double v4, v7, v9

    if-gez v4, :cond_33

    add-int/lit8 v0, v0, -0x1

    .line 1266
    :cond_33
    iget-wide v7, p1, Leq;->b:D

    cmpg-double v4, v7, v9

    if-gez v4, :cond_3b

    add-int/lit8 v2, v2, -0x1

    .line 1267
    :cond_3b
    iget-wide v7, p1, Leq;->c:D

    cmpg-double p1, v7, v9

    if-gez p1, :cond_43

    add-int/lit8 v6, v6, -0x1

    :cond_43
    :goto_43
    if-ge v0, v1, :cond_68

    move p1, v2

    :goto_46
    if-ge p1, v5, :cond_65

    move v4, v6

    :goto_49
    if-ge v4, v3, :cond_62

    .line 1272
    sget-object v7, Luu;->m:[Luu;

    invoke-virtual {p0, v0, p1, v4}, Lfd;->a(III)I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_5f

    .line 1273
    iget-object v7, v7, Luu;->bA:Lln;

    invoke-virtual {v7}, Lln;->d()Z

    move-result v7

    if-eqz v7, :cond_5f

    const/4 p1, 0x1

    return p1

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_68
    const/4 p1, 0x0

    return p1
.end method

.method public b(Leq;Lln;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1358
    iget-wide v2, v1, Leq;->a:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 1359
    iget-wide v3, v1, Leq;->d:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 1360
    iget-wide v7, v1, Leq;->b:D

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v4

    .line 1361
    iget-wide v7, v1, Leq;->e:D

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    .line 1362
    iget-wide v8, v1, Leq;->c:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    .line 1363
    iget-wide v9, v1, Leq;->f:D

    add-double/2addr v9, v5

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v5

    :goto_2d
    if-ge v2, v3, :cond_6d

    move v6, v4

    :goto_30
    if-ge v6, v7, :cond_68

    move v9, v8

    :goto_33
    if-ge v9, v5, :cond_63

    .line 1368
    sget-object v10, Luu;->m:[Luu;

    invoke-virtual {v0, v2, v6, v9}, Lfd;->a(III)I

    move-result v11

    aget-object v10, v10, v11

    if-eqz v10, :cond_5e

    .line 1369
    iget-object v10, v10, Luu;->bA:Lln;

    move-object/from16 v11, p2

    if-ne v10, v11, :cond_60

    .line 1370
    invoke-virtual {v0, v2, v6, v9}, Lfd;->e(III)I

    move-result v10

    add-int/lit8 v12, v6, 0x1

    int-to-double v12, v12

    const/16 v14, 0x8

    if-ge v10, v14, :cond_56

    int-to-double v14, v10

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 1375
    :cond_56
    iget-wide v14, v1, Leq;->b:D

    cmpl-double v10, v12, v14

    if-ltz v10, :cond_60

    const/4 v1, 0x1

    return v1

    :cond_5e
    move-object/from16 v11, p2

    :cond_60
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_63
    move-object/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_68
    move-object/from16 v11, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_6d
    const/4 v1, 0x0

    return v1
.end method

.method public b(Lsn;)Z
    .registers 8

    .line 751
    iget-wide v0, p1, Lsn;->aM:D

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 752
    iget-wide v4, p1, Lsn;->aO:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v1

    .line 755
    instance-of v2, p1, Lgs;

    if-nez v2, :cond_1d

    .line 759
    invoke-direct {p0, v0, v1}, Lfd;->f(II)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    if-eqz v2, :cond_2a

    .line 761
    move-object v2, p1

    check-cast v2, Lgs;

    .line 762
    iget-object v3, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {p0}, Lfd;->y()V

    .line 765
    :cond_2a
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    invoke-virtual {v0, p1}, Llm;->a(Lsn;)V

    .line 766
    iget-object v0, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    invoke-virtual {p0, p1}, Lfd;->c(Lsn;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(III)F
    .registers 5

    .line 580
    iget-object v0, p0, Lfd;->t:Lxa;

    iget-object v0, v0, Lxa;->f:[F

    invoke-virtual {p0, p1, p2, p3}, Lfd;->n(III)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public c(F)Lbt;
    .registers 19

    .line 943
    invoke-virtual/range {p0 .. p1}, Lfd;->b(F)F

    move-result v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 945
    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_19

    move v0, v1

    :cond_19
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_23

    move-object/from16 v3, p0

    move v0, v2

    goto :goto_25

    :cond_23
    move-object/from16 v3, p0

    .line 949
    :goto_25
    iget-wide v4, v3, Lfd;->H:J

    const/16 v6, 0x10

    shr-long v6, v4, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    const/16 v10, 0x8

    shr-long v10, v4, v10

    and-long/2addr v10, v8

    long-to-float v10, v10

    div-float/2addr v10, v7

    and-long/2addr v4, v8

    long-to-float v4, v4

    div-float/2addr v4, v7

    .line 953
    invoke-virtual/range {p0 .. p1}, Lfd;->g(F)F

    move-result v5

    cmpl-float v7, v5, v1

    const v8, 0x3f733333    # 0.95f

    const v9, 0x3de147ae    # 0.11f

    const v11, 0x3f170a3d    # 0.59f

    const v12, 0x3e99999a    # 0.3f

    if-lez v7, :cond_68

    mul-float v7, v6, v12

    mul-float v13, v10, v11

    add-float/2addr v7, v13

    mul-float v13, v4, v9

    add-float/2addr v7, v13

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v13

    mul-float/2addr v5, v8

    sub-float v5, v2, v5

    mul-float/2addr v6, v5

    sub-float v13, v2, v5

    mul-float/2addr v7, v13

    add-float/2addr v6, v7

    mul-float/2addr v10, v5

    add-float/2addr v10, v7

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    :cond_68
    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v0

    const v7, 0x3dcccccd    # 0.1f

    add-float/2addr v5, v7

    mul-float/2addr v6, v5

    mul-float/2addr v10, v5

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v5

    const v5, 0x3e19999a    # 0.15f

    add-float/2addr v0, v5

    mul-float/2addr v4, v0

    .line 967
    invoke-virtual/range {p0 .. p1}, Lfd;->f(F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_97

    mul-float/2addr v12, v6

    mul-float/2addr v11, v10

    add-float/2addr v12, v11

    mul-float/2addr v9, v4

    add-float/2addr v12, v9

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v12, v1

    mul-float/2addr v0, v8

    sub-float v0, v2, v0

    mul-float/2addr v6, v0

    sub-float/2addr v2, v0

    mul-float/2addr v12, v2

    add-float/2addr v6, v12

    mul-float/2addr v10, v0

    add-float/2addr v10, v12

    mul-float/2addr v4, v0

    add-float/2addr v4, v12

    :cond_97
    float-to-double v11, v6

    float-to-double v13, v10

    float-to-double v0, v4

    move-wide v15, v0

    .line 977
    invoke-static/range {v11 .. v16}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Llm;
    .registers 4

    .line 313
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0, p1, p2}, Lcl;->b(II)Llm;

    move-result-object p1

    return-object p1
.end method

.method protected c()V
    .registers 7

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lfd;->y:Z

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 186
    :goto_6
    iget-object v3, p0, Lfd;->t:Lxa;

    invoke-virtual {v3, v1, v2}, Lxa;->a(II)Z

    move-result v3

    const/16 v4, 0x40

    if-nez v3, :cond_2d

    .line 187
    iget-object v3, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v5, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 188
    iget-object v3, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v5, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_6

    .line 190
    :cond_2d
    iget-object v3, p0, Lfd;->x:Lei;

    invoke-virtual {v3, v1, v4, v2}, Lei;->a(III)V

    .line 191
    iput-boolean v0, p0, Lfd;->y:Z

    return-void
.end method

.method public c(IIIII)V
    .registers 18

    move-object v7, p0

    move v0, p1

    move v1, p2

    move v2, p3

    move/from16 v8, p4

    .line 1040
    new-instance v9, Lqy;

    invoke-direct {v9, p1, p2, p3, v8}, Lqy;-><init>(IIII)V

    .line 1042
    iget-boolean v3, v7, Lfd;->a:Z

    if-eqz v3, :cond_4f

    .line 1043
    iget v0, v9, Lqy;->a:I

    add-int/lit8 v1, v0, -0x8

    iget v0, v9, Lqy;->b:I

    add-int/lit8 v2, v0, -0x8

    iget v0, v9, Lqy;->c:I

    add-int/lit8 v3, v0, -0x8

    iget v0, v9, Lqy;->a:I

    add-int/lit8 v4, v0, 0x8

    iget v0, v9, Lqy;->b:I

    add-int/lit8 v5, v0, 0x8

    iget v0, v9, Lqy;->c:I

    add-int/lit8 v6, v0, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lfd;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1044
    iget v0, v9, Lqy;->a:I

    iget v1, v9, Lqy;->b:I

    iget v2, v9, Lqy;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lfd;->a(III)I

    move-result v0

    .line 1045
    iget v1, v9, Lqy;->d:I

    if-ne v0, v1, :cond_4e

    if-lez v0, :cond_4e

    .line 1046
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    iget v2, v9, Lqy;->a:I

    iget v3, v9, Lqy;->b:I

    iget v4, v9, Lqy;->c:I

    iget-object v5, v7, Lfd;->r:Ljava/util/Random;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lfd;IIILjava/util/Random;)V

    :cond_4e
    return-void

    :cond_4f
    add-int/lit8 v3, v0, -0x8

    add-int/lit8 v4, v1, -0x8

    add-int/lit8 v5, v2, -0x8

    add-int/lit8 v6, v0, 0x8

    add-int/lit8 v10, v1, 0x8

    add-int/lit8 v11, v2, 0x8

    move-object v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v10

    move v6, v11

    .line 1052
    invoke-virtual/range {v0 .. v6}, Lfd;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_89

    if-lez v8, :cond_77

    move/from16 v0, p5

    int-to-long v0, v0

    .line 1054
    iget-object v2, v7, Lfd;->x:Lei;

    invoke-virtual {v2}, Lei;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {v9, v0, v1}, Lqy;->a(J)Lqy;

    .line 1056
    :cond_77
    iget-object v0, v7, Lfd;->F:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 1057
    iget-object v0, v7, Lfd;->F:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object v0, v7, Lfd;->E:Ljava/util/TreeSet;

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_89
    return-void
.end method

.method protected c(Lsn;)V
    .registers 4

    const/4 v0, 0x0

    .line 774
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 775
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpm;

    invoke-interface {v1, p1}, Lpm;->a(Lsn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public c(IIII)Z
    .registers 7

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_29

    if-lt p3, v1, :cond_29

    const v1, 0x1e84800

    if-ge p1, v1, :cond_29

    if-le p3, v1, :cond_10

    goto :goto_29

    :cond_10
    if-gez p2, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x80

    if-lt p2, v1, :cond_18

    return v0

    :cond_18
    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 332
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 333
    invoke-virtual {v0, p1, p2, p3, p4}, Llm;->a(IIII)Z

    move-result p1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method public c(Leq;)Z
    .registers 14

    .line 1281
    iget-wide v0, p1, Leq;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 1282
    iget-wide v1, p1, Leq;->d:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 1283
    iget-wide v5, p1, Leq;->b:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v9

    .line 1284
    iget-wide v5, p1, Leq;->e:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v10

    .line 1285
    iget-wide v5, p1, Leq;->c:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v11

    .line 1286
    iget-wide v5, p1, Leq;->f:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result p1

    move-object v2, p0

    move v3, v0

    move v4, v9

    move v5, v11

    move v6, v1

    move v7, v10

    move v8, p1

    .line 1288
    invoke-virtual/range {v2 .. v8}, Lfd;->a(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_60

    :goto_36
    if-ge v0, v1, :cond_60

    move v2, v9

    :goto_39
    if-ge v2, v10, :cond_5d

    move v3, v11

    :goto_3c
    if-ge v3, p1, :cond_5a

    .line 1292
    invoke-virtual {p0, v0, v2, v3}, Lfd;->a(III)I

    move-result v4

    .line 1294
    sget-object v5, Luu;->as:Lyq;

    iget v5, v5, Lyq;->bn:I

    if-eq v4, v5, :cond_58

    sget-object v5, Luu;->D:Luu;

    iget v5, v5, Luu;->bn:I

    if-eq v4, v5, :cond_58

    sget-object v5, Luu;->E:Luu;

    iget v5, v5, Luu;->bn:I

    if-ne v4, v5, :cond_55

    goto :goto_58

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_58
    :goto_58
    const/4 p1, 0x1

    return p1

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_60
    const/4 p1, 0x0

    return p1
.end method

.method public d(II)I
    .registers 7

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_28

    if-lt p2, v1, :cond_28

    const v1, 0x1e84800

    if-ge p1, v1, :cond_28

    if-le p2, v1, :cond_10

    goto :goto_28

    :cond_10
    shr-int/lit8 v1, p1, 0x4

    shr-int/lit8 v2, p2, 0x4

    .line 523
    invoke-direct {p0, v1, v2}, Lfd;->f(II)Z

    move-result v3

    if-nez v3, :cond_1b

    return v0

    .line 525
    :cond_1b
    invoke-virtual {p0, v1, v2}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p2, p2, 0xf

    .line 526
    invoke-virtual {v0, p1, p2}, Llm;->b(II)I

    move-result p1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method public d(F)Lbt;
    .registers 4

    .line 981
    invoke-virtual {p0, p1}, Lfd;->b(F)F

    move-result v0

    .line 982
    iget-object v1, p0, Lfd;->t:Lxa;

    invoke-virtual {v1, v0, p1}, Lxa;->b(FF)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .registers 6

    .line 195
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->d()I

    move-result v0

    if-gtz v0, :cond_f

    .line 196
    iget-object v0, p0, Lfd;->x:Lei;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lei;->b(I)V

    .line 198
    :cond_f
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->c()I

    move-result v0

    .line 199
    iget-object v1, p0, Lfd;->x:Lei;

    invoke-virtual {v1}, Lei;->e()I

    move-result v1

    .line 200
    :goto_1b
    invoke-virtual {p0, v0, v1}, Lfd;->a(II)I

    move-result v2

    if-nez v2, :cond_40

    .line 201
    iget-object v2, p0, Lfd;->r:Ljava/util/Random;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v4, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 202
    iget-object v2, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v4, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1b

    .line 204
    :cond_40
    iget-object v2, p0, Lfd;->x:Lei;

    invoke-virtual {v2, v0}, Lei;->a(I)V

    .line 205
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0, v1}, Lei;->c(I)V

    return-void
.end method

.method public d(IIII)V
    .registers 7

    .line 355
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->e(IIII)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p4

    .line 357
    sget-object v0, Luu;->t:[Z

    and-int/lit16 v1, p4, 0xff

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_16

    .line 358
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->g(IIII)V

    goto :goto_19

    .line 360
    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->i(IIII)V

    :cond_19
    :goto_19
    return-void
.end method

.method public d(IIIII)V
    .registers 15

    .line 2181
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_13

    .line 2182
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Luu;->a(Lfd;IIIII)V

    :cond_13
    return-void
.end method

.method protected d(Lsn;)V
    .registers 4

    const/4 v0, 0x0

    .line 780
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 781
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpm;

    invoke-interface {v1, p1}, Lpm;->b(Lsn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public d(III)Z
    .registers 4

    .line 274
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public e(F)F
    .registers 5

    .line 1030
    invoke-virtual {p0, p1}, Lfd;->b(F)F

    move-result p1

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 1032
    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    add-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1d

    move p1, v1

    :cond_1d
    cmpl-float v1, p1, v0

    if-lez v1, :cond_22

    goto :goto_23

    :cond_22
    move v0, p1

    :goto_23
    mul-float/2addr v0, v0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    return v0
.end method

.method public e(II)I
    .registers 7

    .line 986
    invoke-virtual {p0, p1, p2}, Lfd;->b(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p2, p2, 0xf

    const/16 v1, 0x7f

    :goto_a
    if-lez v1, :cond_2d

    .line 994
    invoke-virtual {v0, p1, v1, p2}, Llm;->a(III)I

    move-result v2

    if-nez v2, :cond_15

    .line 995
    sget-object v2, Lln;->a:Lln;

    goto :goto_1b

    :cond_15
    sget-object v3, Luu;->m:[Luu;

    aget-object v2, v3, v2

    iget-object v2, v2, Luu;->bA:Lln;

    .line 996
    :goto_1b
    invoke-virtual {v2}, Lln;->c()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lln;->d()Z

    move-result v2

    if-nez v2, :cond_2a

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_2d
    const/4 p1, -0x1

    return p1
.end method

.method public e(III)I
    .registers 6

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_29

    if-lt p3, v1, :cond_29

    const v1, 0x1e84800

    if-ge p1, v1, :cond_29

    if-le p3, v1, :cond_10

    goto :goto_29

    :cond_10
    if-gez p2, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x80

    if-lt p2, v1, :cond_18

    return v0

    :cond_18
    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 348
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 351
    invoke-virtual {v0, p1, p2, p3}, Llm;->b(III)I

    move-result p1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public e(IIIII)V
    .registers 13

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 2275
    invoke-virtual/range {v0 .. v6}, Lfd;->a(Lgs;IIIII)V

    return-void
.end method

.method public e(Lsn;)V
    .registers 4

    .line 786
    iget-object v0, p1, Lsn;->aG:Lsn;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 787
    iget-object v0, p1, Lsn;->aG:Lsn;

    invoke-virtual {v0, v1}, Lsn;->i(Lsn;)V

    .line 789
    :cond_a
    iget-object v0, p1, Lsn;->aH:Lsn;

    if-eqz v0, :cond_11

    .line 790
    invoke-virtual {p1, v1}, Lsn;->i(Lsn;)V

    .line 792
    :cond_11
    invoke-virtual {p1}, Lsn;->K()V

    .line 793
    instance-of v0, p1, Lgs;

    if-eqz v0, :cond_22

    .line 794
    iget-object v0, p0, Lfd;->d:Ljava/util/List;

    check-cast p1, Lgs;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 795
    invoke-virtual {p0}, Lfd;->y()V

    :cond_22
    return-void
.end method

.method public e(IIII)Z
    .registers 7

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_29

    if-lt p3, v1, :cond_29

    const v1, 0x1e84800

    if-ge p1, v1, :cond_29

    if-le p3, v1, :cond_10

    goto :goto_29

    :cond_10
    if-gez p2, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x80

    if-lt p2, v1, :cond_18

    return v0

    :cond_18
    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 371
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 374
    invoke-virtual {v0, p1, p2, p3, p4}, Llm;->b(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method public f(F)F
    .registers 4

    .line 2232
    iget v0, p0, Lfd;->k:F

    iget v1, p0, Lfd;->l:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lfd;->g(F)F

    move-result p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public f(III)Lln;
    .registers 4

    .line 337
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p1

    if-nez p1, :cond_9

    .line 338
    sget-object p1, Lln;->a:Lln;

    return-object p1

    .line 339
    :cond_9
    sget-object p2, Luu;->m:[Luu;

    aget-object p1, p2, p1

    iget-object p1, p1, Luu;->bA:Lln;

    return-object p1
.end method

.method public f(Lsn;)V
    .registers 3

    const/4 v0, 0x1

    .line 1157
    invoke-virtual {p0, p1, v0}, Lfd;->a(Lsn;Z)V

    return-void
.end method

.method public f()Z
    .registers 3

    .line 584
    iget v0, p0, Lfd;->f:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public f(IIII)Z
    .registers 6

    .line 379
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->c(IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 380
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->g(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public g(F)F
    .registers 4

    .line 2236
    iget v0, p0, Lfd;->i:F

    iget v1, p0, Lfd;->j:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public g()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 1064
    :goto_2
    iget-object v2, p0, Lfd;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_24

    .line 1065
    iget-object v2, p0, Lfd;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 1066
    invoke-virtual {v2}, Lsn;->w_()V

    .line 1067
    iget-boolean v2, v2, Lsn;->be:Z

    if-eqz v2, :cond_22

    .line 1068
    iget-object v2, p0, Lfd;->e:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v4

    :cond_22
    add-int/2addr v1, v3

    goto :goto_2

    .line 1072
    :cond_24
    iget-object v1, p0, Lfd;->b:Ljava/util/List;

    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move v1, v0

    .line 1073
    :goto_2c
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 1074
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 1075
    iget v4, v2, Lsn;->bG:I

    .line 1076
    iget v5, v2, Lsn;->bI:I

    .line 1077
    iget-boolean v6, v2, Lsn;->bF:Z

    if-eqz v6, :cond_51

    invoke-direct {p0, v4, v5}, Lfd;->f(II)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1078
    invoke-virtual {p0, v4, v5}, Lfd;->c(II)Llm;

    move-result-object v4

    invoke-virtual {v4, v2}, Llm;->b(Lsn;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_54
    move v1, v0

    .line 1083
    :goto_55
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 1084
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    invoke-virtual {p0, v2}, Lfd;->d(Lsn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1087
    :cond_6b
    iget-object v1, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    .line 1089
    :goto_71
    iget-object v2, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c5

    .line 1090
    iget-object v2, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 1092
    iget-object v4, v2, Lsn;->aH:Lsn;

    if-eqz v4, :cond_98

    .line 1093
    iget-object v4, v2, Lsn;->aH:Lsn;

    iget-boolean v4, v4, Lsn;->be:Z

    if-nez v4, :cond_91

    iget-object v4, v2, Lsn;->aH:Lsn;

    iget-object v4, v4, Lsn;->aG:Lsn;

    if-eq v4, v2, :cond_c3

    .line 1094
    :cond_91
    iget-object v4, v2, Lsn;->aH:Lsn;

    const/4 v5, 0x0

    iput-object v5, v4, Lsn;->aG:Lsn;

    .line 1095
    iput-object v5, v2, Lsn;->aH:Lsn;

    .line 1099
    :cond_98
    iget-boolean v4, v2, Lsn;->be:Z

    if-nez v4, :cond_9f

    .line 1100
    invoke-virtual {p0, v2}, Lfd;->f(Lsn;)V

    .line 1103
    :cond_9f
    iget-boolean v4, v2, Lsn;->be:Z

    if-eqz v4, :cond_c3

    .line 1104
    iget v4, v2, Lsn;->bG:I

    .line 1105
    iget v5, v2, Lsn;->bI:I

    .line 1106
    iget-boolean v6, v2, Lsn;->bF:Z

    if-eqz v6, :cond_b8

    invoke-direct {p0, v4, v5}, Lfd;->f(II)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1107
    invoke-virtual {p0, v4, v5}, Lfd;->c(II)Llm;

    move-result-object v4

    invoke-virtual {v4, v2}, Llm;->b(Lsn;)V

    .line 1109
    :cond_b8
    iget-object v4, p0, Lfd;->b:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1110
    invoke-virtual {p0, v2}, Lfd;->d(Lsn;)V

    move v1, v5

    :cond_c3
    add-int/2addr v1, v3

    goto :goto_71

    .line 1114
    :cond_c5
    iput-boolean v3, p0, Lfd;->L:Z

    .line 1115
    iget-object v1, p0, Lfd;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1116
    :cond_cd
    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 1117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Low;

    .line 1118
    invoke-virtual {v2}, Low;->g()Z

    move-result v3

    if-nez v3, :cond_e2

    .line 1119
    invoke-virtual {v2}, Low;->n_()V

    .line 1122
    :cond_e2
    invoke-virtual {v2}, Low;->g()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 1123
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1125
    iget v3, v2, Low;->e:I

    shr-int/lit8 v3, v3, 0x4

    iget v4, v2, Low;->g:I

    shr-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v3, v4}, Lfd;->c(II)Llm;

    move-result-object v3

    if-eqz v3, :cond_cd

    .line 1126
    iget v4, v2, Low;->e:I

    and-int/lit8 v4, v4, 0xf

    iget v5, v2, Low;->f:I

    iget v2, v2, Low;->g:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v4, v5, v2}, Llm;->e(III)V

    goto :goto_cd

    .line 1129
    :cond_107
    iput-boolean v0, p0, Lfd;->L:Z

    .line 1131
    iget-object v0, p0, Lfd;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_160

    .line 1132
    iget-object v0, p0, Lfd;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_117
    :goto_117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Low;

    .line 1133
    invoke-virtual {v1}, Low;->g()Z

    move-result v2

    if-nez v2, :cond_117

    .line 1134
    iget-object v2, p0, Lfd;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_136

    .line 1135
    iget-object v2, p0, Lfd;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_136
    iget v2, v1, Low;->e:I

    shr-int/lit8 v2, v2, 0x4

    iget v3, v1, Low;->g:I

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v2, v3}, Lfd;->c(II)Llm;

    move-result-object v2

    if-eqz v2, :cond_151

    .line 1139
    iget v3, v1, Low;->e:I

    and-int/lit8 v3, v3, 0xf

    iget v4, v1, Low;->f:I

    iget v5, v1, Low;->g:I

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v2, v3, v4, v5, v1}, Llm;->a(IIILow;)V

    .line 1141
    :cond_151
    iget v2, v1, Low;->e:I

    iget v3, v1, Low;->f:I

    iget v1, v1, Low;->g:I

    invoke-virtual {p0, v2, v3, v1}, Lfd;->j(III)V

    goto :goto_117

    .line 1144
    :cond_15b
    iget-object v0, p0, Lfd;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_160
    return-void
.end method

.method protected g(IIII)V
    .registers 5

    .line 403
    invoke-virtual {p0, p1, p2, p3}, Lfd;->j(III)V

    .line 404
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->i(IIII)V

    return-void
.end method

.method public g(Lsn;)V
    .registers 8

    .line 2117
    iget-wide v0, p1, Lsn;->aM:D

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 2118
    iget-wide v4, p1, Lsn;->aO:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v1

    add-int/lit8 v2, v0, -0x2

    :goto_12
    add-int/lit8 v3, v0, 0x2

    if-gt v2, v3, :cond_25

    add-int/lit8 v3, v1, -0x2

    :goto_18
    add-int/lit8 v4, v1, 0x2

    if-gt v3, v4, :cond_22

    .line 2122
    invoke-virtual {p0, v2, v3}, Lfd;->c(II)Llm;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2126
    :cond_25
    iget-object v0, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2127
    iget-object v0, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method

.method public g(III)Z
    .registers 5

    .line 1479
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 1481
    :cond_c
    invoke-virtual {p1}, Luu;->c()Z

    move-result p1

    return p1
.end method

.method public h()Ljava/lang/String;
    .registers 3

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "All: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(F)V
    .registers 2

    .line 2240
    iput p1, p0, Lfd;->i:F

    .line 2241
    iput p1, p0, Lfd;->j:F

    return-void
.end method

.method public h(IIII)V
    .registers 12

    if-le p3, p4, :cond_5

    move v5, p3

    move v2, p4

    goto :goto_7

    :cond_5
    move v2, p3

    move v5, p4

    :goto_7
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p1

    move v6, p2

    .line 413
    invoke-virtual/range {v0 .. v6}, Lfd;->b(IIIIII)V

    return-void
.end method

.method public h(III)Z
    .registers 5

    .line 1485
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p1

    aget-object p1, v0, p1

    const/4 p2, 0x0

    if-nez p1, :cond_c

    return p2

    .line 1487
    :cond_c
    iget-object p3, p1, Luu;->bA:Lln;

    invoke-virtual {p3}, Lln;->h()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Luu;->d()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    :cond_1b
    return p2
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1437
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0}, Lcl;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(IIII)V
    .registers 6

    add-int/lit8 v0, p1, -0x1

    .line 442
    invoke-direct {p0, v0, p2, p3, p4}, Lfd;->l(IIII)V

    add-int/lit8 v0, p1, 0x1

    .line 443
    invoke-direct {p0, v0, p2, p3, p4}, Lfd;->l(IIII)V

    add-int/lit8 v0, p2, -0x1

    .line 444
    invoke-direct {p0, p1, v0, p3, p4}, Lfd;->l(IIII)V

    add-int/lit8 v0, p2, 0x1

    .line 445
    invoke-direct {p0, p1, v0, p3, p4}, Lfd;->l(IIII)V

    add-int/lit8 v0, p3, -0x1

    .line 446
    invoke-direct {p0, p1, p2, v0, p4}, Lfd;->l(IIII)V

    add-int/lit8 p3, p3, 0x1

    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lfd;->l(IIII)V

    return-void
.end method

.method public i(III)Z
    .registers 5

    if-ltz p2, :cond_10

    const/16 v0, 0x80

    if-lt p2, v0, :cond_7

    goto :goto_10

    :cond_7
    shr-int/lit8 p1, p1, 0x4

    shr-int/lit8 p2, p3, 0x4

    .line 279
    invoke-direct {p0, p1, p2}, Lfd;->f(II)Z

    move-result p1

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public j(III)V
    .registers 6

    const/4 v0, 0x0

    .line 397
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 398
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpm;

    invoke-interface {v1, p1, p2, p3}, Lpm;->a(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public j()Z
    .registers 6

    .line 1503
    iget v0, p0, Lfd;->M:I

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1506
    iput v0, p0, Lfd;->M:I

    const/16 v0, 0xc8

    .line 1509
    :goto_e
    :try_start_e
    iget-object v3, p0, Lfd;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_37

    if-lez v3, :cond_31

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_20

    .line 1515
    iget v0, p0, Lfd;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lfd;->M:I

    return v1

    .line 1511
    :cond_20
    :try_start_20
    iget-object v3, p0, Lfd;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lst;

    invoke-virtual {v3, p0}, Lst;->a(Lfd;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_37

    goto :goto_e

    .line 1515
    :cond_31
    iget v0, p0, Lfd;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lfd;->M:I

    return v2

    :catchall_37
    move-exception v0

    iget v2, p0, Lfd;->M:I

    sub-int/2addr v2, v1

    iput v2, p0, Lfd;->M:I

    throw v0
.end method

.method public j(IIII)Z
    .registers 13

    .line 1961
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1963
    :cond_8
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Luu;->d(Lfd;IIII)Z

    move-result p1

    return p1
.end method

.method public k()V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1566
    invoke-virtual {p0, v0}, Lfd;->a(F)I

    move-result v0

    .line 1567
    iget v1, p0, Lfd;->f:I

    if-eq v0, v1, :cond_c

    .line 1568
    iput v0, p0, Lfd;->f:I

    :cond_c
    return-void
.end method

.method public k(III)V
    .registers 13

    const/4 v0, 0x0

    .line 417
    :goto_1
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 418
    iget-object v1, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lpm;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v2 .. v8}, Lpm;->b(IIIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method public k(IIII)Z
    .registers 13

    .line 1977
    invoke-virtual {p0, p1, p2, p3}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1978
    invoke-virtual {p0, p1, p2, p3}, Lfd;->r(III)Z

    move-result p1

    return p1

    .line 1980
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    return p1

    .line 1982
    :cond_13
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Luu;->c(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public l()V
    .registers 9

    .line 1578
    invoke-virtual {p0}, Lfd;->m()V

    .line 1580
    invoke-virtual {p0}, Lfd;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 1583
    iget-boolean v0, p0, Lfd;->N:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lfd;->q:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1a

    .line 1584
    iget-object v0, p0, Lfd;->d:Ljava/util/List;

    invoke-static {p0, v0}, Lcq;->a(Lfd;Ljava/util/List;)Z

    move-result v0

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    if-nez v0, :cond_31

    .line 1589
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc0

    add-long/2addr v2, v4

    .line 1590
    iget-object v0, p0, Lfd;->x:Lei;

    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lei;->a(J)V

    .line 1592
    invoke-virtual {p0}, Lfd;->z()V

    .line 1596
    :cond_31
    iget-boolean v0, p0, Lfd;->N:Z

    iget-boolean v2, p0, Lfd;->O:Z

    invoke-static {p0, v0, v2}, Lcq;->a(Lfd;ZZ)I

    .line 1597
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0}, Lcl;->a()Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1598
    invoke-virtual {p0, v0}, Lfd;->a(F)I

    move-result v0

    .line 1599
    iget v2, p0, Lfd;->f:I

    if-eq v0, v2, :cond_60

    .line 1600
    iput v0, p0, Lfd;->f:I

    move v0, v1

    .line 1601
    :goto_4a
    iget-object v2, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_60

    .line 1602
    iget-object v2, p0, Lfd;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpm;

    invoke-interface {v2}, Lpm;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 1606
    :cond_60
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1607
    iget v0, p0, Lfd;->p:I

    int-to-long v4, v0

    rem-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    const/4 v0, 0x0

    .line 1608
    invoke-virtual {p0, v1, v0}, Lfd;->a(ZLyb;)V

    .line 1610
    :cond_78
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0, v2, v3}, Lei;->a(J)V

    .line 1613
    invoke-virtual {p0, v1}, Lfd;->a(Z)Z

    .line 1615
    invoke-virtual {p0}, Lfd;->n()V

    return-void
.end method

.method public l(III)Z
    .registers 6

    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 458
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    invoke-virtual {v0, p1, p2, p3}, Llm;->c(III)Z

    move-result p1

    return p1
.end method

.method public m(III)I
    .registers 7

    const/4 v0, 0x0

    if-gez p2, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x80

    if-lt p2, v1, :cond_a

    const/16 p2, 0x7f

    :cond_a
    shr-int/lit8 v1, p1, 0x4

    shr-int/lit8 v2, p3, 0x4

    .line 464
    invoke-virtual {p0, v1, v2}, Lfd;->c(II)Llm;

    move-result-object v1

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    invoke-virtual {v1, p1, p2, p3, v0}, Llm;->c(IIII)I

    move-result p1

    return p1
.end method

.method protected m()V
    .registers 8

    .line 1628
    iget-object v0, p0, Lfd;->t:Lxa;

    iget-boolean v0, v0, Lxa;->e:Z

    if-eqz v0, :cond_7

    return-void

    .line 1630
    :cond_7
    iget v0, p0, Lfd;->m:I

    if-lez v0, :cond_f

    add-int/lit8 v0, v0, -0x1

    .line 1631
    iput v0, p0, Lfd;->m:I

    .line 1634
    :cond_f
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->n()I

    move-result v0

    const v1, 0x29040

    const/16 v2, 0x2ee0

    if-gtz v0, :cond_3f

    .line 1636
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->m()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1637
    iget-object v0, p0, Lfd;->x:Lei;

    iget-object v3, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0xe10

    invoke-virtual {v0, v3}, Lei;->e(I)V

    goto :goto_53

    .line 1639
    :cond_32
    iget-object v0, p0, Lfd;->x:Lei;

    iget-object v3, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lei;->e(I)V

    goto :goto_53

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    .line 1643
    iget-object v3, p0, Lfd;->x:Lei;

    invoke-virtual {v3, v0}, Lei;->e(I)V

    if-gtz v0, :cond_53

    .line 1645
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->m()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lei;->a(Z)V

    .line 1649
    :cond_53
    :goto_53
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->p()I

    move-result v0

    if-gtz v0, :cond_7d

    .line 1651
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->o()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1652
    iget-object v0, p0, Lfd;->x:Lei;

    iget-object v1, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lei;->f(I)V

    goto :goto_91

    .line 1654
    :cond_70
    iget-object v0, p0, Lfd;->x:Lei;

    iget-object v3, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lei;->f(I)V

    goto :goto_91

    :cond_7d
    add-int/lit8 v0, v0, -0x1

    .line 1658
    iget-object v1, p0, Lfd;->x:Lei;

    invoke-virtual {v1, v0}, Lei;->f(I)V

    if-gtz v0, :cond_91

    .line 1660
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->o()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lei;->b(Z)V

    .line 1664
    :cond_91
    :goto_91
    iget v0, p0, Lfd;->j:F

    iput v0, p0, Lfd;->i:F

    .line 1665
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->o()Z

    move-result v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_aa

    .line 1666
    iget v0, p0, Lfd;->j:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lfd;->j:F

    goto :goto_b1

    .line 1668
    :cond_aa
    iget v0, p0, Lfd;->j:F

    float-to-double v3, v0

    sub-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lfd;->j:F

    .line 1670
    :goto_b1
    iget v0, p0, Lfd;->j:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_ba

    iput v3, p0, Lfd;->j:F

    .line 1671
    :cond_ba
    iget v0, p0, Lfd;->j:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_c4

    iput v4, p0, Lfd;->j:F

    .line 1673
    :cond_c4
    iget v0, p0, Lfd;->l:F

    iput v0, p0, Lfd;->k:F

    .line 1674
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->m()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1675
    iget v0, p0, Lfd;->l:F

    float-to-double v5, v0

    add-double/2addr v5, v1

    double-to-float v0, v5

    iput v0, p0, Lfd;->l:F

    goto :goto_df

    .line 1677
    :cond_d8
    iget v0, p0, Lfd;->l:F

    float-to-double v5, v0

    sub-double/2addr v5, v1

    double-to-float v0, v5

    iput v0, p0, Lfd;->l:F

    .line 1679
    :goto_df
    iget v0, p0, Lfd;->l:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_e7

    iput v3, p0, Lfd;->l:F

    .line 1680
    :cond_e7
    iget v0, p0, Lfd;->l:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_ef

    iput v4, p0, Lfd;->l:F

    :cond_ef
    return-void
.end method

.method public n(III)I
    .registers 5

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0, p1, p2, p3, v0}, Lfd;->a(IIIZ)I

    move-result p1

    return p1
.end method

.method protected n()V
    .registers 33

    move-object/from16 v10, p0

    const/4 v0, 0x0

    iput v0, v10, Lfd;->gb:I

    .line 1696
    iget-object v0, v10, Lfd;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 1698
    :goto_b
    iget-object v1, v10, Lfd;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 1699
    iget-object v1, v10, Lfd;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs;

    .line 1700
    iget-wide v2, v1, Lgs;->aM:D

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 1701
    iget-wide v6, v1, Lgs;->aO:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v1

    const/16 v3, -0x6

    move v4, v3

    :goto_2e
    const/16 v5, 0x6

    if-gt v4, v5, :cond_58

    move v6, v3

    :goto_33
    if-gt v6, v5, :cond_55

    .line 1706
    iget-object v7, v10, Lfd;->P:Ljava/util/Set;

    add-int v9, v4, v2

    add-int v12, v6, v1

    iget-object v8, v10, Lfd;->v:Lcl;

    invoke-interface {v8, v9, v12}, Lcl;->a(II)Z

    move-result v8

    if-nez v8, :cond_4a

    iget v8, v10, Lfd;->gb:I

    if-gtz v8, :cond_52

    const/4 v8, 0x1

    iput v8, v10, Lfd;->gb:I

    :cond_4a
    new-instance v8, Lyy;

    invoke-direct {v8, v9, v12}, Lyy;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1710
    :cond_5b
    iget v0, v10, Lfd;->Q:I

    if-lez v0, :cond_63

    add-int/lit8 v0, v0, -0x1

    iput v0, v10, Lfd;->Q:I

    .line 1712
    :cond_63
    iget-object v0, v10, Lfd;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_69
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_234

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyy;

    .line 1713
    iget v1, v0, Lyy;->a:I

    const/16 v13, 0x10

    mul-int/lit8 v14, v1, 0x10

    .line 1714
    iget v1, v0, Lyy;->b:I

    mul-int/lit8 v15, v1, 0x10

    .line 1717
    iget v1, v0, Lyy;->a:I

    iget v0, v0, Lyy;->b:I

    invoke-virtual {v10, v1, v0}, Lfd;->c(II)Llm;

    move-result-object v9

    .line 1719
    iget v0, v10, Lfd;->Q:I

    const v16, 0x3c6ef35f

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-nez v0, :cond_11f

    .line 1720
    iget v0, v10, Lfd;->g:I

    mul-int/lit8 v0, v0, 0x3

    add-int v0, v0, v16

    iput v0, v10, Lfd;->g:I

    shr-int/2addr v0, v8

    and-int/lit8 v1, v0, 0xf

    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0xf

    shr-int/2addr v0, v13

    and-int/lit8 v0, v0, 0x7f

    .line 1726
    invoke-virtual {v9, v1, v0, v2}, Llm;->a(III)I

    move-result v3

    add-int/2addr v1, v14

    add-int/2addr v2, v15

    if-nez v3, :cond_11f

    .line 1729
    invoke-virtual {v10, v1, v0, v2}, Lfd;->m(III)I

    move-result v3

    iget-object v4, v10, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-gt v3, v4, :cond_11f

    sget-object v3, Leb;->a:Leb;

    invoke-virtual {v10, v3, v1, v0, v2}, Lfd;->a(Leb;III)I

    move-result v3

    if-gtz v3, :cond_11f

    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double v24, v3, v5

    int-to-double v0, v0

    add-double v26, v0, v5

    int-to-double v0, v2

    add-double v28, v0, v5

    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v28

    move/from16 v30, v7

    move v11, v8

    move-wide/from16 v7, v17

    .line 1730
    invoke-virtual/range {v0 .. v8}, Lfd;->a(DDDD)Lgs;

    move-result-object v17

    if-eqz v17, :cond_122

    move-wide/from16 v18, v24

    move-wide/from16 v20, v26

    move-wide/from16 v22, v28

    .line 1731
    invoke-virtual/range {v17 .. v23}, Lgs;->g(DDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_122

    const-string v7, "ambient.cave.cave"

    const v8, 0x3f333333    # 0.7f

    .line 1732
    iget-object v0, v10, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float v17, v0, v1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v28

    move-object/from16 v31, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 1733
    iget-object v0, v10, Lfd;->r:Ljava/util/Random;

    const/16 v1, 0x2ee0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1770

    iput v0, v10, Lfd;->Q:I

    goto :goto_124

    :cond_11f
    move/from16 v30, v7

    move v11, v8

    :cond_122
    move-object/from16 v31, v9

    .line 1738
    :goto_124
    iget-object v0, v10, Lfd;->r:Ljava/util/Random;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_16c

    invoke-virtual/range {p0 .. p0}, Lfd;->C()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-virtual/range {p0 .. p0}, Lfd;->B()Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 1739
    iget v0, v10, Lfd;->g:I

    mul-int/lit8 v0, v0, 0x3

    add-int v0, v0, v16

    iput v0, v10, Lfd;->g:I

    shr-int/2addr v0, v11

    and-int/lit8 v1, v0, 0xf

    add-int/2addr v1, v14

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v0, v15

    .line 1743
    invoke-virtual {v10, v1, v0}, Lfd;->e(II)I

    move-result v2

    .line 1745
    invoke-virtual {v10, v1, v2, v0}, Lfd;->t(III)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 1746
    new-instance v8, Lc;

    int-to-double v3, v1

    int-to-double v5, v2

    int-to-double v1, v0

    move-object v0, v8

    move-wide/from16 v17, v1

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide/from16 v6, v17

    invoke-direct/range {v0 .. v7}, Lc;-><init>(Lfd;DDD)V

    invoke-virtual {v10, v8}, Lfd;->a(Lsn;)Z

    .line 1747
    iput v11, v10, Lfd;->m:I

    .line 1752
    :cond_16c
    iget-object v0, v10, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1f4

    .line 1753
    iget v0, v10, Lfd;->g:I

    mul-int/lit8 v0, v0, 0x3

    add-int v0, v0, v16

    iput v0, v10, Lfd;->g:I

    shr-int/2addr v0, v11

    and-int/lit8 v1, v0, 0xf

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    add-int v2, v1, v14

    add-int v3, v0, v15

    .line 1757
    invoke-virtual {v10, v2, v3}, Lfd;->e(II)I

    move-result v4

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lfd;->a()Lxv;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lxv;->a(II)Lkd;

    move-result-object v5

    invoke-virtual {v5}, Lkd;->c()Z

    move-result v5

    if-eqz v5, :cond_1f4

    if-ltz v4, :cond_1f4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1f4

    .line 1759
    sget-object v5, Leb;->b:Leb;

    move-object/from16 v6, v31

    invoke-virtual {v6, v5, v1, v4, v0}, Llm;->a(Leb;III)I

    move-result v5

    const/16 v7, 0xa

    if-ge v5, v7, :cond_1f6

    add-int/lit8 v5, v4, -0x1

    .line 1760
    invoke-virtual {v6, v1, v5, v0}, Llm;->a(III)I

    move-result v7

    .line 1761
    invoke-virtual {v6, v1, v4, v0}, Llm;->a(III)I

    move-result v8

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lfd;->C()Z

    move-result v9

    if-eqz v9, :cond_1e0

    if-nez v8, :cond_1e0

    .line 1764
    sget-object v8, Luu;->aT:Luu;

    invoke-virtual {v8, v10, v2, v4, v3}, Luu;->a(Lfd;III)Z

    move-result v8

    if-eqz v8, :cond_1e0

    if-eqz v7, :cond_1e0

    sget-object v8, Luu;->aU:Luu;

    iget v8, v8, Luu;->bn:I

    if-eq v7, v8, :cond_1e0

    sget-object v8, Luu;->m:[Luu;

    aget-object v8, v8, v7

    iget-object v8, v8, Luu;->bA:Lln;

    invoke-virtual {v8}, Lln;->c()Z

    move-result v8

    if-eqz v8, :cond_1e0

    .line 1765
    sget-object v8, Luu;->aT:Luu;

    iget v8, v8, Luu;->bn:I

    invoke-virtual {v10, v2, v4, v3, v8}, Lfd;->f(IIII)Z

    .line 1769
    :cond_1e0
    sget-object v4, Luu;->C:Luu;

    iget v4, v4, Luu;->bn:I

    if-ne v7, v4, :cond_1f6

    invoke-virtual {v6, v1, v5, v0}, Llm;->b(III)I

    move-result v0

    if-nez v0, :cond_1f6

    .line 1770
    sget-object v0, Luu;->aU:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-virtual {v10, v2, v5, v3, v0}, Lfd;->f(IIII)Z

    goto :goto_1f6

    :cond_1f4
    move-object/from16 v6, v31

    :cond_1f6
    :goto_1f6
    const/4 v7, 0x0

    :goto_1f7
    const/16 v0, 0x50

    if-ge v7, v0, :cond_69

    .line 1778
    iget v0, v10, Lfd;->g:I

    mul-int/lit8 v0, v0, 0x3

    add-int v0, v0, v16

    iput v0, v10, Lfd;->g:I

    shr-int/2addr v0, v11

    and-int/lit8 v1, v0, 0xf

    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0xf

    shr-int/2addr v0, v13

    and-int/lit8 v3, v0, 0x7f

    .line 1784
    iget-object v0, v6, Llm;->b:[B

    shl-int/lit8 v4, v1, 0xb

    shl-int/lit8 v5, v2, 0x7

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    .line 1785
    sget-object v4, Luu;->n:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_231

    .line 1786
    sget-object v4, Luu;->m:[Luu;

    aget-object v0, v4, v0

    add-int v4, v1, v14

    add-int v5, v2, v15

    iget-object v8, v10, Lfd;->r:Ljava/util/Random;

    move-object/from16 v1, p0

    move v2, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lfd;IIILjava/util/Random;)V

    :cond_231
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f7

    :cond_234
    return-void
.end method

.method public o()Ljava/util/List;
    .registers 2

    .line 1868
    iget-object v0, p0, Lfd;->b:Ljava/util/List;

    return-object v0
.end method

.method public o(III)Z
    .registers 8

    const/4 v0, 0x0

    const v1, -0x1e84800

    if-lt p1, v1, :cond_31

    if-lt p3, v1, :cond_31

    const v1, 0x1e84800

    if-ge p1, v1, :cond_31

    if-le p3, v1, :cond_10

    goto :goto_31

    :cond_10
    if-gez p2, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x80

    if-lt p2, v1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    shr-int/lit8 v1, p1, 0x4

    shr-int/lit8 v2, p3, 0x4

    .line 511
    invoke-direct {p0, v1, v2}, Lfd;->f(II)Z

    move-result v3

    if-nez v3, :cond_24

    return v0

    .line 513
    :cond_24
    invoke-virtual {p0, v1, v2}, Lfd;->c(II)Llm;

    move-result-object v0

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 516
    invoke-virtual {v0, p1, p2, p3}, Llm;->c(III)Z

    move-result p1

    return p1

    :cond_31
    :goto_31
    return v0
.end method

.method public p()V
    .registers 2

    .line 1901
    :goto_0
    iget-object v0, p0, Lfd;->v:Lcl;

    invoke-interface {v0}, Lcl;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    return-void
.end method

.method public p(III)V
    .registers 6

    .line 1465
    invoke-virtual {p0, p1, p2, p3}, Lfd;->b(III)Low;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1466
    iget-boolean v1, p0, Lfd;->L:Z

    if-eqz v1, :cond_e

    .line 1467
    invoke-virtual {v0}, Low;->i()V

    goto :goto_26

    :cond_e
    if-eqz v0, :cond_15

    .line 1470
    iget-object v1, p0, Lfd;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_15
    shr-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p3, 0x4

    .line 1473
    invoke-virtual {p0, v0, v1}, Lfd;->c(II)Llm;

    move-result-object v0

    if-eqz v0, :cond_26

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 1474
    invoke-virtual {v0, p1, p2, p3}, Llm;->e(III)V

    :cond_26
    :goto_26
    return-void
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public q(III)V
    .registers 12

    .line 1819
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_7
    const/16 v0, 0x3e8

    if-ge v7, v0, :cond_4c

    .line 1822
    iget-object v0, p0, Lfd;->r:Ljava/util/Random;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v2, v0, v2

    .line 1823
    iget-object v0, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v3, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int v3, v0, v3

    .line 1824
    iget-object v0, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p3

    iget-object v4, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int v4, v0, v1

    .line 1825
    invoke-virtual {p0, v2, v3, v4}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_49

    .line 1827
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    move-object v1, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lfd;IIILjava/util/Random;)V

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_4c
    return-void
.end method

.method public r()V
    .registers 2

    .line 2085
    iget-object v0, p0, Lfd;->w:Lwt;

    invoke-interface {v0}, Lwt;->b()V

    return-void
.end method

.method public r(III)Z
    .registers 8

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    .line 1967
    invoke-virtual {p0, p1, v0, p3, v1}, Lfd;->j(IIII)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    return v2

    :cond_b
    add-int/lit8 v0, p2, 0x1

    .line 1968
    invoke-virtual {p0, p1, v0, p3, v2}, Lfd;->j(IIII)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    add-int/lit8 v0, p3, -0x1

    const/4 v3, 0x2

    .line 1969
    invoke-virtual {p0, p1, p2, v0, v3}, Lfd;->j(IIII)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v0, p3, 0x1

    const/4 v3, 0x3

    .line 1970
    invoke-virtual {p0, p1, p2, v0, v3}, Lfd;->j(IIII)Z

    move-result v0

    if-eqz v0, :cond_28

    return v2

    :cond_28
    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x4

    .line 1971
    invoke-virtual {p0, v0, p2, p3, v3}, Lfd;->j(IIII)Z

    move-result v0

    if-eqz v0, :cond_32

    return v2

    :cond_32
    add-int/2addr p1, v2

    const/4 v0, 0x5

    .line 1972
    invoke-virtual {p0, p1, p2, p3, v0}, Lfd;->j(IIII)Z

    move-result p1

    if-eqz p1, :cond_3b

    return v2

    :cond_3b
    return v1
.end method

.method public s()J
    .registers 3

    .line 2101
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public s(III)Z
    .registers 8

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    .line 1986
    invoke-virtual {p0, p1, v0, p3, v1}, Lfd;->k(IIII)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    return v2

    :cond_b
    add-int/lit8 v0, p2, 0x1

    .line 1987
    invoke-virtual {p0, p1, v0, p3, v2}, Lfd;->k(IIII)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    add-int/lit8 v0, p3, -0x1

    const/4 v3, 0x2

    .line 1988
    invoke-virtual {p0, p1, p2, v0, v3}, Lfd;->k(IIII)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v0, p3, 0x1

    const/4 v3, 0x3

    .line 1989
    invoke-virtual {p0, p1, p2, v0, v3}, Lfd;->k(IIII)Z

    move-result v0

    if-eqz v0, :cond_28

    return v2

    :cond_28
    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x4

    .line 1990
    invoke-virtual {p0, v0, p2, p3, v3}, Lfd;->k(IIII)Z

    move-result v0

    if-eqz v0, :cond_32

    return v2

    :cond_32
    add-int/2addr p1, v2

    const/4 v0, 0x5

    .line 1991
    invoke-virtual {p0, p1, p2, p3, v0}, Lfd;->k(IIII)Z

    move-result p1

    if-eqz p1, :cond_3b

    return v2

    :cond_3b
    return v1
.end method

.method public t()J
    .registers 3

    .line 2105
    iget-object v0, p0, Lfd;->x:Lei;

    invoke-virtual {v0}, Lei;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public t(III)Z
    .registers 6

    .line 2253
    invoke-virtual {p0}, Lfd;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2254
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lfd;->l(III)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 2255
    :cond_f
    invoke-virtual {p0, p1, p3}, Lfd;->e(II)I

    move-result v0

    if-le v0, p2, :cond_16

    return v1

    .line 2257
    :cond_16
    invoke-virtual {p0}, Lfd;->a()Lxv;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lxv;->a(II)Lkd;

    move-result-object p1

    .line 2258
    invoke-virtual {p1}, Lkd;->c()Z

    move-result p2

    if-eqz p2, :cond_25

    return v1

    .line 2259
    :cond_25
    invoke-virtual {p1}, Lkd;->d()Z

    move-result p1

    return p1
.end method

.method public u()Lbr;
    .registers 5

    .line 2109
    new-instance v0, Lbr;

    iget-object v1, p0, Lfd;->x:Lei;

    invoke-virtual {v1}, Lei;->c()I

    move-result v1

    iget-object v2, p0, Lfd;->x:Lei;

    invoke-virtual {v2}, Lei;->d()I

    move-result v2

    iget-object v3, p0, Lfd;->x:Lei;

    invoke-virtual {v3}, Lei;->e()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbr;-><init>(III)V

    return-object v0
.end method

.method public v()V
    .registers 7

    .line 2139
    iget-object v0, p0, Lfd;->b:Ljava/util/List;

    iget-object v1, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 2140
    :goto_9
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 2141
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 2142
    iget v3, v2, Lsn;->bG:I

    .line 2143
    iget v4, v2, Lsn;->bI:I

    .line 2144
    iget-boolean v5, v2, Lsn;->bF:Z

    if-eqz v5, :cond_2e

    invoke-direct {p0, v3, v4}, Lfd;->f(II)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2145
    invoke-virtual {p0, v3, v4}, Lfd;->c(II)Llm;

    move-result-object v3

    invoke-virtual {v3, v2}, Llm;->b(Lsn;)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_31
    move v1, v0

    .line 2149
    :goto_32
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 2150
    iget-object v2, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    invoke-virtual {p0, v2}, Lfd;->d(Lsn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 2152
    :cond_48
    iget-object v1, p0, Lfd;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2154
    :goto_4d
    iget-object v1, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9b

    .line 2155
    iget-object v1, p0, Lfd;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsn;

    .line 2157
    iget-object v2, v1, Lsn;->aH:Lsn;

    if-eqz v2, :cond_74

    .line 2158
    iget-object v2, v1, Lsn;->aH:Lsn;

    iget-boolean v2, v2, Lsn;->be:Z

    if-nez v2, :cond_6d

    iget-object v2, v1, Lsn;->aH:Lsn;

    iget-object v2, v2, Lsn;->aG:Lsn;

    if-eq v2, v1, :cond_98

    .line 2159
    :cond_6d
    iget-object v2, v1, Lsn;->aH:Lsn;

    const/4 v3, 0x0

    iput-object v3, v2, Lsn;->aG:Lsn;

    .line 2160
    iput-object v3, v1, Lsn;->aH:Lsn;

    .line 2164
    :cond_74
    iget-boolean v2, v1, Lsn;->be:Z

    if-eqz v2, :cond_98

    .line 2165
    iget v2, v1, Lsn;->bG:I

    .line 2166
    iget v3, v1, Lsn;->bI:I

    .line 2167
    iget-boolean v4, v1, Lsn;->bF:Z

    if-eqz v4, :cond_8d

    invoke-direct {p0, v2, v3}, Lfd;->f(II)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2168
    invoke-virtual {p0, v2, v3}, Lfd;->c(II)Llm;

    move-result-object v2

    invoke-virtual {v2, v1}, Llm;->b(Lsn;)V

    .line 2170
    :cond_8d
    iget-object v2, p0, Lfd;->b:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2171
    invoke-virtual {p0, v1}, Lfd;->d(Lsn;)V

    move v0, v3

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_9b
    return-void
.end method

.method public w()Lcl;
    .registers 2

    .line 2177
    iget-object v0, p0, Lfd;->v:Lcl;

    return-object v0
.end method

.method public x()Lei;
    .registers 2

    .line 2190
    iget-object v0, p0, Lfd;->x:Lei;

    return-object v0
.end method

.method public y()V
    .registers 3

    .line 2194
    iget-object v0, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lfd;->J:Z

    .line 2196
    iget-object v0, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs;

    .line 2197
    invoke-virtual {v1}, Lgs;->N()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    .line 2198
    iput-boolean v0, p0, Lfd;->J:Z

    :cond_25
    return-void
.end method

.method protected z()V
    .registers 5

    const/4 v0, 0x0

    .line 2205
    iput-boolean v0, p0, Lfd;->J:Z

    .line 2207
    iget-object v1, p0, Lfd;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs;

    .line 2208
    invoke-virtual {v2}, Lgs;->N()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    .line 2209
    invoke-virtual {v2, v0, v0, v3}, Lgs;->a(ZZZ)V

    goto :goto_9

    .line 2213
    :cond_20
    invoke-direct {p0}, Lfd;->F()V

    return-void
.end method
