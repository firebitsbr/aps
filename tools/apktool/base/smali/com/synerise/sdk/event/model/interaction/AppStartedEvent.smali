.class public final Lcom/synerise/sdk/event/model/interaction/AppStartedEvent;
.super Lcom/synerise/sdk/event/Event;
.source "AppStartedEvent.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "application-started"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/synerise/sdk/event/model/interaction/AppStartedEvent;-><init>(Ljava/lang/String;Lcom/synerise/sdk/event/TrackerParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/synerise/sdk/event/TrackerParams;)V
    .locals 1

    const-string v0, "application-started"

    .line 21
    invoke-direct {p0, v0, p1, p2}, Lcom/synerise/sdk/event/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/synerise/sdk/event/TrackerParams;)V

    return-void
.end method
