.class public Landroidx/test/services/events/run/TestFailureEvent;
.super Landroidx/test/services/events/run/TestRunEventWithTestCase;
.source "TestFailureEvent.java"


# instance fields
.field public final failure:Landroidx/test/services/events/FailureInfo;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroidx/test/services/events/run/TestRunEventWithTestCase;-><init>(Landroid/os/Parcel;)V

    .line 47
    new-instance v0, Landroidx/test/services/events/FailureInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/FailureInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/run/TestFailureEvent;->failure:Landroidx/test/services/events/FailureInfo;

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

    .line 40
    invoke-direct {p0, p1}, Landroidx/test/services/events/run/TestRunEventWithTestCase;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    const-string p1, "failure cannot be null"

    .line 41
    invoke-static {p2, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Landroidx/test/services/events/run/TestFailureEvent;->failure:Landroidx/test/services/events/FailureInfo;

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;
    .locals 1

    .line 52
    sget-object v0, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_FAILURE:Landroidx/test/services/events/run/TestRunEvent$EventType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parcel",
            "i"
        }
    .end annotation

    const/4 p2, 0x0

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/run/TestRunEventWithTestCase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-object v0, p0, Landroidx/test/services/events/run/TestFailureEvent;->failure:Landroidx/test/services/events/FailureInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/FailureInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
