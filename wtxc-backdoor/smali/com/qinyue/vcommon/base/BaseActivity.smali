.class public abstract Lcom/qinyue/vcommon/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lskin/support/observe/SkinObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lskin/support/observe/SkinObserver;"
    }
.end annotation


# instance fields
.field protected dataBind:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mViewModelScope:Lcom/kunminx/architecture/ui/scope/ViewModelScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;

    invoke-direct {v0}, Lcom/kunminx/architecture/ui/scope/ViewModelScope;-><init>()V

    iput-object v0, p0, Lcom/qinyue/vcommon/base/BaseActivity;->mViewModelScope:Lcom/kunminx/architecture/ui/scope/ViewModelScope;

    return-void
.end method


# virtual methods
.method protected getActivityScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/qinyue/vcommon/base/BaseActivity;->mViewModelScope:Lcom/kunminx/architecture/ui/scope/ViewModelScope;

    invoke-virtual {v0, p0, p1}, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->getActivityScopeViewModel(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method protected getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/qinyue/vcommon/base/BaseActivity;->mViewModelScope:Lcom/kunminx/architecture/ui/scope/ViewModelScope;

    invoke-virtual {v0, p1}, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 1

    .line 80
    invoke-static {p0, p0}, Landroidx/appcompat/app/SkinAppCompatDelegateImpl;->get(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 121
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageNight()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageNomral()V

    .line 132
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    sget v0, Lcom/qinyue/vcommon/R$style;->BaseAppTheme:I

    invoke-virtual {p0, v0}, Lcom/qinyue/vcommon/base/BaseActivity;->setTheme(I)V

    .line 48
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onCreateBefore()V

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->getLayoutId()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qinyue/vcommon/base/BaseActivity;->dataBind:Landroidx/databinding/ViewDataBinding;

    .line 51
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lskin/support/SkinCompatManager;->addObserver(Lskin/support/observe/SkinObserver;)V

    .line 52
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onInitViewModel()V

    .line 53
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onInitView()V

    .line 54
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onInitData()V

    .line 55
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onOutput()V

    .line 56
    invoke-virtual {p0}, Lcom/qinyue/vcommon/base/BaseActivity;->onInput()V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1, p1}, Lcom/qinyue/vcommon/base/BaseActivity;->updateSkin(Lskin/support/observe/SkinObservable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreateBefore()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 73
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lskin/support/SkinCompatManager;->deleteObserver(Lskin/support/observe/SkinObserver;)V

    return-void
.end method

.method protected onInitData()V
    .locals 0

    return-void
.end method

.method protected abstract onInitView()V
.end method

.method protected abstract onInitViewModel()V
.end method

.method protected onInput()V
    .locals 0

    return-void
.end method

.method protected onOutput()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public updateSkin(Lskin/support/observe/SkinObservable;Ljava/lang/Object;)V
    .locals 0

    .line 108
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qinyue/vcommon/manager/MySkinManager;->getSkinName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/qinyue/vcommon/constants/SkinType;->NORMAL:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {p2}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->setStatusBarLightMode(Landroid/app/Activity;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->setStatusBarDarkMode(Landroid/app/Activity;)Z

    :goto_0
    return-void
.end method
