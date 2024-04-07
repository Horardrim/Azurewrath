.class public Lcom/qinyue/vmain/http/MainHttpWrapper;
.super Ljava/lang/Object;
.source "MainHttpWrapper.java"


# static fields
.field public static final login:Ljava/lang/String; = "user/login"

.field public static final logout:Ljava/lang/String; = "user/logout/json"

.field public static final register:Ljava/lang/String; = "user/register"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "user/login"

    .line 25
    invoke-static {v1, v0}, Lrxhttp/RxHttp;->postForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v0

    const-string v1, "phone"

    .line 26
    invoke-virtual {v0, v1, p0}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object p0

    const-string v0, "code"

    .line 27
    invoke-virtual {p0, v0, p1}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object p0

    .line 28
    invoke-virtual {p0, p2}, Lrxhttp/RxHttpFormParam;->asResponse(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static toRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "user/register"

    .line 38
    invoke-static {v1, v0}, Lrxhttp/RxHttp;->postForm(Ljava/lang/String;[Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object v0

    const-string v1, "username"

    .line 39
    invoke-virtual {v0, v1, p0}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object p0

    const-string v0, "repassword"

    .line 40
    invoke-virtual {p0, v0, p1}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object p0

    const-string v0, "password"

    .line 41
    invoke-virtual {p0, v0, p1}, Lrxhttp/RxHttpFormParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/RxHttpFormParam;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p2}, Lrxhttp/RxHttpFormParam;->asResponse(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
