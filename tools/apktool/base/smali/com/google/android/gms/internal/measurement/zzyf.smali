.class final Lcom/google/android/gms/internal/measurement/zzyf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private value:Ljava/lang/Object;

.field private zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzyd<",
            "**>;"
        }
    .end annotation
.end field

.field private zzcfb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzyk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    return-void
.end method

.method private final toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyf;->zzf()I

    move-result v0

    new-array v0, v0, [B

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzya;->zzo([B)Lcom/google/android/gms/internal/measurement/zzya;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzyf;->zza(Lcom/google/android/gms/internal/measurement/zzya;)V

    return-object v0
.end method

.method private final zzzc()Lcom/google/android/gms/internal/measurement/zzyf;
    .locals 5

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyf;-><init>()V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 130
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/zzyi;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzyi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzyi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzyi;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [[B

    .line 139
    array-length v3, v1

    new-array v3, v3, [[B

    .line 140
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    .line 141
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_9

    .line 142
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto :goto_3

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto :goto_3

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto :goto_3

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_7

    .line 151
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto :goto_3

    .line 152
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    goto :goto_3

    .line 154
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/measurement/zzyi;

    if-eqz v1, :cond_9

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/measurement/zzyi;

    .line 156
    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzyi;

    .line 157
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    .line 158
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_9

    .line 159
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzyi;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzyi;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyf;->zzzc()Lcom/google/android/gms/internal/measurement/zzyf;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzyf;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 94
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyf;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    if-eq v0, v2, :cond_2

    return v1

    .line 98
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzyd;->zzceu:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    .line 101
    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 102
    :cond_4
    instance-of v1, v0, [I

    if-eqz v1, :cond_5

    .line 103
    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 104
    :cond_5
    instance-of v1, v0, [J

    if-eqz v1, :cond_6

    .line 105
    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 106
    :cond_6
    instance-of v1, v0, [F

    if-eqz v1, :cond_7

    .line 107
    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 108
    :cond_7
    instance-of v1, v0, [D

    if-eqz v1, :cond_8

    .line 109
    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 110
    :cond_8
    instance-of v1, v0, [Z

    if-eqz v1, :cond_9

    .line 111
    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 112
    :cond_9
    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 115
    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyf;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzyf;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyf;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzya;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 73
    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/zzyd;->zzcev:Z

    if-eqz v2, :cond_2

    .line 75
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 77
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v1, v4, p1}, Lcom/google/android/gms/internal/measurement/zzyd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzya;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 82
    :cond_2
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzyd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzya;)V

    return-void

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzyk;

    .line 86
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzyk;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzya;->zzcd(I)V

    .line 87
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzyk;->zzbtx:[B

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzya;->zzp([B)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzyk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzyi;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyk;->zzbtx:[B

    .line 8
    array-length v0, p1

    .line 9
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzxz;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzvb()I

    move-result v1

    .line 13
    array-length p1, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzya;->zzbe(I)I

    move-result v2

    sub-int/2addr p1, v2

    if-ne v1, p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyi;->zza(Lcom/google/android/gms/internal/measurement/zzxz;)Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object p1

    goto/16 :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->zzzd()Lcom/google/android/gms/internal/measurement/zzyh;

    move-result-object p1

    throw p1

    .line 16
    :cond_2
    instance-of v1, v0, [Lcom/google/android/gms/internal/measurement/zzyi;

    if-eqz v1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyd;->zzai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/measurement/zzyi;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzyi;

    .line 20
    array-length v1, v0

    array-length v3, p1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/measurement/zzyi;

    .line 21
    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    goto :goto_0

    .line 23
    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzvv;

    if-eqz v1, :cond_4

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 25
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyd;->zzai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvv;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzvv;->zzwh()Lcom/google/android/gms/internal/measurement/zzvw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvw;->zza(Lcom/google/android/gms/internal/measurement/zzvv;)Lcom/google/android/gms/internal/measurement/zzvw;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzvw;->zzwo()Lcom/google/android/gms/internal/measurement/zzvv;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_4
    instance-of v0, v0, [Lcom/google/android/gms/internal/measurement/zzvv;

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 29
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyd;->zzai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/measurement/zzvv;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzvv;

    .line 31
    array-length v1, v0

    array-length v3, p1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/measurement/zzvv;

    .line 32
    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    goto :goto_0

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyd;->zzai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    return-void
.end method

.method final zzf()I
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfa:Lcom/google/android/gms/internal/measurement/zzyd;

    .line 51
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/zzyd;->zzcev:Z

    if-eqz v3, :cond_1

    .line 54
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 56
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzyd;->zzao(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzyd;->zzao(Ljava/lang/Object;)I

    move-result v4

    goto :goto_2

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zzcfb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzyk;

    .line 66
    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzyk;->tag:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzya;->zzbl(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 67
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzyk;->zzbtx:[B

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v4, v3

    goto :goto_1

    :cond_3
    :goto_2
    return v4
.end method
