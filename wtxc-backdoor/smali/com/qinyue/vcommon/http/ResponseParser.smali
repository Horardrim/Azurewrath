.class public Lcom/qinyue/vcommon/http/ResponseParser;
.super Lrxhttp/wrapper/parse/TypeParser;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrxhttp/wrapper/parse/TypeParser<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lrxhttp/wrapper/parse/TypeParser;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 29
    invoke-direct {p0, v0}, Lrxhttp/wrapper/parse/TypeParser;-><init>([Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public onParse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const-class v0, Lcom/qinyue/vcommon/http/Response;

    iget-object v1, p0, Lcom/qinyue/vcommon/http/ResponseParser;->types:[Ljava/lang/reflect/Type;

    invoke-static {p1, v0, v1}, Lrxhttp/wrapper/utils/Converter;->convertTo(Lokhttp3/Response;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vcommon/http/Response;

    .line 39
    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "{}"

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/qinyue/vcommon/http/ResponseParser;->types:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/qinyue/vcommon/http/ResponseParser;->types:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    check-cast v3, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    invoke-virtual {v3}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-class v4, Ljava/util/List;

    if-ne v3, v4, :cond_2

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, p0, Lcom/qinyue/vcommon/http/ResponseParser;->types:[Ljava/lang/reflect/Type;

    aget-object v2, v3, v2

    check-cast v2, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    invoke-virtual {v2}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v3, Lcom/qinyue/vcommon/http/PageList;

    if-ne v2, v3, :cond_3

    .line 52
    new-instance v1, Lcom/qinyue/vcommon/http/PageList;

    invoke-direct {v1}, Lcom/qinyue/vcommon/http/PageList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    new-instance v1, Lrxhttp/wrapper/exception/ParseException;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/qinyue/vcommon/http/ReturnCode;->getErrorMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lrxhttp/wrapper/exception/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    throw v1

    .line 59
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/qinyue/vcommon/http/ReturnCode;->isSuccess(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 60
    :cond_4
    new-instance v1, Lrxhttp/wrapper/exception/ParseException;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/qinyue/vcommon/http/Response;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/qinyue/vcommon/http/ReturnCode;->getErrorMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lrxhttp/wrapper/exception/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    throw v1

    :cond_5
    :goto_1
    return-object v1
.end method
