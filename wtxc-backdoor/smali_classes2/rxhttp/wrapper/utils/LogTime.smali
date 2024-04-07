.class public Lrxhttp/wrapper/utils/LogTime;
.super Ljava/lang/Object;
.source "LogTime.java"


# instance fields
.field private final startNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lrxhttp/wrapper/utils/LogTime;->startNs:J

    return-void
.end method


# virtual methods
.method public tookMs()J
    .locals 5

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lrxhttp/wrapper/utils/LogTime;->startNs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method
