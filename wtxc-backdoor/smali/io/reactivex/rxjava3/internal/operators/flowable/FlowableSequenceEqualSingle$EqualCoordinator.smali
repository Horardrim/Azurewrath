.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final comparer:Lio/reactivex/rxjava3/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/rxjava3/core/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/SingleObserver;ILio/reactivex/rxjava3/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "prefetch",
            "comparer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/rxjava3/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 78
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    .line 79
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    .line 80
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-direct {p1, p0, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    .line 81
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-direct {p1, p0, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    .line 82
    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method cancelAndClear()V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 108
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 109
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 110
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 93
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    .line 94
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 95
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 97
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 11

    .line 115
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 122
    :cond_1
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-object v2, v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 123
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-object v3, v3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 127
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 129
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    return-void

    .line 133
    :cond_2
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v4}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 137
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    .line 141
    :cond_3
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-boolean v4, v4, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->done:Z

    .line 143
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v5, :cond_4

    .line 146
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iput-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 150
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 151
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    :cond_4
    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    move v7, v6

    .line 158
    :goto_2
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-boolean v8, v8, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->done:Z

    .line 159
    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v9, :cond_6

    .line 162
    :try_start_1
    invoke-interface {v3}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    iput-object v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 164
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 165
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 166
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 167
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    move v10, v0

    goto :goto_4

    :cond_7
    move v10, v6

    :goto_4
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    if-eqz v10, :cond_8

    .line 176
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eq v7, v10, :cond_9

    .line 180
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 181
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-nez v7, :cond_e

    if-eqz v10, :cond_a

    goto :goto_5

    .line 192
    :cond_a
    :try_start_2
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/rxjava3/functions/BiPredicate;

    invoke-interface {v4, v5, v9}, Lio/reactivex/rxjava3/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_b

    .line 202
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 203
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v4, 0x0

    .line 207
    iput-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 208
    iput-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 210
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->request()V

    .line 211
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->request()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 194
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 196
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 197
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    .line 215
    :cond_c
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 216
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    .line 217
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    return-void

    .line 221
    :cond_d
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 223
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    .line 225
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    :cond_e
    :goto_5
    neg-int v1, v1

    .line 230
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->drain()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method subscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 87
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-interface {p2, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
