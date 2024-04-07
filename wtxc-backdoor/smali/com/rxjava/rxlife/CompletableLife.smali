.class public Lcom/rxjava/rxlife/CompletableLife;
.super Lcom/rxjava/rxlife/RxSource;
.source "CompletableLife.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rxjava/rxlife/RxSource<",
        "Lio/reactivex/rxjava3/core/CompletableObserver;",
        ">;"
    }
.end annotation


# instance fields
.field private final upStream:Lio/reactivex/rxjava3/core/Completable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Completable;Lcom/rxjava/rxlife/Scope;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/rxjava/rxlife/RxSource;-><init>(Lcom/rxjava/rxlife/Scope;Z)V

    .line 27
    iput-object p1, p0, Lcom/rxjava/rxlife/CompletableLife;->upStream:Lio/reactivex/rxjava3/core/Completable;

    return-void
.end method

.method private subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/rxjava/rxlife/CompletableLife;->upStream:Lio/reactivex/rxjava3/core/Completable;

    .line 73
    iget-boolean v1, p0, Lcom/rxjava/rxlife/CompletableLife;->onMain:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Completable;->onTerminateDetach()Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    new-instance v1, Lcom/rxjava/rxlife/LifeCompletableObserver;

    iget-object v2, p0, Lcom/rxjava/rxlife/CompletableLife;->scope:Lcom/rxjava/rxlife/Scope;

    invoke-direct {v1, p1, v2}, Lcom/rxjava/rxlife/LifeCompletableObserver;-><init>(Lio/reactivex/rxjava3/core/CompletableObserver;Lcom/rxjava/rxlife/Scope;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method


# virtual methods
.method public final subscribe()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 32
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;-><init>()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/rxjava/rxlife/CompletableLife;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 38
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0, p1, v0}, Lcom/rxjava/rxlife/CompletableLife;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Action;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 42
    invoke-static {p2, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 43
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p2, p1}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/rxjava/rxlife/CompletableLife;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 2

    const-string v0, "observer is null"

    .line 52
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/rxjava/rxlife/CompletableLife;->upStream:Lio/reactivex/rxjava3/core/Completable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/core/Completable;Lio/reactivex/rxjava3/core/CompletableObserver;)Lio/reactivex/rxjava3/core/CompletableObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 57
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-direct {p0, p1}, Lcom/rxjava/rxlife/CompletableLife;->subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 63
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    throw v0

    :catch_0
    move-exception p1

    .line 61
    throw p1
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/CompletableLife;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method

.method public bridge synthetic subscribeWith(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/rxjava/rxlife/RxSource;->subscribeWith(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
