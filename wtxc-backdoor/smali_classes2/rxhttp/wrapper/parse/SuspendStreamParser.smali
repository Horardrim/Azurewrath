.class public final Lrxhttp/wrapper/parse/SuspendStreamParser;
.super Lrxhttp/wrapper/parse/SuspendParser;
.source "SuspendStreamParser.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrxhttp/wrapper/parse/SuspendParser<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002BJ\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00122\u0008\u0002\u0010\u0005\u001a,\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u0019\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000RI\u0010\u0005\u001a,\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006X\u0086\u000e\u00f8\u0001\u0000\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lrxhttp/wrapper/parse/SuspendStreamParser;",
        "T",
        "Lrxhttp/wrapper/parse/SuspendParser;",
        "osFactory",
        "Lrxhttp/wrapper/callback/OutputStreamFactory;",
        "progress",
        "Lkotlin/Function4;",
        "",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lrxhttp/wrapper/callback/OutputStreamFactory;Lkotlin/jvm/functions/Function4;)V",
        "getProgress",
        "()Lkotlin/jvm/functions/Function4;",
        "setProgress",
        "(Lkotlin/jvm/functions/Function4;)V",
        "Lkotlin/jvm/functions/Function4;",
        "onSuspendParse",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private progress:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "osFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lrxhttp/wrapper/parse/SuspendParser;-><init>()V

    .line 21
    iput-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParser;->osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    .line 22
    iput-object p2, p0, Lrxhttp/wrapper/parse/SuspendStreamParser;->progress:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public synthetic constructor <init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lkotlin/jvm/functions/Function4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/parse/SuspendStreamParser;-><init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method


# virtual methods
.method public final getProgress()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lrxhttp/wrapper/parse/SuspendStreamParser;->progress:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public onSuspendParse(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;

    iget v1, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;

    invoke-direct {v0, p0, p2}, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;-><init>(Lrxhttp/wrapper/parse/SuspendStreamParser;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget v2, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/OutputStream;

    iget-object p1, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    invoke-static {p1}, Lrxhttp/wrapper/exception/ExceptionHelper;->throwIfFatal(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object p2

    const-string v2, "throwIfFatal(response)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lrxhttp/wrapper/parse/SuspendStreamParser;->osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-virtual {v2, p1}, Lrxhttp/wrapper/callback/OutputStreamFactory;->getOutputStream(Lokhttp3/Response;)Lrxhttp/wrapper/entity/ExpandOutputStream;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lrxhttp/wrapper/entity/ExpandOutputStream;->getExpand()Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lrxhttp/wrapper/utils/LogUtil;->log(Lokhttp3/Response;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Lrxhttp/wrapper/entity/ExpandOutputStream;->getOs()Ljava/io/OutputStream;

    move-result-object v2

    .line 32
    iget-object v5, p0, Lrxhttp/wrapper/parse/SuspendStreamParser;->progress:Lkotlin/jvm/functions/Function4;

    if-eqz v5, :cond_4

    .line 33
    iput-object p2, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lrxhttp/wrapper/parse/SuspendStreamParser$onSuspendParse$1;->label:I

    invoke-static {p1, p2, v2, v5, v0}, Lrxhttp/wrapper/parse/SuspendStreamParserKt;->access$writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, v4

    :goto_1
    move-object v4, p1

    goto :goto_2

    .line 34
    :cond_4
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-static {p1, v2, v0, p2, v0}, Lrxhttp/wrapper/utils/IOUtil;->write$default(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :goto_2
    return-object v4
.end method

.method public final setProgress(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lrxhttp/wrapper/parse/SuspendStreamParser;->progress:Lkotlin/jvm/functions/Function4;

    return-void
.end method
