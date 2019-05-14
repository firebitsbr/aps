.class public Lcom/facebook/appevents/codeless/internal/ViewHierarchy;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"


# static fields
.field private static RCTRootViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static methodFindTouchTargetView:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 118
    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRCTRootView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 510
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTRootView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 513
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 514
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 515
    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChildrenOfView(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 137
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 138
    check-cast p0, Landroid/view/ViewGroup;

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getClassTypeBitmask(Landroid/view/View;)I
    .locals 2

    .line 243
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isClickableView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    .line 250
    :cond_1
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isAdapterViewItem(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    .line 254
    :cond_2
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x400

    or-int/lit8 v0, v0, 0x1

    .line 258
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 261
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    .line 263
    :cond_3
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 268
    :cond_4
    :goto_1
    instance-of p0, p0, Landroid/widget/EditText;

    if-eqz p0, :cond_a

    or-int/lit16 v0, v0, 0x800

    goto :goto_3

    .line 271
    :cond_5
    instance-of v1, p0, Landroid/widget/Spinner;

    if-nez v1, :cond_9

    instance-of v1, p0, Landroid/widget/DatePicker;

    if-eqz v1, :cond_6

    goto :goto_2

    .line 274
    :cond_6
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_7

    const/high16 p0, 0x10000

    or-int/2addr v0, p0

    goto :goto_3

    .line 276
    :cond_7
    instance-of v1, p0, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x4000

    goto :goto_3

    .line 278
    :cond_8
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 279
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_a

    or-int/lit8 v0, v0, 0x40

    goto :goto_3

    :cond_9
    :goto_2
    or-int/lit16 v0, v0, 0x1000

    :cond_a
    :goto_3
    return v0
.end method

.method public static getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 220
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 223
    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 225
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 226
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    .line 227
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 228
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 229
    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 230
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "childviews"

    .line 232
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 235
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create JSONObject for view."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private static getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 3

    .line 386
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "top"

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "left"

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "scrollx"

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "scrolly"

    .line 394
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "visibility"

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 397
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create JSONObject for dimension."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 5

    const/4 v0, 0x0

    .line 406
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAccessibilityDelegate"

    const/4 v3, 0x0

    .line 407
    new-array v4, v3, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :try_start_1
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    :try_start_2
    new-array v2, v3, [Ljava/lang/Object;

    .line 410
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    return-object p0

    :catch_0
    move-exception p0

    const-string v3, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 408
    invoke-static {v3, v1, v2, v4}, Lproguard/configuration/ConfigurationLogger;->logGetMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v0

    :catch_2
    return-object v0

    :catch_3
    return-object v0

    :catch_4
    return-object v0

    :catch_5
    return-object v0
.end method

.method public static getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 427
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v2, "mListenerInfo"
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 428
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 430
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 433
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "android.view.View$ListenerInfo"
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 439
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v3, "mOnTouchListener"
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    .line 440
    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v1, :cond_2

    .line 442
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 443
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 440
    invoke-static {v2, v1, v3}, Lproguard/configuration/ConfigurationLogger;->logGetDeclaredField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string v2, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 439
    invoke-static {v2, v1}, Lproguard/configuration/ConfigurationLogger;->logForName(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    const-string v3, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 428
    invoke-static {v3, v1, v2}, Lproguard/configuration/ConfigurationLogger;->logGetDeclaredField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    const-string v2, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 427
    invoke-static {v2, v1}, Lproguard/configuration/ConfigurationLogger;->logForName(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p0

    .line 452
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_5
    move-exception p0

    .line 450
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_6
    move-exception p0

    .line 448
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-object v0
.end method

.method public static getHintOfView(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 376
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 377
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 378
    :cond_0
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 379
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    goto :goto_1

    .line 382
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 127
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 128
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getTextOfView(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .line 331
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 332
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 334
    instance-of v0, p0, Landroid/widget/Switch;

    if-eqz v0, :cond_7

    .line 335
    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    move-object v1, p0

    goto/16 :goto_2

    .line 338
    :cond_1
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 339
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 343
    :cond_2
    instance-of v0, p0, Landroid/widget/DatePicker;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 344
    check-cast p0, Landroid/widget/DatePicker;

    .line 345
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    .line 346
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    .line 347
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v5, "%04d-%02d-%02d"

    const/4 v6, 0x3

    .line 348
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 349
    :cond_3
    instance-of v0, p0, Landroid/widget/TimePicker;

    if-eqz v0, :cond_4

    .line 350
    check-cast p0, Landroid/widget/TimePicker;

    .line 351
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 352
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "%02d:%02d"

    .line 353
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 354
    :cond_4
    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_6

    .line 355
    check-cast p0, Landroid/widget/RadioGroup;

    .line 356
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 357
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v4, v2, :cond_7

    .line 359
    invoke-virtual {p0, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v0, :cond_5

    instance-of v5, v3, Landroid/widget/RadioButton;

    if-eqz v5, :cond_5

    .line 361
    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    move-object v1, p0

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 365
    :cond_6
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_7

    .line 366
    check-cast p0, Landroid/widget/RatingBar;

    .line 367
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result p0

    .line 368
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    const-string p0, ""

    goto :goto_3

    .line 371
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static getTouchReactView([FLandroid/view/View;)Landroid/view/View;
    .locals 4

    .line 458
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->initTouchTargetHelperMethods()V

    .line 459
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 464
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    .line 465
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    if-lez p1, :cond_1

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    move-exception p0

    .line 475
    sget-object p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 473
    sget-object p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static getViewLocationOnScreen(Landroid/view/View;)[F
    .locals 3

    const/4 v0, 0x2

    .line 524
    new-array v1, v0, [F

    .line 525
    new-array v0, v0, [I

    .line 526
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 527
    aget v2, v0, p0

    int-to-float v2, v2

    aput v2, v1, p0

    const/4 p0, 0x1

    .line 528
    aget v0, v0, p0

    int-to-float v0, v0

    aput v0, v1, p0

    return-object v1
.end method

.method private static initTouchTargetHelperMethods()V
    .locals 5

    .line 533
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.facebook.react.uimanager.TouchTargetHelper"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 538
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v1, "findTouchTargetView"

    const/4 v2, 0x2

    .line 539
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [F

    aput-object v4, v2, v3

    const-class v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v3, v2, v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    .line 541
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 539
    invoke-static {v4, v0, v1, v2}, Lproguard/configuration/ConfigurationLogger;->logGetDeclaredMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    throw v3

    :catch_1
    move-exception v1

    const-string v2, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 538
    invoke-static {v2, v0}, Lproguard/configuration/ConfigurationLogger;->logForName(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    .line 545
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 543
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static isAdapterViewItem(Landroid/view/View;)Z
    .locals 1

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 320
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    instance-of p0, p0, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isClickableView(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 290
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v2, "mListenerInfo"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 291
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 293
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 297
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    const-string v3, "android.view.View$ListenerInfo"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 304
    :try_start_5
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v4, "mOnClickListener"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 305
    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v3, :cond_2

    .line 307
    :try_start_8
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :catch_0
    move-exception p0

    const-string v1, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 305
    invoke-static {v1, v3, v4}, Lproguard/configuration/ConfigurationLogger;->logGetDeclaredField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string v1, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 304
    invoke-static {v1, v3}, Lproguard/configuration/ConfigurationLogger;->logForName(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    const-string v3, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 291
    invoke-static {v3, v1, v2}, Lproguard/configuration/ConfigurationLogger;->logGetDeclaredField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    const-string v2, "com.facebook.appevents.codeless.internal.ViewHierarchy"

    .line 290
    invoke-static {v2, v1}, Lproguard/configuration/ConfigurationLogger;->logForName(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p0

    .line 312
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to check if the view is clickable."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isRCTButton(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 483
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.views.view.ReactViewGroup"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 485
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getViewLocationOnScreen(Landroid/view/View;)[F

    move-result-object v0

    .line 486
    invoke-static {v0, p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTouchReactView([FLandroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static isRCTRootView(Landroid/view/View;)Z
    .locals 1

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.facebook.react.ReactRootView"

    .line 495
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setAppearanceOfView(Landroid/view/View;Lorg/json/JSONObject;F)Lorg/json/JSONObject;
    .locals 6

    .line 181
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 183
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 184
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "font_size"

    .line 186
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "is_bold"

    .line 187
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_italic"

    .line 188
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "text_style"

    .line 189
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_0
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 193
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    const/high16 v2, 0x42300000    # 44.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_1

    .line 197
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 198
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x0

    .line 201
    invoke-static {p0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p2, "icon_image"

    .line 202
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    sget-object p2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "classname"

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "classtypebitmask"

    .line 156
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "id"

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "text"

    .line 159
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "text"

    const-string v4, ""

    .line 161
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "hint"

    .line 163
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v0, "tag"

    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "description"

    .line 168
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_2
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "dimension"

    .line 171
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 173
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-object p1
.end method