.class Landroid/support/design/widget/TextInputLayout$2;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .line 1606
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$2;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1609
    invoke-static {}, Lcom/synerise/sdk/event/aspect/TrackClickAspect;->aspectOf()Lcom/synerise/sdk/event/aspect/TrackClickAspect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/synerise/sdk/event/aspect/TrackClickAspect;->trackClick(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout$2;->this$0:Landroid/support/design/widget/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    return-void
.end method
