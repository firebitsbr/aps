.class public Lcom/facebook/marketing/CodelessActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "CodelessActivityLifecycleTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final buttonIndexer:Lcom/facebook/marketing/internal/ButtonIndexer;

.field private static isAppIndexingEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 32
    new-instance v0, Lcom/facebook/marketing/internal/ButtonIndexer;

    invoke-direct {v0}, Lcom/facebook/marketing/internal/ButtonIndexer;-><init>()V

    sput-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->buttonIndexer:Lcom/facebook/marketing/internal/ButtonIndexer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/marketing/internal/ButtonIndexer;
    .locals 1

    .line 29
    sget-object v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker;->buttonIndexer:Lcom/facebook/marketing/internal/ButtonIndexer;

    return-object v0
.end method

.method public static startTracking(Landroid/app/Application;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/facebook/marketing/CodelessActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/marketing/CodelessActivityLifecycleTracker$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method