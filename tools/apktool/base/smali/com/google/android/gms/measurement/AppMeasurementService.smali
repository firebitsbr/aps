.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzfc;


# instance fields
.field private zzadc:Lcom/google/android/gms/measurement/internal/zzey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzey<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final zzfz()Lcom/google/android/gms/measurement/internal/zzey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzey<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzadc:Lcom/google/android/gms/measurement/internal/zzey;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzadc:Lcom/google/android/gms/measurement/internal/zzey;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzadc:Lcom/google/android/gms/measurement/internal/zzey;

    return-object v0
.end method


# virtual methods
.method public final callServiceStopSelfResult(I)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->onDestroy()V

    .line 10
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zza(Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
