.class public final Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;
.super Ljava/lang/Object;
.source "EmailSentActivateViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final activateEmailUseCaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/domain/profile/ActivateEmailUseCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/domain/profile/ActivateEmailUseCase;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;->activateEmailUseCaseProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/domain/profile/ActivateEmailUseCase;",
            ">;)",
            "Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;"
        }
    .end annotation

    .line 24
    new-instance v0, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;

    invoke-direct {v0, p0}, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;->get()Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel;
    .locals 2

    .line 19
    new-instance v0, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel;

    iget-object v1, p0, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel_Factory;->activateEmailUseCaseProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/zabka/b2c/domain/profile/ActivateEmailUseCase;

    invoke-direct {v0, v1}, Lpl/zabka/b2c/presentation/myprofile/email/EmailSentActivateViewModel;-><init>(Lpl/zabka/b2c/domain/profile/ActivateEmailUseCase;)V

    return-object v0
.end method