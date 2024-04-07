.class public Lbcebagfq/ebdaaacr/icaddggs/App;
.super Lcom/qinyue/vcommon/base/BaseApplication;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/qinyue/vcommon/base/BaseApplication;->onCreate()V

    const-wide/16 v0, 0x5dc

    .line 17
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
