.class public final synthetic Lcom/qinyue/vcommon/http/OnError$-CC;
.super Ljava/lang/Object;
.source "OnError.java"


# direct methods
.method public static bridge synthetic $default$accept(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcom/qinyue/vcommon/http/OnError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lcom/qinyue/vcommon/http/OnError;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static $default$accept(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "_this"    # Lcom/qinyue/vcommon/http/OnError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lrxhttp/wrapper/exception/ParseException;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/qinyue/vcommon/http/OnError$1;

    invoke-direct {v1, p0, p1}, Lcom/qinyue/vcommon/http/OnError$1;-><init>(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
