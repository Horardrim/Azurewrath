.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3fec6c572fe7d027L


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final id:J

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/rxjava3/operators/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/SimpleQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 492
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->id:J

    .line 493
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 546
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 542
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 531
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-boolean p1, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->delayErrors:Z

    if-nez p1, :cond_0

    .line 532
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->disposeAll()Z

    :cond_0
    const/4 p1, 0x1

    .line 534
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 535
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 521
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->fusionMode:I

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->tryEmit(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 498
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueDisposable;

    if-eqz v0, :cond_1

    .line 501
    check-cast p1, Lio/reactivex/rxjava3/operators/QueueDisposable;

    const/4 v0, 0x7

    .line 503
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/operators/QueueDisposable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 505
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->fusionMode:I

    .line 506
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 507
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->done:Z

    .line 508
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 512
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->fusionMode:I

    .line 513
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    :cond_1
    return-void
.end method
