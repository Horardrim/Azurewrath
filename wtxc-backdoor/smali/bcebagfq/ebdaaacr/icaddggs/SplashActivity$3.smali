.class Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$3;
.super Lcom/qinyue/vcommon/listener/OnMultiClickListener;
.source "SplashActivity.java"


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

    .line 100
    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$3;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-direct {p0}, Lcom/qinyue/vcommon/listener/OnMultiClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$3;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-static {p1}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->-$$Nest$fgetmHandler(Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lcom/qinyue/vmain/navigation/MainNavigation;->toLogin()V

    .line 105
    iget-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$3;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-virtual {p1}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->finish()V

    return-void
.end method
