.class public Lcom/github/vivchar/rendererrecyclerviewadapter/RendererRecyclerViewAdapter$AjcClosure1;
.super Lorg/aspectj/runtime/internal/AroundClosure;
.source "RendererRecyclerViewAdapter.java"


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p1, p0, Lorg/aspectj/runtime/internal/AroundClosure;->state:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/github/vivchar/rendererrecyclerviewadapter/RendererRecyclerViewAdapter;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/github/vivchar/rendererrecyclerviewadapter/ViewHolder;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    check-cast p1, Lorg/aspectj/lang/JoinPoint;

    invoke-static {v0, v1, v2, p1}, Lcom/github/vivchar/rendererrecyclerviewadapter/RendererRecyclerViewAdapter;->onBindViewHolder_aroundBody0(Lcom/github/vivchar/rendererrecyclerviewadapter/RendererRecyclerViewAdapter;Lcom/github/vivchar/rendererrecyclerviewadapter/ViewHolder;ILorg/aspectj/lang/JoinPoint;)V

    const/4 p1, 0x0

    return-object p1
.end method
