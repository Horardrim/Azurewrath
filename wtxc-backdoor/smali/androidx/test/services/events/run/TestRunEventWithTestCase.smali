.class public abstract Landroidx/test/services/events/run/TestRunEventWithTestCase;
.super Landroidx/test/services/events/run/TestRunEvent;
.source "TestRunEventWithTestCase.java"


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

    .line 35
    invoke-direct {p0}, Landroidx/test/services/events/run/TestRunEvent;-><init>()V

    .line 36
    new-instance v0, Landroidx/test/services/events/TestCaseInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/TestCaseInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/test/services/events/run/TestRunEventWithTestCase;->testCase:Landroidx/test/services/events/TestCaseInfo;

    return-void
.end method

.method constructor <init>(Landroidx/test/services/events/TestCaseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCase"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/test/services/events/run/TestRunEvent;-><init>()V

    const-string v0, "testCase cannot be null"

    .line 45
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroidx/test/services/events/run/TestRunEventWithTestCase;->testCase:Landroidx/test/services/events/TestCaseInfo;

    return-void
.end method


# virtual methods
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

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/run/TestRunEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    iget-object v0, p0, Landroidx/test/services/events/run/TestRunEventWithTestCase;->testCase:Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/test/services/events/TestCaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
