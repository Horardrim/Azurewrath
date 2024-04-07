.class public Lcom/qinyue/vcommon/http/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->errorCode:I

    .line 28
    iput-object p2, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->throwable:Ljava/lang/Throwable;

    .line 34
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    goto :goto_1

    .line 36
    :cond_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_2

    const-string p1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    goto :goto_1

    .line 41
    :cond_2
    instance-of v0, p1, Lrxhttp/wrapper/exception/HttpStatusCodeException;

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "416"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "\u8bf7\u6c42\u8303\u56f4\u4e0d\u7b26\u5408\u8981\u6c42"

    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 48
    :cond_4
    instance-of v0, p1, Lcom/google/gson/JsonSyntaxException;

    if-eqz v0, :cond_5

    const-string p1, "\u6570\u636e\u89e3\u6790\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    goto :goto_1

    .line 50
    :cond_5
    instance-of v0, p1, Lrxhttp/wrapper/exception/ParseException;

    if-eqz v0, :cond_6

    .line 51
    check-cast p1, Lrxhttp/wrapper/exception/ParseException;

    invoke-virtual {p1}, Lrxhttp/wrapper/exception/ParseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->errorCode:I

    .line 53
    invoke-virtual {p1}, Lrxhttp/wrapper/exception/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p1, v0

    goto :goto_1

    .line 56
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    :goto_0
    const-string p1, "\u8fde\u63a5\u8d85\u65f6,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 58
    :cond_8
    :goto_1
    iput-object p1, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/qinyue/vcommon/http/ErrorInfo;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
