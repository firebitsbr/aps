.class Landroid/support/constraint/motion/SplineSet$CustomSet;
.super Landroid/support/constraint/motion/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet;-><init>()V

    const-string v0, ","

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .locals 0

    .line 268
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPoint(ILandroid/support/constraint/ConstraintAttribute;)V
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .locals 3

    .line 277
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p2

    iget-object p2, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(D[F)V

    .line 278
    iget-object p2, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/ConstraintAttribute;

    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {p2, p1, v0}, Landroid/support/constraint/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    return-void
.end method

.method public setup(I)V
    .locals 11

    .line 246
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 247
    iget-object v1, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintAttribute;

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 248
    new-array v3, v0, [D

    .line 249
    new-array v4, v1, [F

    iput-object v4, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    .line 250
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v4, D

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 253
    iget-object v5, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 254
    iget-object v6, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintAttribute;

    int-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    .line 256
    aput-wide v7, v3, v4

    .line 257
    iget-object v5, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v6, v5}, Landroid/support/constraint/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v5, 0x0

    .line 258
    :goto_1
    iget-object v6, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mTempValues:[F

    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 259
    aget-object v7, v1, v4

    aget v6, v6, v5

    float-to-double v8, v6

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 263
    :cond_1
    invoke-static {p1, v3, v1}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/SplineSet$CustomSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method
