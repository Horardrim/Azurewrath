.class Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->onInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;


# direct methods
.method constructor <init>(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetnowTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fputnowTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;F)V

    .line 83
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetnowTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)F

    move-result v0

    iget-object v1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v1}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetmTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 84
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->access$000(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    .line 85
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->access$100(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->invalidate()V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetmHandler(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->access$200(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;

    iget-object v1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v1}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetnowTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)F

    move-result v1

    iget-object v2, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v2}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetmTime(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/qinyue/vcommon/views/ArcProgressStackView$Model;->setProgress(F)V

    .line 90
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$1;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->access$300(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivitySplashBinding;->progressView:Lcom/qinyue/vcommon/views/ArcProgressStackView;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/views/ArcProgressStackView;->invalidate()V

    return-void
.end method
