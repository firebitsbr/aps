.class public final Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;
.super Ljava/lang/Object;
.source "RetrofitShopsRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/infrastructure/shop/ShopsApi;",
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
            "Lpl/zabka/b2c/infrastructure/shop/ShopsApi;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;->apiProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/infrastructure/shop/ShopsApi;",
            ">;)",
            "Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;"
        }
    .end annotation

    .line 20
    new-instance v0, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;

    invoke-direct {v0, p0}, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;->get()Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository;

    move-result-object v0

    return-object v0
.end method

.method public get()Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository;
    .locals 2

    .line 16
    new-instance v0, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository;

    iget-object v1, p0, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository_Factory;->apiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/zabka/b2c/infrastructure/shop/ShopsApi;

    invoke-direct {v0, v1}, Lpl/zabka/b2c/infrastructure/shop/RetrofitShopsRepository;-><init>(Lpl/zabka/b2c/infrastructure/shop/ShopsApi;)V

    return-object v0
.end method