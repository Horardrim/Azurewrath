.class public abstract Lrxhttp/BaseRxHttp;
.super Ljava/lang/Object;
.source "BaseRxHttp.java"

# interfaces
.implements Lrxhttp/wrapper/CallFactory;
.implements Lrxhttp/wrapper/coroutines/RangeHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->getErrorHandler()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;->INSTANCE:Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$asHeaders$0(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {p0}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly(Lokhttp3/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly(Lokhttp3/Response;)V

    .line 97
    throw v0
.end method


# virtual methods
.method public final asAppendDownload(Landroid/content/Context;Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, p2, v0, v0}, Lrxhttp/BaseRxHttp;->asAppendDownload(Landroid/content/Context;Landroid/net/Uri;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asAppendDownload(Landroid/content/Context;Landroid/net/Uri;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/callback/UriOutputStreamFactory;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p3, p4}, Lrxhttp/BaseRxHttp;->asAppendDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asAppendDownload(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, v0, v0}, Lrxhttp/BaseRxHttp;->asAppendDownload(Ljava/lang/String;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asAppendDownload(Ljava/lang/String;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Lrxhttp/wrapper/callback/FileOutputStreamFactory;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/callback/FileOutputStreamFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lrxhttp/BaseRxHttp;->asAppendDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asAppendDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, v0, v0}, Lrxhttp/BaseRxHttp;->asAppendDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asAppendDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;-><init>(Lrxhttp/BaseRxHttp;Lrxhttp/wrapper/callback/OutputStreamFactory;)V

    .line 158
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 164
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda1;-><init>(Lrxhttp/BaseRxHttp;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 165
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asBitmap()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lrxhttp/wrapper/parse/BitmapParser;

    invoke-direct {v0}, Lrxhttp/wrapper/parse/BitmapParser;-><init>()V

    invoke-virtual {p0, v0}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asClass(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lrxhttp/wrapper/parse/SimpleParser;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/SimpleParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Landroid/content/Context;Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, p2, v0, v0}, Lrxhttp/BaseRxHttp;->asDownload(Landroid/content/Context;Landroid/net/Uri;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Landroid/content/Context;Landroid/net/Uri;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;

    invoke-direct {v0, p1, p2}, Lrxhttp/wrapper/callback/UriOutputStreamFactory;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p3, p4}, Lrxhttp/BaseRxHttp;->asDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0, v0}, Lrxhttp/BaseRxHttp;->asDownload(Ljava/lang/String;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Ljava/lang/String;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lrxhttp/wrapper/callback/FileOutputStreamFactory;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/callback/FileOutputStreamFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lrxhttp/BaseRxHttp;->asDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Ljava/lang/String;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0, p2}, Lrxhttp/BaseRxHttp;->asDownload(Ljava/lang/String;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0, v0}, Lrxhttp/BaseRxHttp;->asDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asDownload(Lrxhttp/wrapper/callback/OutputStreamFactory;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lrxhttp/wrapper/parse/StreamParser;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/StreamParser;-><init>(Lrxhttp/wrapper/callback/OutputStreamFactory;)V

    invoke-virtual {p0, v0, p2, p3}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asHeaders()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lrxhttp/BaseRxHttp;->asOkResponse()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;->INSTANCE:Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;

    .line 92
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asList(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 78
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p1

    .line 79
    new-instance v0, Lrxhttp/wrapper/parse/SimpleParser;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/SimpleParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asMap(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "TK;TK;>;>;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p1}, Lrxhttp/BaseRxHttp;->asMap(Ljava/lang/Class;Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asMap(Ljava/lang/Class;Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 73
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p1

    .line 74
    new-instance p2, Lrxhttp/wrapper/parse/SimpleParser;

    invoke-direct {p2, p1}, Lrxhttp/wrapper/parse/SimpleParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p2}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final asOkResponse()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lrxhttp/wrapper/parse/OkResponseParser;

    invoke-direct {v0}, Lrxhttp/wrapper/parse/OkResponseParser;-><init>()V

    invoke-virtual {p0, v0}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method public asParser(Lrxhttp/wrapper/parse/Parser;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v0}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public abstract asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lrxhttp/wrapper/entity/Progress;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final asString()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lrxhttp/BaseRxHttp;->asClass(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$asAppendDownload$1$rxhttp-BaseRxHttp(Lrxhttp/wrapper/callback/OutputStreamFactory;)Lrxhttp/wrapper/parse/StreamParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lrxhttp/wrapper/callback/OutputStreamFactory;->offsetSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 161
    invoke-virtual/range {v0 .. v5}, Lrxhttp/BaseRxHttp;->setRangeHeader(JJZ)Lrxhttp/wrapper/CallFactory;

    .line 162
    :cond_0
    new-instance v0, Lrxhttp/wrapper/parse/StreamParser;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/StreamParser;-><init>(Lrxhttp/wrapper/callback/OutputStreamFactory;)V

    return-object v0
.end method

.method synthetic lambda$asAppendDownload$2$rxhttp-BaseRxHttp(Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;Lrxhttp/wrapper/parse/StreamParser;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p3, p1, p2}, Lrxhttp/BaseRxHttp;->asParser(Lrxhttp/wrapper/parse/Parser;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method
