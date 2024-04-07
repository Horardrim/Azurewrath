.class public final synthetic Lrxhttp/wrapper/cookie/ICookieJar$-CC;
.super Ljava/lang/Object;
.source "ICookieJar.java"


# direct methods
.method public static $default$loadForRequest(Lrxhttp/wrapper/cookie/ICookieJar;Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/cookie/ICookieJar;

    .line 25
    invoke-interface {p0, p1}, Lrxhttp/wrapper/cookie/ICookieJar;->loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static $default$saveFromResponse(Lrxhttp/wrapper/cookie/ICookieJar;Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .param p0, "_this"    # Lrxhttp/wrapper/cookie/ICookieJar;

    .line 20
    invoke-interface {p0, p1, p2}, Lrxhttp/wrapper/cookie/ICookieJar;->saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method
