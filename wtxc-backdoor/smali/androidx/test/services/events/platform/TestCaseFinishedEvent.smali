.class public Landroidx/test/services/events/platform/TestCaseFinishedEvent;
.super Landroidx/test/services/events/platform/TestPlatformEvent;
.source "TestCaseFinishedEvent.java"


# instance fields
.field public final testCase:Landroidx/test/services/events/TestCaseInfo;

.field public final testStatus:Landroidx/test/services/events/TestStatus;

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

    .line 71
    invoke-direct {p0}, Landroidx/test/services/events/platform/TestPlatformEvent;-><init>()V

    .line 72
    new-instance v0, Landroidx/test/services/events/TestCaseInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestCaseInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    .line 73
    new-instance v0, Landroidx/test/services/events/TestStatus;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestStatus;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->testStatus:Landroidx/test/services/events/TestStatus;

    .line 74
    new-instance v0, Landroidx/test/services/events/TimeStamp;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TimeStamp;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    return-void
.end method

.method public constructor <init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/TestStatus;Landroidx/test/services/events/TimeStamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "testCase",
            "testStatus",
            "timeStamp"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Landroidx/test/services/events/platform/TestPlatformEvent;-><init>()V

    const-string v0, "testCase cannot be null"

    .line 61
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestCaseInfo;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    const-string p1, "testStatus cannot be null"

    .line 62
    invoke-static {p2, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestStatus;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->testStatus:Landroidx/test/services/events/TestStatus;

    const-string p1, "timeStamp cannot be null"

    .line 63
    invoke-static {p3, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TimeStamp;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/platform/TestPlatformEvent$EventType;
    .locals 1

    .line 87
    sget-object v0, Landroidx/test/services/events/platform/TestPlatformEvent$EventType;->TEST_CASE_FINISHED:Landroidx/test/services/events/platform/TestPlatformEvent$EventType;

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

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/platform/TestPlatformEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    iget-object v0, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestCaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->testStatus:Landroidx/test/services/events/TestStatus;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TimeStamp;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
