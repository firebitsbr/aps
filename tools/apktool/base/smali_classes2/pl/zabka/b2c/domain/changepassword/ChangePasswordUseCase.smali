.class public final Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;
.super Ljava/lang/Object;
.source "ChangePasswordUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;",
        "",
        "authStore",
        "Lpl/zabka/b2c/domain/auth/AuthStore;",
        "syneriseSdkRepository",
        "Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;",
        "(Lpl/zabka/b2c/domain/auth/AuthStore;Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;)V",
        "changePassword",
        "Lio/reactivex/Completable;",
        "changePasswordInputs",
        "Lpl/zabka/b2c/domain/changepassword/ChangePasswordInputs;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final authStore:Lpl/zabka/b2c/domain/auth/AuthStore;

.field private final syneriseSdkRepository:Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;


# direct methods
.method public constructor <init>(Lpl/zabka/b2c/domain/auth/AuthStore;Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;)V
    .locals 1
    .param p1    # Lpl/zabka/b2c/domain/auth/AuthStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syneriseSdkRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;->authStore:Lpl/zabka/b2c/domain/auth/AuthStore;

    iput-object p2, p0, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;->syneriseSdkRepository:Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;

    return-void
.end method

.method public static final synthetic access$getAuthStore$p(Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;)Lpl/zabka/b2c/domain/auth/AuthStore;
    .locals 0

    .line 11
    iget-object p0, p0, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;->authStore:Lpl/zabka/b2c/domain/auth/AuthStore;

    return-object p0
.end method


# virtual methods
.method public final changePassword(Lpl/zabka/b2c/domain/changepassword/ChangePasswordInputs;)Lio/reactivex/Completable;
    .locals 3
    .param p1    # Lpl/zabka/b2c/domain/changepassword/ChangePasswordInputs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "changePasswordInputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;->syneriseSdkRepository:Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;

    .line 18
    invoke-virtual {p1}, Lpl/zabka/b2c/domain/changepassword/ChangePasswordInputs;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lpl/zabka/b2c/domain/changepassword/ChangePasswordInputs;->getNewPassword()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lpl/zabka/b2c/infrastructure/synerisesdk/SyneriseSdkRepository;->changePassword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 21
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 22
    sget-object v1, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase$changePassword$1;->INSTANCE:Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase$changePassword$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    .line 32
    new-instance v1, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase$changePassword$2;

    invoke-direct {v1, p0, p1}, Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase$changePassword$2;-><init>(Lpl/zabka/b2c/domain/changepassword/ChangePasswordUseCase;Lpl/zabka/b2c/domain/changepassword/ChangePasswordInputs;)V

    check-cast v1, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "syneriseSdkRepository.ch\u2026wordInputs.newPassword) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method