.class public final Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;
.super Ljava/lang/Object;
.source "ContentType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;",
        "",
        "uri",
        "",
        "schema",
        "Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;",
        "(Ljava/lang/String;Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;)V",
        "getSchema",
        "()Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;",
        "getUri",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uri:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "uri"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "schema"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schema"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    iput-object p2, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    return-void
.end method

.method public static synthetic copy$default(Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;Ljava/lang/String;Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;ILjava/lang/Object;)Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->copy(Ljava/lang/String;Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;)Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;)Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "uri"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "schema"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schema"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;

    invoke-direct {v0, p1, p2}, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;-><init>(Ljava/lang/String;Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;

    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    iget-object v1, p1, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    iget-object p1, p1, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getSchema()Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeepLinkResponse(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", schema="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/zabka/b2c/infrastructure/sections/DeepLinkResponse;->schema:Lpl/zabka/b2c/infrastructure/sections/SchemaResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
