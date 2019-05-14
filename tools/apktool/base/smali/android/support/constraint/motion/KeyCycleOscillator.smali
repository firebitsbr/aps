.class public abstract Landroid/support/constraint/motion/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    }
.end annotation


# instance fields
.field private mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mCustom:Landroid/support/constraint/ConstraintAttribute;

.field private mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method static makeSpline(Ljava/lang/String;)Landroid/support/constraint/motion/KeyCycleOscillator;
    .locals 2

    const-string v0, "CUSTOM"

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "waveOffset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "alpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "transitionPathRotate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "elevation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "rotation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "waveVariesBy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_6
    const-string v1, "scaleY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "scaleX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_8
    const-string v1, "progress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :sswitch_9
    const-string v1, "translationZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_a
    const-string v1, "translationY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_b
    const-string v1, "translationX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_c
    const-string v1, "rotationY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_d
    const-string v1, "rotationX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :pswitch_0
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;-><init>()V

    return-object p0

    .line 124
    :pswitch_1
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;-><init>()V

    return-object p0

    .line 122
    :pswitch_2
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;-><init>()V

    return-object p0

    .line 120
    :pswitch_3
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;-><init>()V

    return-object p0

    .line 118
    :pswitch_4
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object p0

    .line 116
    :pswitch_5
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object p0

    .line 114
    :pswitch_6
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;-><init>()V

    return-object p0

    .line 112
    :pswitch_7
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;-><init>()V

    return-object p0

    .line 110
    :pswitch_8
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;-><init>()V

    return-object p0

    .line 108
    :pswitch_9
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;-><init>()V

    return-object p0

    .line 106
    :pswitch_a
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;-><init>()V

    return-object p0

    .line 104
    :pswitch_b
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;-><init>()V

    return-object p0

    .line 102
    :pswitch_c
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;-><init>()V

    return-object p0

    .line 100
    :pswitch_d
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
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
.method public get(F)F
    .locals 2

    .line 87
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public setPoint(IIIFFF)V
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 165
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 167
    :cond_0
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    return-void
.end method

.method public setPoint(IIIFFFLandroid/support/constraint/ConstraintAttribute;)V
    .locals 2

    .line 145
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 147
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 149
    :cond_0
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 150
    iput-object p7, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCustom:Landroid/support/constraint/ConstraintAttribute;

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(F)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 172
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/constraint/motion/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/KeyCycleOscillator$1;-><init>(Landroid/support/constraint/motion/KeyCycleOscillator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v1, v0, [D

    const/4 v2, 0x2

    .line 184
    filled-new-array {v0, v2}, [I

    move-result-object v2

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 185
    new-instance v3, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    iget v4, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    iget v5, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v3, v4, v5, v0}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;-><init>(III)V

    iput-object v3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    .line 188
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    .line 189
    iget v5, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double v5, v5, v7

    aput-wide v5, v1, v10

    .line 190
    aget-object v5, v2, v10

    iget v6, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 191
    aget-object v5, v2, v10

    iget v6, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v6, v6

    const/4 v11, 0x1

    aput-wide v6, v5, v11

    .line 192
    iget-object v5, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    iget v6, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v7, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v8, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v9, v4, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    move-object v4, v5

    move v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFF)V

    add-int/2addr v10, v11

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 196
    invoke-static {v3, v1, v2}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 71
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public variesByPath()Z
    .locals 2

    .line 52
    iget v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
