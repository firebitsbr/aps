.class final Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivateEmailConfirmationActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivateEmailConfirmationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivateEmailConfirmationActivity.kt\npl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity$viewModel$2\n+ 2 ViewModelFactoryExtensions.kt\npl/zabka/b2c/helpers/ViewModelFactoryExtensionsKt\n*L\n1#1,16:1\n11#2:17\n*E\n*S KotlinDebug\n*F\n+ 1 ActivateEmailConfirmationActivity.kt\npl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity$viewModel$2\n*L\n9#1:17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationViewModel;",
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
.field final synthetic this$0:Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity$viewModel$2;->this$0:Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity$viewModel$2;->invoke()Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationViewModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity$viewModel$2;->this$0:Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity;

    invoke-virtual {v0}, Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationActivity;->getViewModelFactory()Landroid/arch/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    .line 17
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026ctory).get(T::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lpl/zabka/b2c/presentation/myprofile/email/confirmation/ActivateEmailConfirmationViewModel;

    return-object v0
.end method
