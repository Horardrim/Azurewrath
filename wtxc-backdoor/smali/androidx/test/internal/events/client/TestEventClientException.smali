.class public final Landroidx/test/internal/events/client/TestEventClientException;
.super Landroidx/test/services/events/TestEventException;
.source "TestEventClientException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Landroidx/test/services/events/TestEventException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/test/services/events/TestEventException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
