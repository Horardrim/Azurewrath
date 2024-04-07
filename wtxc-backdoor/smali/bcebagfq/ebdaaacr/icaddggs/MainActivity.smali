.class public Lbcebagfq/ebdaaacr/icaddggs/MainActivity;
.super Lcom/qinyue/vcommon/base/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinyue/vcommon/base/BaseActivity<",
        "Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivityMainBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private mainMessager:Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmainMessager(Lbcebagfq/ebdaaacr/icaddggs/MainActivity;)Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;
    .locals 0

    iget-object p0, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->mainMessager:Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c001d

    return v0
.end method

.method protected onInitView()V
    .locals 0

    return-void
.end method

.method protected onInitViewModel()V
    .locals 1

    .line 27
    const-class v0, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;

    invoke-virtual {p0, v0}, Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->getActivityScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;

    iput-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->mainMessager:Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;

    return-void
.end method

.method protected onInput()V
    .locals 2

    .line 37
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivityMainBinding;

    iget-object v0, v0, Lbcebagfq/ebdaaacr/icaddggs/databinding/ActivityMainBinding;->titleTv:Landroid/widget/TextView;

    new-instance v1, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$1;

    invoke-direct {v1, p0}, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$1;-><init>(Lbcebagfq/ebdaaacr/icaddggs/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onOutput()V
    .locals 2

    .line 53
    iget-object v0, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->mainMessager:Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;

    new-instance v1, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$2;

    invoke-direct {v1, p0}, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$2;-><init>(Lbcebagfq/ebdaaacr/icaddggs/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;->output(Landroidx/appcompat/app/AppCompatActivity;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onResume()V

    .line 48
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageForSystemNight()V

    return-void
.end method
