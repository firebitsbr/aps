.class Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WavePoint"
.end annotation


# instance fields
.field mOffset:F

.field mPeriod:F

.field mPosition:I

.field mValue:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 63
    iput p4, p0, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    .line 64
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 65
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    return-void
.end method
