.class final Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel$requestEmailUpdate$1;
.super Ljava/lang/Object;
.source "EditEmailViewModel.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;->requestEmailUpdate(Lpl/zabka/b2c/presentation/myprofile/email/EditEmailInputs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/reactivex/disposables/Disposable;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel$requestEmailUpdate$1;->this$0:Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel$requestEmailUpdate$1;->this$0:Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;

    invoke-static {p1}, Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;->access$getStateObserver$p(Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel;)Lcom/futuremind/liverelay/LiveStateRelay;

    move-result-object p1

    sget-object v0, Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel$EmailUpdateState$Loading;->INSTANCE:Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel$EmailUpdateState$Loading;

    invoke-virtual {p1, v0}, Lcom/futuremind/liverelay/LiveStateRelay;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/presentation/myprofile/email/EditEmailViewModel$requestEmailUpdate$1;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method