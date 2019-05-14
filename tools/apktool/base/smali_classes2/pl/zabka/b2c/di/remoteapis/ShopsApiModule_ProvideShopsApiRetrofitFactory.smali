.class public final Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;
.super Ljava/lang/Object;
.source "ShopsApiModule_ProvideShopsApiRetrofitFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final authInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/infrastructure/ShopsAuthInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final callAdapterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final converterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final loggingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;


# direct methods
.method public constructor <init>(Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Converter$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/infrastructure/ShopsAuthInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->module:Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;

    .line 31
    iput-object p2, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->converterFactoryProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->callAdapterFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->authInterceptorProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p5, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->loggingInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Converter$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lpl/zabka/b2c/infrastructure/ShopsAuthInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)",
            "Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;"
        }
    .end annotation

    .line 54
    new-instance v6, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;-><init>(Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 5

    .line 39
    iget-object v0, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->module:Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;

    iget-object v1, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->converterFactoryProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    iget-object v2, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->callAdapterFactoryProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/CallAdapter$Factory;

    iget-object v3, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->authInterceptorProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/zabka/b2c/infrastructure/ShopsAuthInterceptor;

    iget-object v4, p0, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule_ProvideShopsApiRetrofitFactory;->loggingInterceptorProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/zabka/b2c/di/remoteapis/ShopsApiModule;->provideShopsApiRetrofit(Lretrofit2/Converter$Factory;Lretrofit2/CallAdapter$Factory;Lpl/zabka/b2c/infrastructure/ShopsAuthInterceptor;Lokhttp3/logging/HttpLoggingInterceptor;)Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method