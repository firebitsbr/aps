.class final Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment$initViewModel$2;
.super Ljava/lang/Object;
.source "CouponDetailsDialogFragment.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;->initViewModel()V
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
        "Lpl/zabka/b2c/presentation/coupon/CouponActivationViewModel$ActivationCounterState;",
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
        "Lpl/zabka/b2c/presentation/coupon/CouponActivationViewModel$ActivationCounterState;",
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
.field final synthetic this$0:Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment$initViewModel$2;->this$0:Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lpl/zabka/b2c/presentation/coupon/CouponActivationViewModel$ActivationCounterState;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment$initViewModel$2;->accept(Lpl/zabka/b2c/presentation/coupon/CouponActivationViewModel$ActivationCounterState;)V

    return-void
.end method

.method public final accept(Lpl/zabka/b2c/presentation/coupon/CouponActivationViewModel$ActivationCounterState;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment$initViewModel$2;->this$0:Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;->access$updateCounter(Lpl/zabka/b2c/presentation/coupon/CouponDetailsDialogFragment;Lpl/zabka/b2c/presentation/coupon/CouponActivationViewModel$ActivationCounterState;)V

    return-void
.end method
