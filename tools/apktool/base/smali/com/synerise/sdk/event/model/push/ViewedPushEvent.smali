.class public Lcom/synerise/sdk/event/model/push/ViewedPushEvent;
.super Lcom/synerise/sdk/event/Event;
.source "ViewedPushEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/synerise/sdk/event/model/push/ViewedPushEvent;-><init>(Ljava/lang/String;Lcom/synerise/sdk/event/TrackerParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/synerise/sdk/event/TrackerParams;)V
    .locals 1

    const-string v0, "viewed"

    .line 20
    invoke-direct {p0, v0, p1, p2}, Lcom/synerise/sdk/event/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/synerise/sdk/event/TrackerParams;)V

    return-void
.end method