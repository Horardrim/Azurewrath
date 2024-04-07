.class public final Lrxhttp/wrapper/parse/OkResponseParser;
.super Ljava/lang/Object;
.source "OkResponseParser.kt"

# interfaces
.implements Lrxhttp/wrapper/parse/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/parse/Parser<",
        "Lokhttp3/Response;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lrxhttp/wrapper/parse/OkResponseParser;",
        "Lrxhttp/wrapper/parse/Parser;",
        "Lokhttp3/Response;",
        "()V",
        "onParse",
        "response",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onParse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/parse/OkResponseParser;->onParse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public onParse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lrxhttp/wrapper/exception/ExceptionHelper;->throwIfFatal(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lrxhttp/wrapper/utils/LogUtil;->log(Lokhttp3/Response;Ljava/lang/String;)V

    return-object p1
.end method
