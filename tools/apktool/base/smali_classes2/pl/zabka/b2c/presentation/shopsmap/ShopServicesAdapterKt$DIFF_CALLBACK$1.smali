.class public final Lpl/zabka/b2c/presentation/shopsmap/ShopServicesAdapterKt$DIFF_CALLBACK$1;
.super Landroid/support/v7/util/DiffUtil$ItemCallback;
.source "ShopServicesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/zabka/b2c/presentation/shopsmap/ShopServicesAdapterKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/DiffUtil$ItemCallback<",
        "Lpl/zabka/b2c/domain/shop/ShopService;",
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "pl/zabka/b2c/presentation/shopsmap/ShopServicesAdapterKt$DIFF_CALLBACK$1",
        "Landroid/support/v7/util/DiffUtil$ItemCallback;",
        "Lpl/zabka/b2c/domain/shop/ShopService;",
        "areContentsTheSame",
        "",
        "oldItem",
        "newItem",
        "areItemsTheSame",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lpl/zabka/b2c/domain/shop/ShopService;

    check-cast p2, Lpl/zabka/b2c/domain/shop/ShopService;

    invoke-virtual {p0, p1, p2}, Lpl/zabka/b2c/presentation/shopsmap/ShopServicesAdapterKt$DIFF_CALLBACK$1;->areContentsTheSame(Lpl/zabka/b2c/domain/shop/ShopService;Lpl/zabka/b2c/domain/shop/ShopService;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lpl/zabka/b2c/domain/shop/ShopService;Lpl/zabka/b2c/domain/shop/ShopService;)Z
    .locals 1
    .param p1    # Lpl/zabka/b2c/domain/shop/ShopService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpl/zabka/b2c/domain/shop/ShopService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lpl/zabka/b2c/domain/shop/ShopService;

    check-cast p2, Lpl/zabka/b2c/domain/shop/ShopService;

    invoke-virtual {p0, p1, p2}, Lpl/zabka/b2c/presentation/shopsmap/ShopServicesAdapterKt$DIFF_CALLBACK$1;->areItemsTheSame(Lpl/zabka/b2c/domain/shop/ShopService;Lpl/zabka/b2c/domain/shop/ShopService;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lpl/zabka/b2c/domain/shop/ShopService;Lpl/zabka/b2c/domain/shop/ShopService;)Z
    .locals 1
    .param p1    # Lpl/zabka/b2c/domain/shop/ShopService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpl/zabka/b2c/domain/shop/ShopService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lpl/zabka/b2c/domain/shop/ShopService;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lpl/zabka/b2c/domain/shop/ShopService;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
