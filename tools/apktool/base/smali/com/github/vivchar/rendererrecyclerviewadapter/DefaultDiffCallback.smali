.class public Lcom/github/vivchar/rendererrecyclerviewadapter/DefaultDiffCallback;
.super Lcom/github/vivchar/rendererrecyclerviewadapter/DiffCallback;
.source "DefaultDiffCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BM::",
        "Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;",
        ">",
        "Lcom/github/vivchar/rendererrecyclerviewadapter/DiffCallback<",
        "TBM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/github/vivchar/rendererrecyclerviewadapter/DiffCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBM;TBM;)Z"
        }
    .end annotation

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBM;TBM;)Z"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/github/vivchar/rendererrecyclerviewadapter/DefaultDiffCallback;->areContentsTheSame(Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;)Z

    move-result p1

    return p1
.end method
