.class final Lpl/zabka/b2c/widgets/Dot;
.super Ljava/lang/Object;
.source "ZabkaDotsView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lpl/zabka/b2c/widgets/Dot;",
        "",
        "position",
        "Landroid/graphics/PointF;",
        "radius",
        "",
        "(Landroid/graphics/PointF;F)V",
        "getPosition$app_prodRelease",
        "()Landroid/graphics/PointF;",
        "getRadius$app_prodRelease",
        "()F",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final position:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final radius:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;F)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/zabka/b2c/widgets/Dot;->position:Landroid/graphics/PointF;

    iput p2, p0, Lpl/zabka/b2c/widgets/Dot;->radius:F

    return-void
.end method


# virtual methods
.method public final getPosition$app_prodRelease()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 168
    iget-object v0, p0, Lpl/zabka/b2c/widgets/Dot;->position:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getRadius$app_prodRelease()F
    .locals 1

    .line 168
    iget v0, p0, Lpl/zabka/b2c/widgets/Dot;->radius:F

    return v0
.end method
