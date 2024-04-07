.class public abstract Lcom/rxjava/rxlife/AbstractLifecycle;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "AbstractLifecycle.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private isAddObserver:Z

.field private final mObject:Ljava/lang/Object;

.field private final scope:Lcom/rxjava/rxlife/Scope;


# direct methods
.method public constructor <init>(Lcom/rxjava/rxlife/Scope;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->mObject:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->scope:Lcom/rxjava/rxlife/Scope;

    return-void
.end method

.method private addObserverOnMain()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->scope:Lcom/rxjava/rxlife/Scope;

    invoke-interface {v0, p0}, Lcom/rxjava/rxlife/Scope;->onScopeStart(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method private isMainThread()Z
    .locals 2

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected final addObserver()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/rxjava/rxlife/AbstractLifecycle;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->scope:Lcom/rxjava/rxlife/Scope;

    instance-of v0, v0, Lcom/rxjava/rxlife/LifecycleScope;

    if-nez v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->mObject:Ljava/lang/Object;

    .line 38
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/rxjava/rxlife/AbstractLifecycle;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 45
    monitor-enter v0

    .line 46
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->isAddObserver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 53
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 35
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/rxjava/rxlife/AbstractLifecycle;->addObserverOnMain()V

    :goto_2
    return-void
.end method

.method synthetic lambda$addObserver$0$com-rxjava-rxlife-AbstractLifecycle(Ljava/lang/Object;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/rxjava/rxlife/AbstractLifecycle;->addObserverOnMain()V

    .line 40
    monitor-enter p1

    const/4 v0, 0x1

    .line 41
    :try_start_0
    iput-boolean v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->isAddObserver:Z

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeObserver()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/rxjava/rxlife/AbstractLifecycle;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->scope:Lcom/rxjava/rxlife/Scope;

    instance-of v0, v0, Lcom/rxjava/rxlife/LifecycleScope;

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rxjava/rxlife/AbstractLifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/rxjava/rxlife/AbstractLifecycle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rxjava/rxlife/AbstractLifecycle;->scope:Lcom/rxjava/rxlife/Scope;

    invoke-interface {v0}, Lcom/rxjava/rxlife/Scope;->onScopeEnd()V

    :goto_1
    return-void
.end method
