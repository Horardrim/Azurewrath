.class public Landroidx/test/services/events/run/TestAssumptionFailureEvent;
.super Landroidx/test/services/events/run/TestFailureEvent;
.source "TestAssumptionFailureEvent.java"


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

    .line 40
    invoke-direct {p0, p1}, Landroidx/test/services/events/run/TestFailureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/FailureInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testCase",
            "failure"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/test/services/events/run/TestFailureEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/FailureInfo;)V

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;
    .locals 1

    .line 45
    sget-object v0, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_ASSUMPTION_FAILURE:Landroidx/test/services/events/run/TestRunEvent$EventType;

    return-object v0
.end method
