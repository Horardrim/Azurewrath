.class final Lrxhttp/ObservableCallEnqueue;
.super Lrxhttp/ObservableCall;
.source "ObservableCallEnqueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/ObservableCallEnqueue$HttpDisposable;
    }
.end annotation


# instance fields
.field private callFactory:Lrxhttp/wrapper/CallFactory;

.field private callbackUploadProgress:Z


# direct methods
.method constructor <init>(Lrxhttp/wrapper/CallFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lrxhttp/ObservableCallEnqueue;-><init>(Lrxhttp/wrapper/CallFactory;Z)V

    return-void
.end method

.method constructor <init>(Lrxhttp/wrapper/CallFactory;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lrxhttp/ObservableCall;-><init>()V

    .line 34
    iput-object p1, p0, Lrxhttp/ObservableCallEnqueue;->callFactory:Lrxhttp/wrapper/CallFactory;

    .line 35
    iput-boolean p2, p0, Lrxhttp/ObservableCallEnqueue;->callbackUploadProgress:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lrxhttp/ObservableCallEnqueue$HttpDisposable;

    iget-object v1, p0, Lrxhttp/ObservableCallEnqueue;->callFactory:Lrxhttp/wrapper/CallFactory;

    iget-boolean v2, p0, Lrxhttp/ObservableCallEnqueue;->callbackUploadProgress:Z

    invoke-direct {v0, p1, v1, v2}, Lrxhttp/ObservableCallEnqueue$HttpDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;Lrxhttp/wrapper/CallFactory;Z)V

    .line 41
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 42
    invoke-virtual {v0}, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lrxhttp/ObservableCallEnqueue$HttpDisposable;->run()V

    return-void
.end method
