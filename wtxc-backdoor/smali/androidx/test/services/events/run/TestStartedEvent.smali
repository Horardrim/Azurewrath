.class public Landroidx/test/services/events/run/TestStartedEvent;
.super Landroidx/test/services/events/run/TestRunEventWithTestCase;
.source "TestStartedEvent.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Landroidx/test/services/events/run/TestRunEventWithTestCase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/services/events/TestCaseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCase"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroidx/test/services/events/run/TestRunEventWithTestCase;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;
    .locals 1

    .line 44
    sget-object v0, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_STARTED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    return-object v0
.end method
