.class final Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;
.super Lpl/zabka/b2c/presentation/barcode/BarcodeBuilder_ContributeBarcodeBottomSheetDialogFragment$app_prodRelease$BarcodeBottomSheetDialogFragmentSubcomponent$Builder;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/zabka/b2c/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BarcodeBottomSheetDialogFragmentSubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;

.field final synthetic this$0:Lpl/zabka/b2c/di/DaggerAppComponent;


# direct methods
.method private constructor <init>(Lpl/zabka/b2c/di/DaggerAppComponent;)V
    .locals 0

    .line 3017
    iput-object p1, p0, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;->this$0:Lpl/zabka/b2c/di/DaggerAppComponent;

    invoke-direct {p0}, Lpl/zabka/b2c/presentation/barcode/BarcodeBuilder_ContributeBarcodeBottomSheetDialogFragment$app_prodRelease$BarcodeBottomSheetDialogFragmentSubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpl/zabka/b2c/di/DaggerAppComponent;Lpl/zabka/b2c/di/DaggerAppComponent$1;)V
    .locals 0

    .line 3017
    invoke-direct {p0, p1}, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;-><init>(Lpl/zabka/b2c/di/DaggerAppComponent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 3017
    invoke-virtual {p0}, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;->build()Lpl/zabka/b2c/presentation/barcode/BarcodeBuilder_ContributeBarcodeBottomSheetDialogFragment$app_prodRelease$BarcodeBottomSheetDialogFragmentSubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lpl/zabka/b2c/presentation/barcode/BarcodeBuilder_ContributeBarcodeBottomSheetDialogFragment$app_prodRelease$BarcodeBottomSheetDialogFragmentSubcomponent;
    .locals 3

    .line 3026
    iget-object v0, p0, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;->seedInstance:Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;

    if-eqz v0, :cond_0

    .line 3030
    new-instance v0, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentImpl;

    iget-object v1, p0, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;->this$0:Lpl/zabka/b2c/di/DaggerAppComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentImpl;-><init>(Lpl/zabka/b2c/di/DaggerAppComponent;Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;Lpl/zabka/b2c/di/DaggerAppComponent$1;)V

    return-object v0

    .line 3027
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;

    .line 3028
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 3017
    check-cast p1, Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;->seedInstance(Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;)V

    return-void
.end method

.method public seedInstance(Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;)V
    .locals 0

    .line 3035
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;

    iput-object p1, p0, Lpl/zabka/b2c/di/DaggerAppComponent$BarcodeBottomSheetDialogFragmentSubcomponentBuilder;->seedInstance:Lpl/zabka/b2c/presentation/barcode/BarcodeBottomSheetDialogFragment;

    return-void
.end method