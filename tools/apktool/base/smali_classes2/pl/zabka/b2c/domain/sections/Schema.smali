.class public final enum Lpl/zabka/b2c/domain/sections/Schema;
.super Ljava/lang/Enum;
.source "Schema.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/zabka/b2c/domain/sections/Schema;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lpl/zabka/b2c/domain/sections/Schema;",
        "",
        "(Ljava/lang/String;I)V",
        "VIEW_WITH_COVER_AND_VERTICAL_GRID",
        "VIEW_WITH_COVER_AND_TABBED_VERTICAL_LIST",
        "VIEW_WITH_COVER_AND_VERTICAL_LIST",
        "VIEW_WITH_DASHBOARD",
        "CARD_WITH_BALANCE_AND_HORIZONTAL_LIST",
        "CARD_WITH_COVER_AND_HORIZONTAL_LIST",
        "CARD_WITH_PROMOTION",
        "PROMOTION",
        "COUPON",
        "OFFER_CATEGORY",
        "COLLECTION",
        "POINTS",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum CARD_WITH_BALANCE_AND_HORIZONTAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum CARD_WITH_COVER_AND_HORIZONTAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum CARD_WITH_PROMOTION:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum COLLECTION:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum COUPON:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum OFFER_CATEGORY:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum POINTS:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum PROMOTION:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum VIEW_WITH_COVER_AND_TABBED_VERTICAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum VIEW_WITH_COVER_AND_VERTICAL_GRID:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum VIEW_WITH_COVER_AND_VERTICAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

.field public static final enum VIEW_WITH_DASHBOARD:Lpl/zabka/b2c/domain/sections/Schema;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Lpl/zabka/b2c/domain/sections/Schema;

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "VIEW_WITH_COVER_AND_VERTICAL_GRID"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->VIEW_WITH_COVER_AND_VERTICAL_GRID:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "VIEW_WITH_COVER_AND_TABBED_VERTICAL_LIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->VIEW_WITH_COVER_AND_TABBED_VERTICAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "VIEW_WITH_COVER_AND_VERTICAL_LIST"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->VIEW_WITH_COVER_AND_VERTICAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "VIEW_WITH_DASHBOARD"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->VIEW_WITH_DASHBOARD:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "CARD_WITH_BALANCE_AND_HORIZONTAL_LIST"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->CARD_WITH_BALANCE_AND_HORIZONTAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "CARD_WITH_COVER_AND_HORIZONTAL_LIST"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->CARD_WITH_COVER_AND_HORIZONTAL_LIST:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "CARD_WITH_PROMOTION"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->CARD_WITH_PROMOTION:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "PROMOTION"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->PROMOTION:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "COUPON"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->COUPON:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "OFFER_CATEGORY"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->OFFER_CATEGORY:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "COLLECTION"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->COLLECTION:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    new-instance v1, Lpl/zabka/b2c/domain/sections/Schema;

    const-string v2, "POINTS"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lpl/zabka/b2c/domain/sections/Schema;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/zabka/b2c/domain/sections/Schema;->POINTS:Lpl/zabka/b2c/domain/sections/Schema;

    aput-object v1, v0, v3

    sput-object v0, Lpl/zabka/b2c/domain/sections/Schema;->$VALUES:[Lpl/zabka/b2c/domain/sections/Schema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/zabka/b2c/domain/sections/Schema;
    .locals 1

    const-class v0, Lpl/zabka/b2c/domain/sections/Schema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/zabka/b2c/domain/sections/Schema;

    return-object p0
.end method

.method public static values()[Lpl/zabka/b2c/domain/sections/Schema;
    .locals 1

    sget-object v0, Lpl/zabka/b2c/domain/sections/Schema;->$VALUES:[Lpl/zabka/b2c/domain/sections/Schema;

    invoke-virtual {v0}, [Lpl/zabka/b2c/domain/sections/Schema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/zabka/b2c/domain/sections/Schema;

    return-object v0
.end method
