.class final Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2$5;
.super Ljava/lang/Object;
.source "PaginatedDataSource.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2;->invoke()Lio/reactivex/Flowable;
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
        "Lpl/zabka/b2c/presentation/base/paging/ListWrapper<",
        "Lpl/zabka/b2c/domain/sections/ItemViewModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lpl/zabka/b2c/presentation/base/paging/ListWrapper;",
        "Lpl/zabka/b2c/domain/sections/ItemViewModel;",
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
.field final synthetic this$0:Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2$5;->this$0:Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lpl/zabka/b2c/presentation/base/paging/ListWrapper;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2$5;->accept(Lpl/zabka/b2c/presentation/base/paging/ListWrapper;)V

    return-void
.end method

.method public final accept(Lpl/zabka/b2c/presentation/base/paging/ListWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/zabka/b2c/presentation/base/paging/ListWrapper<",
            "Lpl/zabka/b2c/domain/sections/ItemViewModel;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2$5;->this$0:Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2;

    iget-object v0, v0, Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource$sourceObservable$2;->this$0:Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource;->access$setCurrentItems$p(Lpl/zabka/b2c/infrastructure/base/PaginatedDataSource;Lpl/zabka/b2c/presentation/base/paging/ListWrapper;)V

    return-void
.end method
