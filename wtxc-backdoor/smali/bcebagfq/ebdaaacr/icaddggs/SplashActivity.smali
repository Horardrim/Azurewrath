.class public Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;
.super Lcom/qinyue/vcommon/base/BaseActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinyue/vcommon/base/BaseActivity<",
        "Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTime:I

.field private nowTime:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)I
    .locals 0

    iget p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnowTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)F
    .locals 0

    iget p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->nowTime:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputnowTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;F)V
    .locals 0

    iput p1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->nowTime:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseActivity;-><init>()V

    const/16 v0, 0xc8

    .line 32
    iput v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mTime:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->nowTime:F

    return-void
.end method

.method static synthetic access$000(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$100(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$200(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$300(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c001e

    return v0
.end method

.method protected onCreateBefore()V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->fullScreen(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onDestroy()V

    .line 72
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInitView()V
    .locals 6

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 48
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->img:Landroid/widget/ImageView;

    const-string v1, ""

    const v2, 0x7f080077

    invoke-static {v0, v1, v2, v2}, Lcom/qinyue/vcommon/utils/GlideUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 49
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setShadowColor(I)V

    .line 50
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setAnimationDuration(J)V

    .line 51
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setSweepAngle(F)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v3, v0, [I

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    const-string v5, "#ffa50a"

    .line 56
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    const-string v5, "#64ffa50a"

    .line 57
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v4, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    const/high16 v5, 0x42c80000    # 100.0f

    aget v3, v3, v2

    aget v1, v1, v2

    const-string v2, "STRATEGY"

    invoke-direct {v4, v2, v5, v3, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;-><init>(Ljava/lang/String;FII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v1, v1, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {v1, v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->setModels(Ljava/util/List;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 0

    return-void
.end method

.method protected onInput()V
    .locals 4

    .line 79
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;

    invoke-direct {v1, p0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;-><init>(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$2;

    invoke-direct {v1, p0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$2;-><init>(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)V

    iget v2, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->mTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->timeBut:Landroid/widget/Button;

    new-instance v1, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$3;

    invoke-direct {v1, p0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$3;-><init>(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
