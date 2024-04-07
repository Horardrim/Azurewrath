.class public final Lrxhttp/wrapper/exception/HttpStatusCodeException;
.super Ljava/io/IOException;
.source "HttpStatusCodeException.java"


# instance fields
.field private final httpUrl:Lokhttp3/HttpUrl;

.field private final protocol:Lokhttp3/Protocol;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final result:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Lokhttp3/Response;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lrxhttp/wrapper/exception/HttpStatusCodeException;-><init>(Lokhttp3/Response;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->protocol:Lokhttp3/Protocol;

    .line 38
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->statusCode:I

    .line 39
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->requestMethod:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->httpUrl:Lokhttp3/HttpUrl;

    .line 42
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    iput-object p1, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->responseHeaders:Lokhttp3/Headers;

    .line 43
    iput-object p2, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpUrl()Lokhttp3/HttpUrl;
    .locals 1

    .line 65
    iget-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->httpUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->httpUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders()Lokhttp3/Headers;
    .locals 1

    .line 69
    iget-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->responseHeaders:Lokhttp3/Headers;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 53
    iget v0, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<------ rxhttp/2.9.0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lrxhttp/wrapper/OkHttpCompat;->getOkHttpUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request end ------>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->httpUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lrxhttp/wrapper/exception/HttpStatusCodeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrxhttp/wrapper/exception/HttpStatusCodeException;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
