.class Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;
.super Landroid/support/constraint/motion/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .locals 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 203
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;->get(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method
