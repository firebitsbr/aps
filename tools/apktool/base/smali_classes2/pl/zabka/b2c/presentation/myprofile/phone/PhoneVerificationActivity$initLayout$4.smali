.class final Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity$initLayout$4;
.super Ljava/lang/Object;
.source "PhoneVerificationActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;->initLayout()V
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
        "Ljava/lang/CharSequence;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "pin",
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
.field final synthetic this$0:Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity$initLayout$4;->this$0:Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/CharSequence;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity$initLayout$4;->this$0:Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;

    sget v1, Lpl/zabka/b2c/R$id;->submitButton:I

    invoke-virtual {v0, v1}, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "submitButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object v1, p0, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity$initLayout$4;->this$0:Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;

    invoke-virtual {v1}, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    iget-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity$initLayout$4;->this$0:Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;

    sget v0, Lpl/zabka/b2c/R$id;->pinInputLayout:I

    invoke-virtual {p1, v0}, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/zabka/b2c/widgets/ZabkaTextInputLayout;

    const-string v0, "pinInputLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lpl/zabka/b2c/widgets/ZabkaTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/presentation/myprofile/phone/PhoneVerificationActivity$initLayout$4;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method
