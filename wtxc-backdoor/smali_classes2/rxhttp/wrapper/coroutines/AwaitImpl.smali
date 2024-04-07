.class public final Lrxhttp/wrapper/coroutines/AwaitImpl;
.super Ljava/lang/Object;
.source "AwaitImpl.kt"

# interfaces
.implements Lrxhttp/wrapper/coroutines/Await;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/coroutines/Await<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u0008\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "Lrxhttp/wrapper/coroutines/AwaitImpl;",
        "T",
        "Lrxhttp/wrapper/coroutines/Await;",
        "callFactory",
        "Lrxhttp/wrapper/CallFactory;",
        "parser",
        "Lrxhttp/wrapper/parse/Parser;",
        "(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/parse/Parser;)V",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rxhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callFactory:Lrxhttp/wrapper/CallFactory;

.field private final parser:Lrxhttp/wrapper/parse/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/parse/Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Lrxhttp/wrapper/parse/Parser<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lrxhttp/wrapper/coroutines/AwaitImpl;->callFactory:Lrxhttp/wrapper/CallFactory;

    .line 18
    iput-object p2, p0, Lrxhttp/wrapper/coroutines/AwaitImpl;->parser:Lrxhttp/wrapper/parse/Parser;

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;

    iget v1, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;

    invoke-direct {v0, p0, p1}, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;-><init>(Lrxhttp/wrapper/coroutines/AwaitImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Call;

    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    iget-object v0, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Call;

    :goto_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    iget-object v2, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lrxhttp/wrapper/parse/SuspendParser;

    iget-object v3, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/Call;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lrxhttp/wrapper/coroutines/AwaitImpl;->callFactory:Lrxhttp/wrapper/CallFactory;

    invoke-interface {p1}, Lrxhttp/wrapper/CallFactory;->newCall()Lokhttp3/Call;

    move-result-object p1

    .line 24
    :try_start_2
    iget-object v2, p0, Lrxhttp/wrapper/coroutines/AwaitImpl;->parser:Lrxhttp/wrapper/parse/Parser;

    instance-of v6, v2, Lrxhttp/wrapper/parse/SuspendParser;

    if-eqz v6, :cond_6

    .line 25
    check-cast v2, Lrxhttp/wrapper/parse/SuspendParser;

    iput-object p1, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    invoke-static {p1, v0}, Lrxhttp/wrapper/utils/CallKt;->await(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    :goto_2
    :try_start_3
    check-cast p1, Lokhttp3/Response;

    iput-object v3, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    invoke-virtual {v2, p1, v0}, Lrxhttp/wrapper/parse/SuspendParser;->onSuspendParse(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 27
    :cond_6
    :try_start_4
    iput-object p1, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lrxhttp/wrapper/coroutines/AwaitImpl$await$1;->label:I

    invoke-static {p1, v2, v0}, Lrxhttp/wrapper/utils/CallKt;->await(Lokhttp3/Call;Lrxhttp/wrapper/parse/Parser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object p1

    :catchall_2
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 30
    :goto_4
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-static {v0}, Lrxhttp/wrapper/OkHttpCompat;->url(Lokhttp3/Request;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    throw p1
.end method
