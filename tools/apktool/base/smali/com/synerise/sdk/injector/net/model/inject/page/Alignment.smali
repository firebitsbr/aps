.class public final enum Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;
.super Ljava/lang/Enum;
.source "Alignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

.field public static final enum LEFT:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

.field public static final enum RIGHT:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

.field public static final enum UNKNOWN:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    const-string v1, "LEFT"

    const-string v2, "LEFT"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->LEFT:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    .line 6
    new-instance v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    const-string v1, "RIGHT"

    const-string v2, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->RIGHT:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    .line 7
    new-instance v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->UNKNOWN:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    sget-object v1, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->LEFT:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->RIGHT:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->UNKNOWN:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->$VALUES:[Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->apiName:Ljava/lang/String;

    return-void
.end method

.method public static getAlignment(Ljava/lang/String;)Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;
    .locals 5

    .line 16
    invoke-static {}, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->values()[Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 17
    invoke-virtual {v3}, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    sget-object p0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->UNKNOWN:Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;
    .locals 1

    .line 3
    const-class v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    return-object p0
.end method

.method public static values()[Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;
    .locals 1

    .line 3
    sget-object v0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->$VALUES:[Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    invoke-virtual {v0}, [Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;

    return-object v0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/synerise/sdk/injector/net/model/inject/page/Alignment;->apiName:Ljava/lang/String;

    return-object v0
.end method
