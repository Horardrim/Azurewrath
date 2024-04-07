.class public Lcom/qinyue/vcommon/navigation/ARouterConfig;
.super Ljava/lang/Object;
.source "ARouterConfig.java"


# static fields
.field public static final APP_SERVICE:Ljava/lang/String; = "/app/service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppService()Lcom/qinyue/vcommon/navigation/AppService;
    .locals 2

    .line 23
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/app/service"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    instance-of v1, v0, Lcom/qinyue/vcommon/navigation/AppService;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lcom/qinyue/vcommon/navigation/AppService;

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u672a\u627e\u5230\u8be5\u670d\u52a1"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
