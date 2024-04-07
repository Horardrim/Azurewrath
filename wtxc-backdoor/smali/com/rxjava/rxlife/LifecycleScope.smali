.class public final Lcom/rxjava/rxlife/LifecycleScope;
.super Ljava/lang/Object;
.source "LifecycleScope.java"

# interfaces
.implements Lcom/rxjava/rxlife/Scope;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final event:Landroidx/lifecycle/Lifecycle$Event;

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method private constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/rxjava/rxlife/LifecycleScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 27
    iput-object p2, p0, Lcom/rxjava/rxlife/LifecycleScope;->event:Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method static from(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/LifecycleScope;
    .locals 1

    .line 31
    new-instance v0, Lcom/rxjava/rxlife/LifecycleScope;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/rxjava/rxlife/LifecycleScope;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)V

    return-object v0
.end method


# virtual methods
.method public onScopeEnd()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/rxjava/rxlife/LifecycleScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    const-string v1, "lifecycle is null"

    .line 48
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onScopeStart(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/rxjava/rxlife/LifecycleScope;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 37
    invoke-virtual {p0}, Lcom/rxjava/rxlife/LifecycleScope;->onScopeEnd()V

    .line 38
    iget-object p1, p0, Lcom/rxjava/rxlife/LifecycleScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    const-string v0, "lifecycle is null"

    .line 40
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/rxjava/rxlife/LifecycleScope;->event:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    iget-object p2, p0, Lcom/rxjava/rxlife/LifecycleScope;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p2}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 56
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
