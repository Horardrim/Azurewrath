.class public interface abstract Landroidx/test/internal/events/client/TestRunEventService;
.super Ljava/lang/Object;
.source "TestRunEventService.java"


# virtual methods
.method public abstract send(Landroidx/test/services/events/run/TestRunEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/events/client/TestEventClientException;
        }
    .end annotation
.end method
