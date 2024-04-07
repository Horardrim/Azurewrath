.class public Landroidx/test/internal/runner/listener/DelayInjector;
.super Lorg/junit/runner/notification/RunListener;
.source "DelayInjector.java"


# instance fields
.field private final delayMsec:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMsec"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 32
    iput p1, p0, Landroidx/test/internal/runner/listener/DelayInjector;->delayMsec:I

    return-void
.end method

.method private delay()V
    .locals 3

    .line 49
    :try_start_0
    iget v0, p0, Landroidx/test/internal/runner/listener/DelayInjector;->delayMsec:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DelayInjector"

    const-string v2, "interrupted"

    .line 51
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/DelayInjector;->delay()V

    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/DelayInjector;->delay()V

    return-void
.end method
