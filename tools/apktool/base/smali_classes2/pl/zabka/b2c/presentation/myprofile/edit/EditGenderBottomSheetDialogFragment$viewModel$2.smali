.class final Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EditGenderBottomSheetDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogViewModel;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogViewModel;",
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
.field final synthetic this$0:Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$viewModel$2;->this$0:Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$viewModel$2;->invoke()Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogViewModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$viewModel$2;->this$0:Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment;

    invoke-virtual {v0}, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment;->getViewModelFactory()Landroid/arch/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    const-class v1, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogViewModel;

    invoke-interface {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogViewModel;

    return-object v0
.end method