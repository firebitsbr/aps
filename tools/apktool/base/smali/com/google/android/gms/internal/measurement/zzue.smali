.class final Lcom/google/android/gms/internal/measurement/zzue;
.super Ljava/lang/Object;


# static fields
.field private static final zzbvf:Lcom/google/android/gms/internal/measurement/zzuc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzuc<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzbvg:Lcom/google/android/gms/internal/measurement/zzuc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzuc<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzud;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzue;->zzbvf:Lcom/google/android/gms/internal/measurement/zzuc;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzue;->zzvt()Lcom/google/android/gms/internal/measurement/zzuc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzue;->zzbvg:Lcom/google/android/gms/internal/measurement/zzuc;

    return-void
.end method

.method private static zzvt()Lcom/google/android/gms/internal/measurement/zzuc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzuc<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v1, 0x0

    .line 2
    :try_start_2
    new-array v2, v1, [Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzuc;

    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "com.google.android.gms.internal.measurement.zzue"

    invoke-static {v3, v0, v2}, Lproguard/configuration/ConfigurationLogger;->logGetDeclaredConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    throw v1

    :catch_1
    move-exception v1

    const-string v2, "com.google.android.gms.internal.measurement.zzue"

    .line 1
    invoke-static {v2, v0}, Lproguard/configuration/ConfigurationLogger;->logForName(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzvu()Lcom/google/android/gms/internal/measurement/zzuc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzuc<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzue;->zzbvf:Lcom/google/android/gms/internal/measurement/zzuc;

    return-object v0
.end method

.method static zzvv()Lcom/google/android/gms/internal/measurement/zzuc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzuc<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzue;->zzbvg:Lcom/google/android/gms/internal/measurement/zzuc;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
