.class final Lpl/zabka/b2c/infrastructure/points/PointsProvider$setNewPoints$2;
.super Ljava/lang/Object;
.source "PointsProvider.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/zabka/b2c/infrastructure/points/PointsProvider;->setNewPoints(I)V
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
        "Ljava/lang/Integer;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Integer;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/zabka/b2c/infrastructure/points/PointsProvider;


# direct methods
.method constructor <init>(Lpl/zabka/b2c/infrastructure/points/PointsProvider;)V
    .locals 0

    iput-object p1, p0, Lpl/zabka/b2c/infrastructure/points/PointsProvider$setNewPoints$2;->this$0:Lpl/zabka/b2c/infrastructure/points/PointsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/points/PointsProvider$setNewPoints$2;->this$0:Lpl/zabka/b2c/infrastructure/points/PointsProvider;

    invoke-static {v0}, Lpl/zabka/b2c/infrastructure/points/PointsProvider;->access$getRemotePointsTracker$p(Lpl/zabka/b2c/infrastructure/points/PointsProvider;)Lpl/zabka/b2c/domain/points/RemotePointsTracker;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lpl/zabka/b2c/domain/points/RemotePointsTracker;->remotePointsOnNext(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lpl/zabka/b2c/infrastructure/points/PointsProvider$setNewPoints$2;->accept(Ljava/lang/Integer;)V

    return-void
.end method
