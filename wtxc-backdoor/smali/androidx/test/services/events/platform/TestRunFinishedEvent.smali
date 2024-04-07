.class public Landroidx/test/services/events/platform/TestRunFinishedEvent;
.super Landroidx/test/services/events/platform/TestPlatformEvent;
.source "TestRunFinishedEvent.java"


# instance fields
.field public final runStatus:Landroidx/test/services/events/TestStatus;

.field public final testRun:Landroidx/test/services/events/TestRunInfo;

.field public final timeStamp:Landroidx/test/services/events/TimeStamp;


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

    .line 60
    invoke-direct {p0}, Landroidx/test/services/events/platform/TestPlatformEvent;-><init>()V

    .line 61
    new-instance v0, Landroidx/test/services/events/TestRunInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestRunInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->testRun:Landroidx/test/services/events/TestRunInfo;

    .line 62
    new-instance v0, Landroidx/test/services/events/TestStatus;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestStatus;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->runStatus:Landroidx/test/services/events/TestStatus;

    .line 63
    new-instance v0, Landroidx/test/services/events/TimeStamp;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TimeStamp;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    return-void
.end method

.method public constructor <init>(Landroidx/test/services/events/TestRunInfo;Landroidx/test/services/events/TestStatus;Landroidx/test/services/events/TimeStamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "testRun",
            "runStatus",
            "timeStamp"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/test/services/events/platform/TestPlatformEvent;-><init>()V

    const-string v0, "testRun cannot be null"

    .line 50
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestRunInfo;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->testRun:Landroidx/test/services/events/TestRunInfo;

    const-string p1, "runStatus cannot be null"

    .line 51
    invoke-static {p2, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestStatus;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->runStatus:Landroidx/test/services/events/TestStatus;

    const-string p1, "timeStamp cannot be null"

    .line 52
    invoke-static {p3, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TimeStamp;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/platform/TestPlatformEvent$EventType;
    .locals 1

    .line 76
    sget-object v0, Landroidx/test/services/events/platform/TestPlatformEvent$EventType;->TEST_RUN_FINISHED:Landroidx/test/services/events/platform/TestPlatformEvent$EventType;

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

    .line 68
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/platform/TestPlatformEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    iget-object v0, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->testRun:Landroidx/test/services/events/TestRunInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestRunInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    iget-object v0, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->runStatus:Landroidx/test/services/events/TestStatus;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Landroidx/test/services/events/platform/TestRunFinishedEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TimeStamp;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
