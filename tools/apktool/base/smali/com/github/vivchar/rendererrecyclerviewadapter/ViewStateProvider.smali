.class public interface abstract Lcom/github/vivchar/rendererrecyclerviewadapter/ViewStateProvider;
.super Ljava/lang/Object;
.source "ViewStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;",
        "VH:",
        "Lcom/github/vivchar/rendererrecyclerviewadapter/ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createViewState(Lcom/github/vivchar/rendererrecyclerviewadapter/ViewHolder;)Lcom/github/vivchar/rendererrecyclerviewadapter/ViewState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)",
            "Lcom/github/vivchar/rendererrecyclerviewadapter/ViewState;"
        }
    .end annotation
.end method

.method public abstract createViewStateID(Lcom/github/vivchar/rendererrecyclerviewadapter/ViewModel;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation
.end method
