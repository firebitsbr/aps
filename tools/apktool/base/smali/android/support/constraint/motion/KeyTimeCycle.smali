.class public Landroid/support/constraint/motion/KeyTimeCycle;
.super Landroid/support/constraint/motion/Key;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyTimeCycle$Loader;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    const/high16 v0, 0x7fc00000    # NaNf

    .line 43
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    .line 44
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    .line 45
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    .line 53
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mType:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    return p0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    return p0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    return p0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    return p0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    return p0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    return p0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    return p0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    return p0
.end method

.method static synthetic access$1602(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyTimeCycle;)I
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return p0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyTimeCycle;I)I
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyTimeCycle;)I
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    return p0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyTimeCycle;I)I
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    return p0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    return p0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    return p0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    return p0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    return p1
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    return p0
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    return p1
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/support/constraint/motion/TimeCycleSplineSet;

    const-string v2, "CUSTOM"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/support/constraint/ConstraintAttribute;

    if-eqz v6, :cond_0

    .line 191
    move-object v4, v3

    check-cast v4, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v9, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;FIF)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_4
    const-string v5, "scaleY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :sswitch_5
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_6
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_7
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_8
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_9
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_a
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_b
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    const-string v2, "KeyTimeCycles"

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN addValues \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 253
    :pswitch_0
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 248
    :pswitch_1
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 238
    :pswitch_3
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 232
    :pswitch_4
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 227
    :pswitch_5
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 222
    :pswitch_6
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 217
    :pswitch_7
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 212
    :pswitch_8
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 207
    :pswitch_9
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 202
    :pswitch_a
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    .line 197
    :pswitch_b
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addValues(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 179
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " KeyTimeCycles do not support SplineSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alpha"

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "elevation"

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rotation"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rotationX"

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rotationY"

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_4
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "translationX"

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "translationY"

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "translationZ"

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_7
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "transitionPathRotate"

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_8
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "scaleX"

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_9
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "scaleY"

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_a
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "progress"

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_b
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 122
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    return-void
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyTimeCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->read(Landroid/support/constraint/motion/KeyTimeCycle;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 132
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alpha"

    .line 133
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "elevation"

    .line 136
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_2
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rotation"

    .line 139
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rotationX"

    .line 142
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_4
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "rotationY"

    .line 145
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "translationX"

    .line 148
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "translationY"

    .line 151
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_7
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "translationZ"

    .line 154
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_8
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "transitionPathRotate"

    .line 157
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_9
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "scaleX"

    .line 160
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_a
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "scaleY"

    .line 163
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_b
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "progress"

    .line 166
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_c
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 169
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_d
    return-void
.end method
