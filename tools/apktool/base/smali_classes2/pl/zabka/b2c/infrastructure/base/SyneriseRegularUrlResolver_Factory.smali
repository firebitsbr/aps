.class public final Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;
.super Ljava/lang/Object;
.source "SyneriseRegularUrlResolver_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver;",
        ">;"
    }
.end annotation


# instance fields
.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
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
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;"
        }
    .end annotation

    .line 23
    new-instance v0, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;

    invoke-direct {v0, p0}, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;->get()Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver;

    move-result-object v0

    return-object v0
.end method

.method public get()Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver;
    .locals 2

    .line 18
    new-instance v0, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver;

    iget-object v1, p0, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lpl/zabka/b2c/infrastructure/base/SyneriseRegularUrlResolver;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method
