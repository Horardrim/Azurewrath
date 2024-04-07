.class public Landroidx/test/services/events/discovery/TestFoundEvent;
.super Landroidx/test/services/events/discovery/TestDiscoveryEvent;
.source "TestFoundEvent.java"


# instance fields
.field public final testCase:Landroidx/test/services/events/TestCaseInfo;


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

    .line 37
    invoke-direct {p0}, Landroidx/test/services/events/discovery/TestDiscoveryEvent;-><init>()V

    .line 38
    new-instance v0, Landroidx/test/services/events/TestCaseInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestCaseInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/discovery/TestFoundEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    return-void
.end method

.method public constructor <init>(Landroidx/test/services/events/TestCaseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCase"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/test/services/events/discovery/TestDiscoveryEvent;-><init>()V

    const-string v0, "testCase cannot be null"

    .line 33
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Landroidx/test/services/events/discovery/TestFoundEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;
    .locals 1

    .line 49
    sget-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->TEST_FOUND:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

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

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/discovery/TestDiscoveryEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    iget-object v0, p0, Landroidx/test/services/events/discovery/TestFoundEvent;->testCase:Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestCaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
