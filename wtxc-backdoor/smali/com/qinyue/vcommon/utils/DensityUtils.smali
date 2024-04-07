.class public final Lcom/qinyue/vcommon/utils/DensityUtils;
.super Ljava/lang/Object;
.source "DensityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not need instantiate!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyDimension(FI)F
    .locals 1

    .line 204
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/qinyue/vcommon/utils/DensityUtils;->applyDimension(Landroid/content/Context;FI)F

    move-result p0

    return p0
.end method

.method public static applyDimension(Landroid/content/Context;FI)F
    .locals 1

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 232
    :cond_0
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, p0

    const p0, 0x3d214285

    :goto_0
    mul-float/2addr p1, p0

    return p1

    .line 230
    :cond_1
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 228
    :cond_2
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, p0

    const p0, 0x3c638e39

    goto :goto_0

    .line 226
    :cond_3
    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    goto :goto_0

    .line 224
    :cond_4
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    :cond_5
    return p1
.end method

.method public static dip2px(F)I
    .locals 1

    .line 67
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qinyue/vcommon/utils/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static forceGetViewSize(Landroid/view/View;Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;)V
    .locals 1

    .line 253
    new-instance v0, Lcom/qinyue/vcommon/utils/DensityUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/qinyue/vcommon/utils/DensityUtils$1;-><init>(Lcom/qinyue/vcommon/utils/DensityUtils$onGetSizeListener;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 47
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/DensityUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getMeasuredHeight(Landroid/view/View;)I
    .locals 1

    .line 280
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/DensityUtils;->measureView(Landroid/view/View;)[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public static getMeasuredWidth(Landroid/view/View;)I
    .locals 1

    .line 270
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/DensityUtils;->measureView(Landroid/view/View;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static getRealDpi(Landroid/content/Context;)I
    .locals 1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 165
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 166
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getScreenDensity()F
    .locals 1

    .line 190
    invoke-static {}, Lcom/qinyue/vcommon/utils/DensityUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getScreenDpi()I
    .locals 1

    .line 154
    invoke-static {}, Lcom/qinyue/vcommon/utils/DensityUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 183
    invoke-static {}, Lcom/qinyue/vcommon/utils/DensityUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 176
    invoke-static {}, Lcom/qinyue/vcommon/utils/DensityUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static measureView(Landroid/view/View;)[I
    .locals 4

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 297
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 298
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    .line 301
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 303
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 305
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method public static px2dip(F)I
    .locals 1

    .line 89
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qinyue/vcommon/utils/DensityUtils;->px2dip(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2sp(F)I
    .locals 1

    .line 133
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qinyue/vcommon/utils/DensityUtils;->px2sp(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static sp2px(F)I
    .locals 1

    .line 111
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qinyue/vcommon/utils/DensityUtils;->sp2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
