.class final Lpl/zabka/b2c/presentation/settings/SettingsViewModel$logout$2;
.super Ljava/lang/Object;
.source "SettingsViewModel.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/presentation/settings/SettingsViewModel;->logout()V
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
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lpl/zabka/b2c/presentation/settings/SettingsViewModel;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/presentation/settings/SettingsViewModel;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/presentation/settings/SettingsViewModel$logout$2;->this$0:Lpl/zabka/b2c/presentation/settings/SettingsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/presentation/settings/SettingsViewModel$logout$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lpl/zabka/b2c/presentation/settings/SettingsViewModel$logout$2;->this$0:Lpl/zabka/b2c/presentation/settings/SettingsViewModel;

    invoke-static {v0}, Lpl/zabka/b2c/presentation/settings/SettingsViewModel;->access$getState$p(Lpl/zabka/b2c/presentation/settings/SettingsViewModel;)Lcom/futuremind/liverelay/LiveEventRelay;

    move-result-object v0

    new-instance v1, Lpl/zabka/b2c/presentation/settings/SettingsViewModel$SettingsState$LogoutError;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lpl/zabka/b2c/presentation/settings/SettingsViewModel$SettingsState$LogoutError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/futuremind/liverelay/LiveEventRelay;->onNext(Ljava/lang/Object;)V

    const-string v0, "Unable to logout"

    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
