.class Lcom/facebook/marketing/internal/MarketingInitProvider$1;
.super Ljava/lang/Object;
.source "MarketingInitProvider.java"

# interfaces
.implements Lcom/facebook/FacebookSdk$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/marketing/internal/MarketingInitProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/marketing/internal/MarketingInitProvider;


# direct methods
.method constructor <init>(Lcom/facebook/marketing/internal/MarketingInitProvider;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/facebook/marketing/internal/MarketingInitProvider$1;->this$0:Lcom/facebook/marketing/internal/MarketingInitProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/facebook/marketing/internal/MarketingInitProvider$1;->this$0:Lcom/facebook/marketing/internal/MarketingInitProvider;

    invoke-static {v0}, Lcom/facebook/marketing/internal/MarketingInitProvider;->access$000(Lcom/facebook/marketing/internal/MarketingInitProvider;)V

    return-void
.end method
