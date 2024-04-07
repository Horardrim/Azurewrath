.class public abstract Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivitySplashBinding.java"


# instance fields
.field public final img:Landroid/widget/ImageView;

.field public final mainview:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

.field public final timeBut:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/qinyue/vcommon/views/ArcProgressStackView;Landroid/widget/Button;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 35
    iput-object p4, p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->img:Landroid/widget/ImageView;

    .line 36
    iput-object p5, p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->mainview:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    iput-object p6, p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    .line 38
    iput-object p7, p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->timeBut:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c001e

    .line 93
    invoke-static {p1, p0, v0}, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
    .locals 1

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
    .locals 1

    .line 44
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c001e

    .line 58
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c001e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    return-object p0
.end method
