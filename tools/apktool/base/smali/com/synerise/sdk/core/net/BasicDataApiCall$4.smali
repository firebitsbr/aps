.class Lcom/synerise/sdk/core/net/BasicDataApiCall$4;
.super Ljava/lang/Object;
.source "BasicDataApiCall.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/synerise/sdk/core/net/BasicDataApiCall;->doFinally(Lcom/synerise/sdk/core/listeners/ActionListener;)Lcom/synerise/sdk/core/net/BasicDataApiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/synerise/sdk/core/net/BasicDataApiCall;

.field final synthetic val$doFinallyListener:Lcom/synerise/sdk/core/listeners/ActionListener;


# direct methods
.method constructor <init>(Lcom/synerise/sdk/core/net/BasicDataApiCall;Lcom/synerise/sdk/core/listeners/ActionListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/synerise/sdk/core/net/BasicDataApiCall$4;->this$0:Lcom/synerise/sdk/core/net/BasicDataApiCall;

    iput-object p2, p0, Lcom/synerise/sdk/core/net/BasicDataApiCall$4;->val$doFinallyListener:Lcom/synerise/sdk/core/listeners/ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/synerise/sdk/core/net/BasicDataApiCall$4;->val$doFinallyListener:Lcom/synerise/sdk/core/listeners/ActionListener;

    invoke-interface {v0}, Lcom/synerise/sdk/core/listeners/ActionListener;->onAction()V

    return-void
.end method