.class Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$2;
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

    .line 93
    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$2;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 96
    invoke-static {}, Lcom/qinyue/vmain/navigation/MainNavigation;->toLogin()V

    .line 97
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity$2;->this$0:Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;

    invoke-virtual {v0}, Lbcebagfq/ebdaaacr/icaddggs/SplashActivity;->finish()V

    return-void
.end method
