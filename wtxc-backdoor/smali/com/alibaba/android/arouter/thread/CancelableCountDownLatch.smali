.class public Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;
.super Ljava/util/concurrent/CountDownLatch;
.source "CancelableCountDownLatch.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    return-void
.end method
