.class final Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel$dashboardViewDataSourceObservable$7;
.super Ljava/lang/Object;
.source "DashboardViewModel.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;-><init>(Lpl/zabka/b2c/domain/dashboard/LoadDashboardViewUseCase;Lpl/zabka/b2c/presentation/base/viewmodels/CollectionViewModelProvider;Lpl/zabka/b2c/domain/cardnumber/LoadCardNumberUseCase;Lpl/zabka/b2c/domain/settings/SettingsStore;Lpl/zabka/b2c/domain/fcm/RegisterDeviceTokenUseCase;Lpl/zabka/b2c/domain/dashboard/BalanceCardHeaderTracker;Lpl/zabka/b2c/domain/fcm/LoadFirebaseDeviceTokenUseCase;Lpl/zabka/b2c/infrastructure/points/PointsProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lorg/reactivestreams/Publisher<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00060\u00060\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/processors/PublishProcessor;",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lio/reactivex/Flowable;",
        "",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel$dashboardViewDataSourceObservable$7;->this$0:Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Flowable;)Lio/reactivex/processors/PublishProcessor;
    .locals 1
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/processors/PublishProcessor<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel$dashboardViewDataSourceObservable$7;->this$0:Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;

    invoke-static {p1}, Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;->access$getRefreshViewProcessor$p(Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel;)Lio/reactivex/processors/PublishProcessor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lio/reactivex/Flowable;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/presentation/dashboard/DashboardViewModel$dashboardViewDataSourceObservable$7;->apply(Lio/reactivex/Flowable;)Lio/reactivex/processors/PublishProcessor;

    move-result-object p1

    return-object p1
.end method