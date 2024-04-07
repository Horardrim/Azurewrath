.class public Lcom/rxjava/rxlife/BaseScope;
.super Ljava/lang/Object;
.source "BaseScope.java"

# interfaces
.implements Lcom/rxjava/rxlife/Scope;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/rxjava/rxlife/BaseScope;->mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/rxjava/rxlife/BaseScope;->mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 41
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/rxjava/rxlife/BaseScope;->mDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method


# virtual methods
.method public onScopeEnd()V
    .locals 0

    return-void
.end method

.method public onScopeStart(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/rxjava/rxlife/BaseScope;->addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 53
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 54
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 55
    invoke-direct {p0}, Lcom/rxjava/rxlife/BaseScope;->dispose()V

    :cond_0
    return-void
.end method
