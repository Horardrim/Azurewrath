.class public Landroidx/test/services/events/run/TestRunStartedEvent;
.super Landroidx/test/services/events/run/TestRunEventWithTestCase;
.source "TestRunStartedEvent.java"


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

    .line 38
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

    .line 34
    invoke-direct {p0, p1}, Landroidx/test/services/events/run/TestRunEventWithTestCase;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;
    .locals 1

    .line 43
    sget-object v0, Landroidx/test/services/events/run/TestRunEvent$EventType;->STARTED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    return-object v0
.end method
