.class final Lpl/zabka/b2c/presentation/login/LoginViewModel$cardNumberDisposable$1;
.super Ljava/lang/Object;
.source "LoginViewModel.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/login/LoginViewModel;-><init>(Lpl/zabka/b2c/domain/AuthManager;Lpl/zabka/b2c/domain/auth/LoginValidator;Lpl/zabka/b2c/domain/cardnumber/LoadSharedPrefsCardNumberUseCase;)V
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
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "cardNumber",
        "",
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
.field final synthetic this$0:Lpl/zabka/b2c/presentation/login/LoginViewModel;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/login/LoginViewModel;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/login/LoginViewModel$cardNumberDisposable$1;->this$0:Lpl/zabka/b2c/presentation/login/LoginViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/presentation/login/LoginViewModel$cardNumberDisposable$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lpl/zabka/b2c/presentation/login/LoginViewModel$cardNumberDisposable$1;->this$0:Lpl/zabka/b2c/presentation/login/LoginViewModel;

    invoke-static {v0}, Lpl/zabka/b2c/presentation/login/LoginViewModel;->access$getCardNumberState$p(Lpl/zabka/b2c/presentation/login/LoginViewModel;)Lcom/futuremind/liverelay/LiveStateRelay;

    move-result-object v0

    new-instance v1, Lpl/zabka/b2c/presentation/login/LoginViewModel$CardNumber$CardNumberLoaded;

    const-string v2, "cardNumber"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lpl/zabka/b2c/presentation/login/LoginViewModel$CardNumber$CardNumberLoaded;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/futuremind/liverelay/LiveStateRelay;->onNext(Ljava/lang/Object;)V

    return-void
.end method