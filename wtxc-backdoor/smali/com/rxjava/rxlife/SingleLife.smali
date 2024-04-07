.class public Lcom/rxjava/rxlife/SingleLife;
.super Lcom/rxjava/rxlife/RxSource;
.source "SingleLife.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rxjava/rxlife/RxSource<",
        "Lio/reactivex/rxjava3/core/SingleObserver<",
        "-TT;>;>;"
    }
.end annotation


# instance fields
.field private final upStream:Lio/reactivex/rxjava3/core/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Single;Lcom/rxjava/rxlife/Scope;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;",
            "Lcom/rxjava/rxlife/Scope;",
            "Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/rxjava/rxlife/RxSource;-><init>(Lcom/rxjava/rxlife/Scope;Z)V

    .line 27
    iput-object p1, p0, Lcom/rxjava/rxlife/SingleLife;->upStream:Lio/reactivex/rxjava3/core/Single;

    return-void
.end method

.method private subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/rxjava/rxlife/SingleLife;->upStream:Lio/reactivex/rxjava3/core/Single;

    .line 78
    iget-boolean v1, p0, Lcom/rxjava/rxlife/SingleLife;->onMain:Z

    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Single;->onTerminateDetach()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lcom/rxjava/rxlife/LifeSingleObserver;

    iget-object v2, p0, Lcom/rxjava/rxlife/SingleLife;->scope:Lcom/rxjava/rxlife/Scope;

    invoke-direct {v1, p1, v2}, Lcom/rxjava/rxlife/LifeSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lcom/rxjava/rxlife/Scope;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method


# virtual methods
.method public final subscribe()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2

    .line 32
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0, v0, v1}, Lcom/rxjava/rxlife/SingleLife;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/BiConsumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onCallback is null"

    .line 40
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/BiConsumer;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/rxjava/rxlife/SingleLife;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    .line 36
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p0, p1, v0}, Lcom/rxjava/rxlife/SingleLife;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 48
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 49
    invoke-static {p2, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/rxjava/rxlife/SingleLife;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 58
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/rxjava/rxlife/SingleLife;->upStream:Lio/reactivex/rxjava3/core/Single;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/SingleObserver;)Lio/reactivex/rxjava3/core/SingleObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 62
    invoke-static {p1, v0}, Lcom/rxjava/rxlife/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rxjava/rxlife/SingleLife;->subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 69
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    throw v0

    :catch_0
    move-exception p1

    .line 67
    throw p1
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-virtual {p0, p1}, Lcom/rxjava/rxlife/SingleLife;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method

.method public bridge synthetic subscribeWith(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/rxjava/rxlife/RxSource;->subscribeWith(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
