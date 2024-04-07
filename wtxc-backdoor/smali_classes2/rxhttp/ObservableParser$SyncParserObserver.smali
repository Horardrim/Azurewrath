.class final Lrxhttp/ObservableParser$SyncParserObserver;
.super Ljava/lang/Object;
.source "ObservableParser.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lrxhttp/wrapper/callback/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/ObservableParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncParserObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "Lrxhttp/wrapper/entity/Progress;",
        ">;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lrxhttp/wrapper/callback/ProgressCallback;"
    }
.end annotation


# instance fields
.field private done:Z

.field private final downstream:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

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

.field private upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lrxhttp/ObservableParser$SyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 62
    iput-object p2, p0, Lrxhttp/ObservableParser$SyncParserObserver;->parser:Lrxhttp/wrapper/parse/Parser;

    .line 63
    iput-object p3, p0, Lrxhttp/ObservableParser$SyncParserObserver;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    if-eqz p3, :cond_0

    .line 65
    instance-of p1, p2, Lrxhttp/wrapper/parse/StreamParser;

    if-eqz p1, :cond_0

    .line 66
    check-cast p2, Lrxhttp/wrapper/parse/StreamParser;

    invoke-virtual {p2, p0}, Lrxhttp/wrapper/parse/StreamParser;->setProgressCallback(Lrxhttp/wrapper/callback/ProgressCallback;)V

    :cond_0
    return-void
.end method

.method private fail(Ljava/lang/Throwable;)V
    .locals 1

    .line 148
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 149
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 150
    invoke-virtual {p0, p1}, Lrxhttp/ObservableParser$SyncParserObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 139
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->done:Z

    .line 134
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->done:Z

    .line 125
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lrxhttp/wrapper/entity/Progress;

    invoke-virtual {p0, p1}, Lrxhttp/ObservableParser$SyncParserObserver;->onNext(Lrxhttp/wrapper/entity/Progress;)V

    return-void
.end method

.method public onNext(Lrxhttp/wrapper/entity/Progress;)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    instance-of v0, p1, Lrxhttp/wrapper/entity/ProgressT;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Lrxhttp/wrapper/entity/ProgressT;

    .line 102
    :try_start_0
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->parser:Lrxhttp/wrapper/parse/Parser;

    invoke-virtual {p1}, Lrxhttp/wrapper/entity/ProgressT;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Response;

    invoke-interface {v0, v1}, Lrxhttp/wrapper/parse/Parser;->onParse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onParse function returned a null value."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object p1, p0, Lrxhttp/ObservableParser$SyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 104
    invoke-virtual {p1}, Lrxhttp/wrapper/entity/ProgressT;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    invoke-direct {p0, v0}, Lrxhttp/ObservableParser$SyncParserObserver;->fail(Ljava/lang/Throwable;)V

    return-void

    .line 111
    :cond_1
    :try_start_1
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 113
    invoke-direct {p0, p1}, Lrxhttp/ObservableParser$SyncParserObserver;->fail(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onProgress(IJJ)V
    .locals 8

    .line 81
    iget-boolean v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->progressConsumer:Lio/reactivex/rxjava3/functions/Consumer;

    new-instance v7, Lrxhttp/wrapper/entity/Progress;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lrxhttp/wrapper/entity/Progress;-><init>(IJJ)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    invoke-direct {p0, p1}, Lrxhttp/ObservableParser$SyncParserObserver;->fail(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lrxhttp/ObservableParser$SyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iput-object p1, p0, Lrxhttp/ObservableParser$SyncParserObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 74
    iget-object p1, p0, Lrxhttp/ObservableParser$SyncParserObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_0
    return-void
.end method
