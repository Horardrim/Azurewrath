.class Lrxhttp/ObservableCallEnqueue$HttpDisposable;
.super Ljava/lang/Object;
.source "ObservableCallEnqueue.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lokhttp3/Callback;
.implements Lrxhttp/wrapper/callback/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/ObservableCallEnqueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpDisposable"
.end annotation


# instance fields
.field private final call:Lokhttp3/Call;

.field private volatile disposed:Z

.field private final downstream:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lrxhttp/wrapper/CallFactory;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;",
            "Lrxhttp/wrapper/CallFactory;",
            "Z)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    instance-of v0, p2, Lrxhttp/wrapper/BodyParamFactory;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 63
    move-object p3, p2

    check-cast p3, Lrxhttp/wrapper/BodyParamFactory;

    invoke-interface {p3}, Lrxhttp/wrapper/BodyParamFactory;->getParam()Lrxhttp/wrapper/param/AbstractBodyParam;

    move-result-object p3

    invoke-virtual {p3, p0}, Lrxhttp/wrapper/param/AbstractBodyParam;->setProgressCallback(Lrxhttp/wrapper/callback/ProgressCallback;)Lrxhttp/wrapper/param/AbstractBodyParam;

    .line 65
    :cond_0
    iput-object p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 66
    invoke-interface {p2}, Lrxhttp/wrapper/CallFactory;->newCall()Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->call:Lokhttp3/Call;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->disposed:Z

    .line 100
    iget-object v0, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->disposed:Z

    return v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 88
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {p2}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 90
    iget-boolean p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->disposed:Z

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p2}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onProgress(IJJ)V
    .locals 8

    .line 71
    iget-boolean v0, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->disposed:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    new-instance v7, Lrxhttp/wrapper/entity/Progress;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lrxhttp/wrapper/entity/Progress;-><init>(IJJ)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-boolean p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->disposed:Z

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    new-instance v0, Lrxhttp/wrapper/entity/ProgressT;

    invoke-direct {v0, p2}, Lrxhttp/wrapper/entity/ProgressT;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 81
    :cond_0
    iget-boolean p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->disposed:Z

    if-nez p1, :cond_1

    .line 82
    iget-object p1, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->call:Lokhttp3/Call;

    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
