.class final Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DynamicDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;->initViewModel(Lpl/zabka/b2c/presentation/dynamicdetails/TransitionBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3;->this$0:Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 91
    iget-object v0, p0, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3;->this$0:Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;

    invoke-static {v0}, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;->access$getViewModel$p(Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;)Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsViewModel;

    move-result-object v0

    iget-object v1, p0, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3;->this$0:Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity;

    check-cast v1, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsViewModel;->observeCover(Landroid/arch/lifecycle/LifecycleOwner;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3$1;

    invoke-direct {v1, p0}, Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3$1;-><init>(Lpl/zabka/b2c/presentation/dynamicdetails/DynamicDetailsActivity$initViewModel$3;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
