.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static volatile advertiserIDCollectionEnabled:Ljava/lang/Boolean;

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field private static volatile autoLogAppEventsEnabled:Ljava/lang/Boolean;

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile codelessDebugLogEnabled:Ljava/lang/Boolean;

.field private static executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkInitialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    const-string v0, "facebook.com"

    .line 80
    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    sput-boolean v3, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 83
    sput-boolean v3, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    const v0, 0xface

    .line 89
    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 101
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 65
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAdvertiserIDCollectionEnabled()Z
    .locals 1

    .line 885
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 886
    sget-object v0, Lcom/facebook/FacebookSdk;->advertiserIDCollectionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 533
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 534
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 798
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 799
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAutoLogAppEventsEnabled()Z
    .locals 1

    .line 852
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 853
    sget-object v0, Lcom/facebook/FacebookSdk;->autoLogAppEventsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .locals 1

    .line 923
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 924
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .locals 1

    .line 835
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 836
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getCodelessDebugLogEnabled()Z
    .locals 1

    .line 869
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 870
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 482
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 484
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 486
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 486
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .locals 1

    .line 510
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphApiVersion()Ljava/lang/String;
    .locals 5

    .line 562
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "getGraphApiVersion: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .locals 2

    .line 644
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "limitEventUsage"

    .line 647
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getOnProgressThreshold()J
    .locals 2

    .line 670
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 671
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.39.0"

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 438
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .locals 1

    .line 937
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 358
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .locals 1

    .line 455
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .locals 2

    .line 429
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 430
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 692
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 693
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 692
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_c

    .line 698
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 702
    :cond_1
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 703
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 704
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 705
    check-cast v0, Ljava/lang/String;

    .line 706
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 709
    :cond_2
    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_3
    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_0

    .line 712
    :cond_4
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 718
    :cond_5
    :goto_0
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 719
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 722
    :cond_6
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 723
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 726
    :cond_7
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    const v1, 0xface

    if-ne v0, v1, :cond_8

    .line 727
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CallbackOffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 732
    :cond_8
    sget-object v0, Lcom/facebook/FacebookSdk;->autoLogAppEventsEnabled:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 733
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->autoLogAppEventsEnabled:Ljava/lang/Boolean;

    .line 738
    :cond_9
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 739
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CodelessDebugLogEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    .line 744
    :cond_a
    sget-object v0, Lcom/facebook/FacebookSdk;->advertiserIDCollectionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    .line 745
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/FacebookSdk;->advertiserIDCollectionEnabled:Ljava/lang/Boolean;

    :cond_b
    return-void

    :cond_c
    :goto_1
    return-void

    :catch_0
    return-void
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 590
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    const-string v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    .line 591
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 593
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    :try_start_1
    sget-object v8, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 600
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 601
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v10

    .line 597
    invoke-static {v8, v0, v9, v10, p0}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "%s/activities"

    const/4 v8, 0x1

    .line 607
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 608
    invoke-static {v0, p1, p0, v0}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    cmp-long p1, v6, v4

    if-nez p1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    .line 615
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 617
    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 618
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 604
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "An error occurred while publishing install."

    invoke-direct {p1, v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 588
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both context and applicationId must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "Facebook-publish"

    .line 622
    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 575
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/FacebookSdk$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    .line 246
    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 269
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 271
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "applicationContext"

    .line 276
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 280
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 281
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 286
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 289
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/facebook/FacebookSdk;->autoLogAppEventsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    .line 305
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    .line 308
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 311
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 313
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 315
    new-instance v1, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v2, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 322
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v2, p1, p0}, Lcom/facebook/FacebookSdk$3;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 350
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    monitor-exit v0

    return-void

    .line 290
    :cond_3
    :try_start_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
