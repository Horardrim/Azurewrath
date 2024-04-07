.class final Lrxhttp/ObservableParser$AsyncParserObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableParser.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lrxhttp/wrapper/callback/ProgressCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/ObservableParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncParserObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "Lrxhttp/wrapper/entity/Progress;",
        ">;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lrxhttp/wrapper/callback/ProgressCallback;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private volatile disposed:Z

.field private volatile done:Z

.field private final downstream:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Throwable;

.field private final parser:Lrxhttp/wrapper/parse/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/SpscArrayQueue<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private upstream:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/core/Scheduler$Worker;Lio/reactivex/rxjava3/functions/Consumer;Lrxhttp/wrapper/parse/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 172
    iput-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 173
    iput-object p4, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->parser:Lrxhttp/wrapper/parse/Parser;

    .line 174
    iput-object p2, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 175
    iput-object p3, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    .line 176
    new-instance p1, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    iput-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    if-eqz p3, :cond_0

    .line 178
    instance-of p1, p4, Lrxhttp/wrapper/parse/StreamParser;

    if-eqz p1, :cond_0

    .line 179
    check-cast p4, Lrxhttp/wrapper/parse/StreamParser;

    invoke-virtual {p4, p0}, Lrxhttp/wrapper/parse/StreamParser;->setProgressCallback(Lrxhttp/wrapper/callback/ProgressCallback;)V

    :cond_0
    return-void
.end method

.method private offer(Lrxhttp/wrapper/entity/Progress;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->poll()Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    invoke-virtual {p0}, Lrxhttp/ObservableParser$AsyncParserObserver;->schedule()V

    return-void
.end method


# virtual methods
.method checkTerminated(ZZLio/reactivex/rxjava3/core/Observer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lrxhttp/ObservableParser$AsyncParserObserver;->isDisposed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 304
    iget-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 310
    iput-boolean v1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->disposed:Z

    .line 311
    iget-object p2, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-virtual {p2}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    .line 312
    invoke-interface {p3, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    .line 313
    iget-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->dispose()V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 316
    iput-boolean v1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->disposed:Z

    .line 317
    invoke-interface {p3}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    .line 318
    iget-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->dispose()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->disposed:Z

    .line 329
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 330
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->dispose()V

    .line 331
    invoke-virtual {p0}, Lrxhttp/ObservableParser$AsyncParserObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->disposed:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 244
    iget-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    .line 248
    invoke-virtual {p0}, Lrxhttp/ObservableParser$AsyncParserObserver;->schedule()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 237
    :cond_0
    iput-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    .line 239
    invoke-virtual {p0}, Lrxhttp/ObservableParser$AsyncParserObserver;->schedule()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p1, Lrxhttp/wrapper/entity/Progress;

    invoke-virtual {p0, p1}, Lrxhttp/ObservableParser$AsyncParserObserver;->onNext(Lrxhttp/wrapper/entity/Progress;)V

    return-void
.end method

.method public onNext(Lrxhttp/wrapper/entity/Progress;)V
    .locals 3

    .line 204
    iget-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 208
    instance-of v1, p1, Lrxhttp/wrapper/entity/ProgressT;

    if-eqz v1, :cond_1

    .line 209
    move-object v0, p1

    check-cast v0, Lrxhttp/wrapper/entity/ProgressT;

    .line 211
    :try_start_0
    iget-object v1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->parser:Lrxhttp/wrapper/parse/Parser;

    invoke-virtual {v0}, Lrxhttp/wrapper/entity/ProgressT;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Response;

    invoke-interface {v1, v2}, Lrxhttp/wrapper/parse/Parser;->onParse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The onParse function returned a null value."

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    new-instance v2, Lrxhttp/wrapper/entity/ProgressT;

    invoke-direct {v2, v1}, Lrxhttp/wrapper/entity/ProgressT;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 214
    invoke-virtual {v0}, Lrxhttp/wrapper/entity/ProgressT;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-virtual {p0, p1}, Lrxhttp/ObservableParser$AsyncParserObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Lrxhttp/ObservableParser$AsyncParserObserver;->offer(Lrxhttp/wrapper/entity/Progress;)V

    return-void
.end method

.method public onProgress(IJJ)V
    .locals 7

    .line 194
    iget-boolean v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Lrxhttp/wrapper/entity/Progress;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lrxhttp/wrapper/entity/Progress;-><init>(IJJ)V

    invoke-direct {p0, v0}, Lrxhttp/ObservableParser$AsyncParserObserver;->offer(Lrxhttp/wrapper/entity/Progress;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iput-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 187
    iget-object p1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 263
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    .line 264
    iget-object v1, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    const/4 v2, 0x1

    move v3, v2

    .line 265
    :cond_0
    iget-boolean v4, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lrxhttp/ObservableParser$AsyncParserObserver;->checkTerminated(ZZLio/reactivex/rxjava3/core/Observer;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 267
    :goto_0
    iget-boolean v4, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->done:Z

    .line 270
    :try_start_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrxhttp/wrapper/entity/Progress;

    if-nez v5, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 274
    :goto_1
    invoke-virtual {p0, v4, v6, v1}, Lrxhttp/ObservableParser$AsyncParserObserver;->checkTerminated(ZZLio/reactivex/rxjava3/core/Observer;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    return-void

    :cond_2
    if-eqz v6, :cond_3

    neg-int v3, v3

    .line 295
    invoke-virtual {p0, v3}, Lrxhttp/ObservableParser$AsyncParserObserver;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 280
    :cond_3
    :try_start_1
    instance-of v4, v5, Lrxhttp/wrapper/entity/ProgressT;

    if-eqz v4, :cond_4

    .line 281
    check-cast v5, Lrxhttp/wrapper/entity/ProgressT;

    invoke-virtual {v5}, Lrxhttp/wrapper/entity/ProgressT;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_4
    iget-object v4, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v4, v5}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 286
    invoke-static {v3}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 287
    iput-boolean v2, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->disposed:Z

    .line 288
    iget-object v2, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 289
    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    .line 290
    invoke-interface {v1, v3}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    .line 291
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->dispose()V

    :cond_5
    :goto_2
    return-void
.end method

.method schedule()V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lrxhttp/ObservableParser$AsyncParserObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lrxhttp/ObservableParser$AsyncParserObserver;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method
