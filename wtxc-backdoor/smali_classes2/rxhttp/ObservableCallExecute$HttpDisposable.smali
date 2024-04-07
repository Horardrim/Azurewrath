.class Lrxhttp/ObservableCallExecute$HttpDisposable;
.super Ljava/lang/Object;
.source "ObservableCallExecute.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lrxhttp/wrapper/callback/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/ObservableCallExecute;
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

.field private fusionMode:Z


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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    instance-of v0, p2, Lrxhttp/wrapper/BodyParamFactory;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 60
    move-object p3, p2

    check-cast p3, Lrxhttp/wrapper/BodyParamFactory;

    invoke-interface {p3}, Lrxhttp/wrapper/BodyParamFactory;->getParam()Lrxhttp/wrapper/param/AbstractBodyParam;

    move-result-object p3

    invoke-virtual {p3, p0}, Lrxhttp/wrapper/param/AbstractBodyParam;->setProgressCallback(Lrxhttp/wrapper/callback/ProgressCallback;)Lrxhttp/wrapper/param/AbstractBodyParam;

    .line 62
    :cond_0
    iput-object p1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 63
    invoke-interface {p2}, Lrxhttp/wrapper/CallFactory;->newCall()Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->call:Lokhttp3/Call;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->disposed:Z

    .line 98
    iget-object v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->disposed:Z

    return v0
.end method

.method public onProgress(IJJ)V
    .locals 8

    .line 68
    iget-boolean v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->disposed:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

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

.method public run()V
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-boolean v1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->disposed:Z

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    new-instance v2, Lrxhttp/wrapper/entity/ProgressT;

    invoke-direct {v2, v0}, Lrxhttp/wrapper/entity/ProgressT;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 90
    :cond_0
    iget-boolean v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->disposed:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->call:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 80
    iget-boolean v1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->disposed:Z

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lrxhttp/ObservableCallExecute$HttpDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
