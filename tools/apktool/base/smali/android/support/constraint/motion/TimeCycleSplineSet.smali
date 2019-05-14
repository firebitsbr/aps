.class public abstract Landroid/support/constraint/motion/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static VAL_2PI:F = 6.2831855f


# instance fields
.field private count:I

.field last_cycle:F

.field last_time:J

.field private mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/16 v1, 0xa

    .line 44
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    const/4 v2, 0x3

    .line 45
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v3, F

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    .line 48
    new-array v1, v2, [F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    .line 53
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;"
        }
    .end annotation

    .line 126
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .locals 1

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :pswitch_0
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;-><init>()V

    return-object p0

    .line 152
    :pswitch_1
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;-><init>()V

    return-object p0

    .line 150
    :pswitch_2
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;-><init>()V

    return-object p0

    .line 148
    :pswitch_3
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;-><init>()V

    return-object p0

    .line 146
    :pswitch_4
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;-><init>()V

    return-object p0

    .line 144
    :pswitch_5
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;-><init>()V

    return-object p0

    .line 142
    :pswitch_6
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;-><init>()V

    return-object p0

    .line 140
    :pswitch_7
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;-><init>()V

    return-object p0

    .line 138
    :pswitch_8
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;-><init>()V

    return-object p0

    .line 136
    :pswitch_9
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;-><init>()V

    return-object p0

    .line 134
    :pswitch_a
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;-><init>()V

    return-object p0

    .line 132
    :pswitch_b
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;-><init>()V

    return-object p0

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


# virtual methods
.method protected calcWave(F)F
    .locals 3

    .line 100
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    .line 103
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v2, p1

    mul-float p1, p1, p1

    sub-float/2addr v2, p1

    return v2

    .line 113
    :pswitch_1
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    sub-float/2addr v2, p1

    return v2

    :pswitch_3
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    sub-float/2addr p1, v2

    return p1

    .line 107
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v2, p1

    return v2

    .line 105
    :pswitch_5
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(FJ)F
    .locals 12

    .line 75
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p1

    iget-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(D[F)V

    .line 76
    iget-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-nez v5, :cond_0

    .line 78
    iput-boolean v4, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    .line 79
    aget p1, p1, v2

    return p1

    .line 81
    :cond_0
    iget-wide v6, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    sub-long v6, p2, v6

    .line 82
    iget v8, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    float-to-double v8, v8

    long-to-double v6, v6

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v6, v6, v10

    float-to-double v10, v1

    mul-double v6, v6, v10

    add-double/2addr v8, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v8, v6

    double-to-float v1, v8

    iput v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 84
    iput-wide p2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    .line 85
    aget p1, p1, v4

    .line 86
    iget p2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/TimeCycleSplineSet;->calcWave(F)F

    move-result p2

    .line 87
    iget-object p3, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    aget p3, p3, v2

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 89
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    return p2
.end method

.method public setPoint(IFFIF)V
    .locals 3

    .line 163
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    .line 164
    iget-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x0

    aput p2, v0, v2

    .line 165
    aget-object p2, p1, v1

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 166
    aget-object p1, p1, v1

    const/4 p2, 0x2

    aput p5, p1, p2

    .line 167
    iget p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    .line 168
    iget p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJ)Z
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .locals 11

    .line 172
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_0

    const-string p1, "SplineSet"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error no points added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 181
    aget v5, v2, v0

    add-int/lit8 v6, v0, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_2
    new-array v0, v1, [D

    const/4 v2, 0x3

    .line 187
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 189
    :goto_1
    iget v6, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v2, v6, :cond_4

    if-lez v2, :cond_3

    .line 190
    iget-object v6, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v7, v6, v2

    add-int/lit8 v8, v2, -0x1

    aget v6, v6, v8

    if-ne v7, v6, :cond_3

    goto :goto_2

    .line 194
    :cond_3
    iget-object v6, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v6, v6, v2

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v6, v6, v8

    aput-wide v6, v0, v5

    .line 195
    aget-object v6, v1, v5

    iget-object v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v8, v7, v2

    aget v8, v8, v4

    float-to-double v8, v8

    aput-wide v8, v6, v4

    .line 196
    aget-object v6, v1, v5

    aget-object v8, v7, v2

    aget v8, v8, v3

    float-to-double v8, v8

    aput-wide v8, v6, v3

    .line 197
    aget-object v6, v1, v5

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    float-to-double v9, v7

    aput-wide v9, v6, v8

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_4
    invoke-static {p1, v0, v1}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 59
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 61
    :goto_0
    iget v3, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
