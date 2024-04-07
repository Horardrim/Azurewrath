.class public final Lrxhttp/wrapper/parse/StreamParser;
.super Ljava/lang/Object;
.source "StreamParser.kt"

# interfaces
.implements Lrxhttp/wrapper/parse/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/parse/Parser<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0008\u0007\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lrxhttp/wrapper/parse/StreamParser;",
        "T",
        "Lrxhttp/wrapper/parse/Parser;",
        "osFactory",
        "Lrxhttp/wrapper/callback/OutputStreamFactory;",
        "progressCallback",
        "Lrxhttp/wrapper/callback/ProgressCallback;",
        "(Lrxhttp/wrapper/callback/OutputStreamFactory;Lrxhttp/wrapper/callback/ProgressCallback;)V",
        "getProgressCallback",
        "()Lrxhttp/wrapper/callback/ProgressCallback;",
        "setProgressCallback",
        "(Lrxhttp/wrapper/callback/ProgressCallback;)V",
        "onParse",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)Ljava/lang/Object;",
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

.field private progressCallback:Lrxhttp/wrapper/callback/ProgressCallback;


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/callback/OutputStreamFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "osFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lrxhttp/wrapper/parse/StreamParser;-><init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lrxhttp/wrapper/callback/ProgressCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lrxhttp/wrapper/callback/ProgressCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "TT;>;",
            "Lrxhttp/wrapper/callback/ProgressCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "osFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lrxhttp/wrapper/parse/StreamParser;->osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    .line 21
    iput-object p2, p0, Lrxhttp/wrapper/parse/StreamParser;->progressCallback:Lrxhttp/wrapper/callback/ProgressCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lrxhttp/wrapper/callback/ProgressCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/parse/StreamParser;-><init>(Lrxhttp/wrapper/callback/OutputStreamFactory;Lrxhttp/wrapper/callback/ProgressCallback;)V

    return-void
.end method


# virtual methods
.method public final getProgressCallback()Lrxhttp/wrapper/callback/ProgressCallback;
    .locals 1

    .line 21
    iget-object v0, p0, Lrxhttp/wrapper/parse/StreamParser;->progressCallback:Lrxhttp/wrapper/callback/ProgressCallback;

    return-object v0
.end method

.method public onParse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lrxhttp/wrapper/exception/ExceptionHelper;->throwIfFatal(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    const-string v1, "throwIfFatal(response)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lrxhttp/wrapper/parse/StreamParser;->osFactory:Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-virtual {v1, p1}, Lrxhttp/wrapper/callback/OutputStreamFactory;->getOutputStream(Lokhttp3/Response;)Lrxhttp/wrapper/entity/ExpandOutputStream;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lrxhttp/wrapper/entity/ExpandOutputStream;->getExpand()Ljava/lang/Object;

    move-result-object v2

    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lrxhttp/wrapper/utils/LogUtil;->log(Lokhttp3/Response;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Lrxhttp/wrapper/entity/ExpandOutputStream;->getOs()Ljava/io/OutputStream;

    move-result-object v1

    .line 30
    iget-object v3, p0, Lrxhttp/wrapper/parse/StreamParser;->progressCallback:Lrxhttp/wrapper/callback/ProgressCallback;

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1, v0, v1, v3}, Lrxhttp/wrapper/parse/StreamParserKt;->access$writeTo(Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/OutputStream;Lrxhttp/wrapper/callback/ProgressCallback;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v0, v3}, Lrxhttp/wrapper/utils/IOUtil;->write$default(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    :goto_0
    return-object v2
.end method

.method public final setProgressCallback(Lrxhttp/wrapper/callback/ProgressCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lrxhttp/wrapper/parse/StreamParser;->progressCallback:Lrxhttp/wrapper/callback/ProgressCallback;

    return-void
.end method
