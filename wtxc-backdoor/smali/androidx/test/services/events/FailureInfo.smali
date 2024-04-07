.class public final Landroidx/test/services/events/FailureInfo;
.super Ljava/lang/Object;
.source "FailureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/services/events/FailureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final failureMessage:Ljava/lang/String;

.field public final failureType:Ljava/lang/String;

.field public final stackTrace:Ljava/lang/String;

.field public final testCase:Landroidx/test/services/events/TestCaseInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/test/services/events/FailureInfo$1;

    invoke-direct {v0}, Landroidx/test/services/events/FailureInfo$1;-><init>()V

    sput-object v0, Landroidx/test/services/events/FailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source cannot be null"

    .line 64
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/services/events/FailureInfo;->failureMessage:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/services/events/FailureInfo;->failureType:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/services/events/FailureInfo;->stackTrace:Ljava/lang/String;

    .line 68
    const-class v0, Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestCaseInfo;

    iput-object p1, p0, Landroidx/test/services/events/FailureInfo;->testCase:Landroidx/test/services/events/TestCaseInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/test/services/events/TestCaseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "failureMessage",
            "failureType",
            "stackTrace",
            "testCase"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stackTrace cannot be null"

    .line 50
    invoke-static {p3, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "testCase cannot be null"

    .line 51
    invoke-static {p4, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Landroidx/test/services/events/FailureInfo;->failureMessage:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroidx/test/services/events/FailureInfo;->failureType:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Landroidx/test/services/events/FailureInfo;->stackTrace:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Landroidx/test/services/events/FailureInfo;->testCase:Landroidx/test/services/events/TestCaseInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 78
    iget-object v0, p0, Landroidx/test/services/events/FailureInfo;->failureMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Landroidx/test/services/events/FailureInfo;->failureType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroidx/test/services/events/FailureInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroidx/test/services/events/FailureInfo;->testCase:Landroidx/test/services/events/TestCaseInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
