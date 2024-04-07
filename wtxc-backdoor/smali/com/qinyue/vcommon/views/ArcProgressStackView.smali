.class public Lcom/qinyue/vcommon/views/ArcProgressStackView;
.super Landroid/view/View;
.source "ArcProgressStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;,
        Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;
    }
.end annotation


# static fields
.field private static final ANIMATE_ALL_INDEX:I = -0x2

.field private static final DEFAULT_ACTION_MOVE_ANIMATION_DURATION:I = 0x96

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x15e

.field private static final DEFAULT_DRAW_WIDTH_FRACTION:F = 0.7f

.field private static final DEFAULT_MODEL_OFFSET:F = 5.0f

.field private static final DEFAULT_SHADOW_ANGLE:F = 90.0f

.field private static final DEFAULT_SHADOW_COLOR:I

.field private static final DEFAULT_SHADOW_DISTANCE:F = 15.0f

.field private static final DEFAULT_SHADOW_RADIUS:F = 30.0f

.field private static final DEFAULT_SLICE:I = 0x0

.field private static final DEFAULT_START_ANGLE:F = 270.0f

.field private static final DEFAULT_SWEEP_ANGLE:F = 360.0f

.field private static final DISABLE_ANIMATE_INDEX:I = -0x1

.field private static final MAX_ANGLE:F = 360.0f

.field private static final MAX_FRACTION:F = 1.0f

.field private static final MAX_PROGRESS:F = 100.0f

.field private static final MIN_ANGLE:F = 0.0f

.field private static final MIN_FRACTION:F = 0.0f

.field private static final MIN_PROGRESS:F = 0.0f

.field private static final MIN_SHADOW:F = 0.0f

.field private static final NEGATIVE_ANGLE:F = 270.0f

.field private static final NEGATIVE_SLICE:I = -0x1

.field private static final POSITIVE_ANGLE:F = 90.0f

.field private static final POSITIVE_SLICE:I = 0x1


# instance fields
.field private mActionMoveLastSlice:I

.field private mActionMoveModelIndex:I

.field private mActionMoveSliceCounter:I

.field private mAnimatedFraction:F

.field private mAnimationDuration:I

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDrawWidthDimension:F

.field private mDrawWidthFraction:F

.field private mIndicatorOrientation:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsActionMoved:Z

.field private mIsAnimated:Z

.field private mIsDragged:Z

.field private mIsFeaturesAvailable:Z

.field private mIsLeveled:Z

.field private mIsModelBgEnabled:Z

.field private mIsRounded:Z

.field private mIsShadowed:Z

.field private mIsShowProgress:Z

.field private final mLevelPaint:Landroid/graphics/Paint;

.field private mModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewModelBgColor:I

.field private final mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mProgressModelOffset:F

.field private mProgressModelSize:F

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private mShadowAngle:F

.field private mShadowColor:I

.field private mShadowDistance:F

.field private mShadowRadius:F

.field private mSize:I

.field private mStartAngle:F

.field private mSweepAngle:F

.field private mTextColor:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatorUpdateListener(Lcom/qinyue/vcommon/views/ArcProgressStackView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedFraction(Lcom/qinyue/vcommon/views/ArcProgressStackView;F)V
    .locals 0

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatedFraction:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#8C000000"

    .line 97
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->DEFAULT_SHADOW_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, p2, v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const-string v0, ""

    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    .line 107
    new-instance p3, Lcom/qinyue/vcommon/views/ArcProgressStackView$1;

    const/4 v1, 0x1

    invoke-direct {p3, p0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$1;-><init>(Lcom/qinyue/vcommon/views/ArcProgressStackView;I)V

    iput-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    .line 113
    new-instance p3, Lcom/qinyue/vcommon/views/ArcProgressStackView$2;

    invoke-direct {p3, p0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$2;-><init>(Lcom/qinyue/vcommon/views/ArcProgressStackView;I)V

    iput-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    .line 119
    new-instance p3, Lcom/qinyue/vcommon/views/ArcProgressStackView$3;

    invoke-direct {p3, p0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$3;-><init>(Lcom/qinyue/vcommon/views/ArcProgressStackView;I)V

    iput-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mLevelPaint:Landroid/graphics/Paint;

    .line 128
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, -0x1

    .line 164
    iput p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    const/4 v2, 0x0

    .line 165
    iput v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveLastSlice:I

    .line 191
    invoke-virtual {p0, v2}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setWillNotDraw(Z)V

    const/4 v3, 0x0

    .line 192
    invoke-virtual {p0, v1, v3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 196
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsFeaturesAvailable:Z

    .line 199
    sget-object v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 201
    :try_start_0
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_animated:I

    .line 202
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 201
    invoke-virtual {p0, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setIsAnimated(Z)V

    .line 204
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_shadowed:I

    .line 205
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 204
    invoke-virtual {p0, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setIsShadowed(Z)V

    .line 207
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_rounded:I

    .line 208
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 207
    invoke-virtual {p0, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setIsRounded(Z)V

    .line 210
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_dragged:I

    .line 211
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 210
    invoke-virtual {p0, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setIsDragged(Z)V

    .line 213
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_leveled:I

    .line 214
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 213
    invoke-virtual {p0, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setIsLeveled(Z)V

    .line 216
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_typeface:I

    .line 217
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {p0, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setTypeface(Ljava/lang/String;)V

    .line 219
    sget v4, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_text_color:I

    .line 220
    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 219
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setTextColor(I)V

    .line 225
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_shadow_radius:I

    const/high16 v4, 0x41f00000    # 30.0f

    .line 226
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 225
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setShadowRadius(F)V

    .line 231
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_shadow_distance:I

    const/high16 v4, 0x41700000    # 15.0f

    .line 232
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 231
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setShadowDistance(F)V

    .line 237
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_shadow_angle:I

    const/16 v4, 0x5a

    .line 238
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-float p3, p3

    .line 237
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setShadowAngle(F)V

    .line 243
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_shadow_color:I

    sget v4, Lcom/qinyue/vcommon/views/ArcProgressStackView;->DEFAULT_SHADOW_COLOR:I

    .line 244
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 243
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setShadowColor(I)V

    .line 249
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_animation_duration:I

    const/16 v4, 0x15e

    .line 250
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v4, p3

    .line 249
    invoke-virtual {p0, v4, v5}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setAnimationDuration(J)V

    .line 255
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_start_angle:I

    const/16 v4, 0x10e

    .line 256
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-float p3, p3

    .line 255
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setStartAngle(F)V

    .line 261
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_sweep_angle:I

    const/16 v4, 0x168

    .line 262
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-float p3, p3

    .line 261
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setSweepAngle(F)V

    .line 267
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_model_offset:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 268
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 267
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setProgressModelOffset(F)V

    .line 273
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_model_bg_enabled:I

    .line 274
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 273
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setModelBgEnabled(Z)V

    .line 278
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_show_progress:I

    .line 279
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 278
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setShowProgress(Z)V

    .line 285
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_indicator_orientation:I

    .line 286
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-nez p3, :cond_1

    .line 288
    sget-object p3, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->VERTICAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->HORIZONTAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    .line 287
    :goto_1
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setIndicatorOrientation(Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 294
    :try_start_1
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_interpolator:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-nez p3, :cond_2

    move-object p3, v3

    goto :goto_2

    .line 298
    :cond_2
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_2
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :catch_0
    move-exception p3

    .line 301
    :try_start_3
    invoke-virtual {p3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 307
    :goto_3
    iget-boolean p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsFeaturesAvailable:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3

    .line 308
    iget-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    aput v4, v5, v1

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 309
    iget-object p3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;

    invoke-direct {v1, p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView$4;-><init>(Lcom/qinyue/vcommon/views/ArcProgressStackView;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    :cond_3
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_draw_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 323
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 324
    sget v1, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_draw_width:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 325
    iget v1, p3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setDrawWidthDimension(F)V

    goto :goto_4

    .line 329
    :cond_4
    invoke-virtual {p3, v4, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setDrawWidthFraction(F)V

    goto :goto_4

    :cond_5
    const p1, 0x3f333333    # 0.7f

    .line 330
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setDrawWidthFraction(F)V

    .line 333
    :goto_4
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_b

    const/16 p1, 0x64

    .line 336
    :try_start_5
    sget p3, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_preview_colors:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-nez p3, :cond_6

    goto :goto_5

    .line 339
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    if-nez v3, :cond_7

    .line 345
    :try_start_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/qinyue/vcommon/R$array;->default_preview:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 347
    :cond_7
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    .line 348
    array-length v1, v3

    :goto_6
    if-ge v2, v1, :cond_8

    aget-object v4, v3, v2

    .line 349
    iget-object v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    new-instance v6, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    .line 350
    invoke-virtual {p3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v0, v7, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;-><init>(Ljava/lang/String;FI)V

    .line 349
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 352
    :cond_8
    iget p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    :goto_7
    invoke-virtual {p0, p1, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->measure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_9

    :catchall_1
    move-exception p3

    goto :goto_a

    :catch_1
    move-exception p3

    .line 342
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 345
    :try_start_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/qinyue/vcommon/R$array;->default_preview:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 347
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 348
    array-length v3, p3

    :goto_8
    if-ge v2, v3, :cond_9

    aget-object v4, p3, v2

    .line 349
    iget-object v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    new-instance v6, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    .line 350
    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v0, v7, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;-><init>(Ljava/lang/String;FI)V

    .line 349
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 352
    :cond_9
    iget p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    goto :goto_7

    .line 356
    :goto_9
    sget p1, Lcom/qinyue/vcommon/R$styleable;->ArcProgressStackView_apsv_preview_bg:I

    const p3, -0x333334

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mPreviewModelBgColor:I

    goto :goto_c

    .line 345
    :goto_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/qinyue/vcommon/R$array;->default_preview:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 348
    array-length v4, v1

    :goto_b
    if-ge v2, v4, :cond_a

    aget-object v5, v1, v2

    .line 349
    iget-object v6, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    new-instance v7, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    .line 350
    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v7, v0, v8, v5}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;-><init>(Ljava/lang/String;FI)V

    .line 349
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 352
    :cond_a
    iget p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    invoke-virtual {p0, p1, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->measure(II)V

    .line 353
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 362
    :cond_b
    :goto_c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 303
    :goto_d
    :try_start_9
    invoke-virtual {p0, v3}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 304
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    .line 362
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    throw p1
.end method

.method private adjustColorAlpha(IF)I
    .locals 2

    .line 663
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 664
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 665
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 666
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 662
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private animateActionMoveProgress()V
    .locals 3

    .line 690
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsAnimated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 694
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 695
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private getActionMoveAngle(FF)F
    .locals 12

    .line 702
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-double v1, p2

    sub-float/2addr p1, v0

    float-to-double p1, p1

    .line 705
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide v1, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v1

    rem-double/2addr p1, v1

    double-to-float p1, p1

    const/4 p2, 0x0

    cmpg-float v3, p1, p2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v3, :cond_0

    float-to-double v6, p1

    add-double/2addr v6, v4

    double-to-float p1, v6

    :cond_0
    float-to-double v6, v0

    .line 709
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    sub-float v0, p1, v0

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v0, v3

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    .line 710
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-float v0, v8

    .line 711
    iget v8, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    sub-float/2addr p1, v8

    div-float/2addr p1, v3

    float-to-double v8, p1

    mul-double/2addr v8, v10

    .line 712
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float p1, v6

    float-to-double v6, p1

    float-to-double v8, v0

    .line 715
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    add-double/2addr v6, v1

    rem-double/2addr v6, v1

    double-to-float p1, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    float-to-double p1, p1

    add-double/2addr p1, v4

    double-to-float p1, p1

    :cond_1
    return p1
.end method

.method private handleActionMoveModel(Landroid/view/MotionEvent;)V
    .locals 6

    .line 722
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 725
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getActionMoveAngle(FF)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    if-lez v2, :cond_1

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/high16 v2, 0x43870000    # 270.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p1, v3

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 736
    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveLastSlice:I

    if-ne v5, v1, :cond_3

    if-eq v2, v4, :cond_4

    :cond_3
    if-ne v2, v1, :cond_7

    if-ne v5, v4, :cond_7

    :cond_4
    if-ne v5, v1, :cond_5

    .line 739
    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    goto :goto_1

    .line 740
    :cond_5
    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    .line 743
    :goto_1
    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    if-le v5, v4, :cond_6

    iput v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    goto :goto_2

    :cond_6
    if-ge v5, v1, :cond_7

    .line 744
    iput v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    .line 746
    :cond_7
    :goto_2
    iput v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveLastSlice:I

    .line 749
    iget v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, p1

    .line 750
    iget-object v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    iget v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_8

    cmpl-float v0, v1, v3

    if-lez v0, :cond_a

    :cond_8
    cmpl-float p1, v1, v3

    if-lez p1, :cond_9

    const p1, 0x43b48000    # 361.0f

    goto :goto_3

    :cond_9
    const/high16 p1, -0x40800000    # -1.0f

    :cond_a
    :goto_3
    const/high16 v0, 0x42c80000    # 100.0f

    .line 760
    iget v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSweepAngle:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 761
    invoke-virtual {v2, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    return-void
.end method

.method private resetShadowLayer()V
    .locals 8

    .line 636
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 638
    :cond_0
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowDistance:F

    float-to-double v0, v0

    iget v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowAngle:F

    iget v3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 639
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 640
    iget v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowDistance:F

    float-to-double v1, v1

    iget v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowAngle:F

    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    float-to-double v3, v4

    mul-double/2addr v3, v6

    .line 641
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 643
    iget-boolean v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShadowed:Z

    if-eqz v2, :cond_1

    .line 644
    iget-object v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowRadius:F

    iget v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowColor:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_0
    return-void
.end method

.method private setLevelShadowLayer()V
    .locals 6

    .line 650
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShadowed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsLeveled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_1

    .line 653
    :cond_2
    :goto_0
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowRadius:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 654
    iget-object v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mLevelPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    neg-float v4, v0

    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowColor:I

    .line 655
    invoke-direct {p0, v5, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->adjustColorAlpha(IF)I

    move-result v1

    .line 654
    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_1
    return-void
.end method


# virtual methods
.method public animateProgress()V
    .locals 3

    .line 672
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsAnimated:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, -0x2

    .line 678
    iput v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    .line 679
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 681
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_3

    .line 682
    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 371
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimationDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public getAnimatorUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method public getDrawWidthDimension()F
    .locals 1

    .line 543
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthDimension:F

    return v0
.end method

.method public getDrawWidthFraction()F
    .locals 1

    .line 530
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthFraction:F

    return v0
.end method

.method public getIndicatorOrientation()Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIndicatorOrientation:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    return-object v0
.end method

.method public getProgressAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getProgressModelOffset()F
    .locals 1

    .line 521
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelOffset:F

    return v0
.end method

.method public getProgressModelSize()F
    .locals 1

    .line 436
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    return v0
.end method

.method public getShadowAngle()F
    .locals 1

    .line 563
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowAngle:F

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowColor:I

    return v0
.end method

.method public getShadowDistance()F
    .locals 1

    .line 553
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowDistance:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .line 575
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowRadius:F

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .line 400
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .line 411
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSweepAngle:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextColor:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsAnimated:Z

    return v0
.end method

.method public isDragged()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsDragged:Z

    return v0
.end method

.method public isLeveled()Z
    .locals 1

    .line 502
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsLeveled:Z

    return v0
.end method

.method public isModelBgEnabled()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsModelBgEnabled:Z

    return v0
.end method

.method public isRounded()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    return v0
.end method

.method public isShadowed()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShadowed:Z

    return v0
.end method

.method public isShowProgress()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShowProgress:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 861
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 865
    iget v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    int-to-float v1, v1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, v1, v8

    .line 866
    iget v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    invoke-virtual {v7, v1, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v10, 0x0

    move v11, v10

    .line 869
    :goto_0
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_16

    .line 870
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    .line 872
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsAnimated:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmLastProgress(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)F

    move-result v1

    iget v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatedFraction:F

    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getProgress()F

    move-result v4

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmLastProgress(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    goto :goto_1

    .line 874
    :cond_0
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getProgress()F

    move-result v1

    :goto_1
    div-float/2addr v1, v2

    .line 875
    iget v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    if-eq v11, v3, :cond_1

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 876
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getProgress()F

    move-result v1

    div-float/2addr v1, v2

    :cond_1
    move v13, v1

    .line 877
    iget v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSweepAngle:F

    mul-float v14, v13, v1

    .line 880
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getColors()[I

    move-result-object v1

    const/4 v15, 0x1

    if-eqz v1, :cond_2

    move/from16 v16, v15

    goto :goto_2

    :cond_2
    move/from16 v16, v10

    .line 882
    :goto_2
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 885
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 886
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v14}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->resetShadowLayer()V

    .line 890
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 891
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 893
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsModelBgEnabled:Z

    if-eqz v1, :cond_4

    .line 895
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mPreviewModelBgColor:I

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getBgColor()I

    move-result v2

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 896
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSweepAngle:F

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_4
    if-eqz v16, :cond_6

    .line 902
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsModelBgEnabled:Z

    if-nez v1, :cond_5

    .line 903
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 908
    :cond_5
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmSweepGradient(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/SweepGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4

    .line 909
    :cond_6
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 912
    :goto_4
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 913
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    move v13, v8

    goto/16 :goto_f

    .line 919
    :cond_7
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 920
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    .line 921
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 922
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v4

    .line 920
    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 927
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v17, v1, v8

    const v1, 0x3c8efa35

    mul-float/2addr v1, v14

    .line 928
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v2

    .line 929
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float v18, v1, v8

    .line 931
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    .line 932
    iget-boolean v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    const/4 v6, 0x2

    if-eqz v3, :cond_8

    move v3, v10

    goto :goto_5

    :cond_8
    move v3, v6

    :goto_5
    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v3, v18, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 930
    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 934
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;

    move-result-object v3

    .line 937
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    move/from16 v4, v17

    :goto_6
    iget-object v5, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move-object/from16 v19, v5

    move/from16 v5, v17

    move-object/from16 v6, v19

    .line 934
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 942
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;

    move-result-object v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPath(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 943
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;

    move-result-object v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTan(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 946
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    new-array v2, v15, [Ljava/lang/Object;

    .line 949
    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getProgress()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "%d%%"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 951
    iget-object v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 952
    iget-object v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    .line 953
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v5

    .line 952
    invoke-virtual {v3, v2, v10, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 958
    iget-object v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIndicatorOrientation:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    sget-object v4, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->VERTICAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    if-ne v3, v4, :cond_a

    .line 959
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_7

    :cond_a
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_7
    int-to-float v3, v3

    mul-float/2addr v3, v8

    .line 960
    iget-boolean v4, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_8
    neg-float v3, v3

    sub-float v3, v3, v17

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_c

    .line 962
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v6, v4, v5

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    sub-float/2addr v3, v6

    mul-float/2addr v13, v3

    .line 963
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;

    move-result-object v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;

    move-result-object v4

    .line 964
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    add-float/2addr v4, v13

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v6

    .line 965
    iget-object v8, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIndicatorOrientation:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    sget-object v10, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->VERTICAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    if-ne v8, v10, :cond_d

    iget-boolean v8, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    if-nez v8, :cond_d

    const/4 v8, 0x2

    new-array v8, v8, [F

    goto :goto_a

    .line 967
    :cond_d
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTan(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v8

    .line 963
    :goto_a
    invoke-virtual {v3, v4, v6, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 971
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float v17, v17, v5

    add-float v1, v1, v17

    sub-float/2addr v1, v13

    cmpg-float v1, v1, v18

    if-gez v1, :cond_12

    .line 974
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTan(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v1

    aget v1, v1, v15

    float-to-double v3, v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTan(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v1

    const/4 v6, 0x0

    aget v1, v1, v6

    float-to-double v5, v1

    .line 975
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v3, v5

    double-to-float v1, v3

    add-float v18, v18, v13

    .line 977
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v3

    .line 978
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    div-float v18, v18, v3

    const v3, 0x42652ee1

    mul-float v18, v18, v3

    .line 981
    iget-object v3, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIndicatorOrientation:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    sget-object v5, Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;->VERTICAL:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    const-wide v20, 0x4066800000000000L    # 180.0

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    if-ne v3, v5, :cond_f

    .line 983
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    add-float v5, v18, v5

    float-to-double v5, v5

    mul-double v5, v5, v22

    div-double v5, v5, v20

    .line 984
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v4

    .line 985
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v3, v3, v9

    if-lez v3, :cond_e

    const/high16 v3, -0x3d4c0000    # -90.0f

    goto :goto_b

    :cond_e
    const/high16 v3, 0x42b40000    # 90.0f

    :goto_b
    add-float/2addr v1, v3

    goto :goto_d

    .line 989
    :cond_f
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    add-float v5, v18, v5

    float-to-double v5, v5

    mul-double v5, v5, v22

    div-double v5, v5, v20

    .line 990
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v4

    .line 991
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v3, v3, v9

    if-lez v3, :cond_10

    const/high16 v6, 0x43340000    # 180.0f

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    add-float/2addr v1, v6

    .line 996
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 997
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v5

    aget v5, v5, v15

    invoke-virtual {v7, v1, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 998
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShowProgress:Z

    if-eqz v1, :cond_11

    .line 999
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1001
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v3

    aget v3, v3, v15

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTextBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1002
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    .line 999
    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1006
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    if-nez v16, :cond_13

    .line 1011
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsLeveled:Z

    if-eqz v1, :cond_15

    :cond_13
    iget-boolean v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    cmpl-float v2, v14, v1

    if-eqz v2, :cond_15

    .line 1012
    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPathMeasure(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/PathMeasure;

    move-result-object v2

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v3

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmTan(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1015
    invoke-direct/range {p0 .. p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setLevelShadowLayer()V

    .line 1017
    iget-object v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mLevelPaint:Landroid/graphics/Paint;

    if-eqz v16, :cond_14

    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getColors()[I

    move-result-object v2

    const/4 v10, 0x0

    aget v2, v2, v10

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    invoke-virtual {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getColor()I

    move-result v2

    :goto_e
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1020
    iget v1, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v1, v13

    .line 1021
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v3

    aget v3, v3, v10

    sub-float/2addr v3, v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v4

    aget v4, v4, v15

    sub-float/2addr v4, v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v5

    aget v5, v5, v10

    add-float/2addr v5, v1

    invoke-static {v12}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmPos(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)[F

    move-result-object v6

    aget v6, v6, v15

    add-float/2addr v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x1

    .line 1025
    iget-object v6, v0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    :goto_f
    add-int/lit8 v11, v11, 0x1

    move v8, v13

    goto/16 :goto_0

    .line 1030
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 823
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 824
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 827
    iput p2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    goto :goto_0

    .line 828
    :cond_0
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    .line 831
    :goto_0
    iget p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthFraction:F

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    iget p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthDimension:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 832
    :goto_1
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    .line 834
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShadowed:Z

    if-eqz v0, :cond_2

    iget p2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowRadius:F

    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowDistance:F

    add-float/2addr p2, v0

    :cond_2
    const/4 v0, 0x0

    .line 837
    :goto_2
    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 838
    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    .line 839
    iget v2, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float v4, p1, p2

    add-float/2addr v2, v4

    iget v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelOffset:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 843
    invoke-static {v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v3, v2, v2, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 849
    invoke-virtual {v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getColors()[I

    move-result-object v2

    if-eqz v2, :cond_3

    .line 850
    new-instance v2, Landroid/graphics/SweepGradient;

    invoke-static {v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v3

    .line 851
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-static {v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->getColors()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-static {v1, v2}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fputmSweepGradient(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;Landroid/graphics/SweepGradient;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 856
    :cond_4
    iget p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    invoke-virtual {p0, p1, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 766
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsDragged:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 768
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    .line 807
    iput v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveLastSlice:I

    .line 808
    iput v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveSliceCounter:I

    .line 809
    iput-boolean v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsActionMoved:Z

    goto/16 :goto_1

    .line 797
    :cond_1
    iget v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsActionMoved:Z

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 799
    :cond_3
    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->handleActionMoveModel(Landroid/view/MotionEvent;)V

    .line 800
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    goto/16 :goto_1

    .line 770
    :cond_4
    iput v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getActionMoveAngle(FF)F

    move-result v0

    .line 773
    iget v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSweepAngle:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    goto :goto_1

    .line 775
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 776
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    .line 778
    invoke-static {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 780
    invoke-static {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->-$$Nest$fgetmBounds(Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 781
    iget v5, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelSize:F

    mul-float/2addr v5, v1

    .line 782
    iget v6, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, v6

    float-to-double v7, v1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v1, v6

    float-to-double v11, v1

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 785
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    sub-float v6, v0, v5

    cmpl-float v6, v1, v6

    if-lez v6, :cond_6

    add-float/2addr v0, v5

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6

    .line 788
    iput v4, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mActionMoveModelIndex:I

    .line 789
    iput-boolean v3, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsActionMoved:Z

    .line 790
    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->handleActionMoveModel(Landroid/view/MotionEvent;)V

    .line 791
    invoke-direct {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->animateActionMoveProgress()V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 814
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 815
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    return v3
.end method

.method public setAnimationDuration(J)V
    .locals 1

    long-to-int v0, p1

    .line 376
    iput v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimationDuration:I

    .line 377
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 388
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public setDrawWidthDimension(F)V
    .locals 1

    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthFraction:F

    .line 548
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthDimension:F

    .line 549
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setDrawWidthFraction(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 537
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthFraction:F

    .line 538
    iput v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mDrawWidthDimension:F

    .line 539
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setIndicatorOrientation(Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIndicatorOrientation:Lcom/qinyue/vcommon/views/ArcProgressStackView$IndicatorOrientation;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-nez p1, :cond_0

    .line 516
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 517
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIsAnimated(Z)V
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsFeaturesAvailable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsAnimated:Z

    return-void
.end method

.method public setIsDragged(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsDragged:Z

    return-void
.end method

.method public setIsLeveled(Z)V
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsFeaturesAvailable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsLeveled:Z

    .line 507
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setIsRounded(Z)V
    .locals 1

    .line 482
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsRounded:Z

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 485
    iget-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 488
    iget-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setIsShadowed(Z)V
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsFeaturesAvailable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShadowed:Z

    .line 455
    invoke-direct {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->resetShadowLayer()V

    .line 456
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setModelBgEnabled(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsModelBgEnabled:Z

    .line 465
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setModels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;",
            ">;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mModels:Ljava/util/List;

    .line 428
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setProgressModelOffset(F)V
    .locals 0

    .line 525
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mProgressModelOffset:F

    .line 526
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setShadowAngle(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    .line 569
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowAngle:F

    .line 570
    invoke-direct {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->resetShadowLayer()V

    .line 571
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 589
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowColor:I

    .line 590
    invoke-direct {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->resetShadowLayer()V

    .line 591
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setShadowDistance(F)V
    .locals 0

    .line 557
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowDistance:F

    .line 558
    invoke-direct {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->resetShadowLayer()V

    .line 559
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 579
    :goto_0
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mShadowRadius:F

    .line 580
    invoke-direct {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->resetShadowLayer()V

    .line 581
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->requestLayout()V

    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mIsShowProgress:Z

    .line 474
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setStartAngle(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    .line 406
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mStartAngle:F

    .line 407
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setSweepAngle(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    .line 417
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mSweepAngle:F

    .line 418
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 599
    iput p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextColor:I

    .line 600
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 601
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 621
    iput-object p1, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTypeface:Landroid/graphics/Typeface;

    .line 622
    iget-object v0, p0, Lcom/qinyue/vcommon/views/ArcProgressStackView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 623
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->postInvalidate()V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 1

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 617
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
