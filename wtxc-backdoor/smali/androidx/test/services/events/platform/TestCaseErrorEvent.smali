.class public Landroidx/test/services/events/platform/TestCaseErrorEvent;
.super Landroidx/test/services/events/platform/TestPlatformEvent;
.source "TestCaseErrorEvent.java"


# instance fields
.field public final error:Landroidx/test/services/events/ErrorInfo;

.field public final testCase:Landroidx/test/services/events/TestCaseInfo;

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

    .line 59
    invoke-direct {p0}, Landroidx/test/services/events/platform/TestPlatformEvent;-><init>()V

    .line 60
    new-instance v0, Landroidx/test/services/events/TestCaseInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestCaseInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    .line 61
    new-instance v0, Landroidx/test/services/events/ErrorInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/ErrorInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->error:Landroidx/test/services/events/ErrorInfo;

    .line 62
    new-instance v0, Landroidx/test/services/events/TimeStamp;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TimeStamp;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    return-void
.end method

.method public constructor <init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/ErrorInfo;Landroidx/test/services/events/TimeStamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "testCase",
            "error",
            "timeStamp"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/test/services/events/platform/TestPlatformEvent;-><init>()V

    const-string v0, "testCase cannot be null"

    .line 49
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestCaseInfo;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    const-string p1, "error cannot be null"

    .line 50
    invoke-static {p2, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/ErrorInfo;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->error:Landroidx/test/services/events/ErrorInfo;

    const-string p1, "timeStamp cannot be null"

    .line 51
    invoke-static {p3, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TimeStamp;

    iput-object p1, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/platform/TestPlatformEvent$EventType;
    .locals 1

    .line 67
    sget-object v0, Landroidx/test/services/events/platform/TestPlatformEvent$EventType;->TEST_CASE_ERROR:Landroidx/test/services/events/platform/TestPlatformEvent$EventType;

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

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/platform/TestPlatformEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestCaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget-object v0, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->error:Landroidx/test/services/events/ErrorInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/ErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Landroidx/test/services/events/platform/TestCaseErrorEvent;->timeStamp:Landroidx/test/services/events/TimeStamp;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TimeStamp;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
