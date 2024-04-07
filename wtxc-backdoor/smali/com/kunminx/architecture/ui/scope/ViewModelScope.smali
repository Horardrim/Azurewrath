.class public Lcom/kunminx/architecture/ui/scope/ViewModelScope;
.super Ljava/lang/Object;
.source "ViewModelScope.java"


# instance fields
.field private mActivityProvider:Landroidx/lifecycle/ViewModelProvider;

.field private mApplicationProvider:Landroidx/lifecycle/ViewModelProvider;

.field private mFragmentProvider:Landroidx/lifecycle/ViewModelProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityScopeViewModel(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mActivityProvider:Landroidx/lifecycle/ViewModelProvider;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    iput-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mActivityProvider:Landroidx/lifecycle/ViewModelProvider;

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mActivityProvider:Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mApplicationProvider:Landroidx/lifecycle/ViewModelProvider;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;->getInstance()Lcom/kunminx/architecture/ui/scope/ApplicationInstance;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    iput-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mApplicationProvider:Landroidx/lifecycle/ViewModelProvider;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mApplicationProvider:Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentScopeViewModel(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mFragmentProvider:Landroidx/lifecycle/ViewModelProvider;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    iput-object v0, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mFragmentProvider:Landroidx/lifecycle/ViewModelProvider;

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/kunminx/architecture/ui/scope/ViewModelScope;->mFragmentProvider:Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
