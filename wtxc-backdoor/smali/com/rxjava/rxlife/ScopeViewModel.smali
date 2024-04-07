.class public Lcom/rxjava/rxlife/ScopeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ScopeViewModel.java"

# interfaces
.implements Lcom/rxjava/rxlife/Scope;


# instance fields
.field private mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method private addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/rxjava/rxlife/ScopeViewModel;->mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/rxjava/rxlife/ScopeViewModel;->mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 39
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/rxjava/rxlife/ScopeViewModel;->mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method


# virtual methods
.method protected onCleared()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 51
    invoke-direct {p0}, Lcom/rxjava/rxlife/ScopeViewModel;->dispose()V

    return-void
.end method

.method public onScopeEnd()V
    .locals 0

    return-void
.end method

.method public onScopeStart(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/rxjava/rxlife/ScopeViewModel;->addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
