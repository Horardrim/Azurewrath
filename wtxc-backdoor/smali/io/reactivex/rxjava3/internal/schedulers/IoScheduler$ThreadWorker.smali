.class final Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;
.super Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadWorker"
.end annotation


# instance fields
.field expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadFactory"
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    .line 255
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expirationTime"
        }
    .end annotation

    .line 263
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$ThreadWorker;->expirationTime:J

    return-void
.end method
