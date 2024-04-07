.class public Landroidx/test/services/events/run/TestRunFinishedEvent;
.super Landroidx/test/services/events/run/TestRunEvent;
.source "TestRunFinishedEvent.java"


# instance fields
.field public final count:I

.field public final failures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/services/events/FailureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final ignoreCount:I

.field public final runTime:J


# direct methods
.method public constructor <init>(IIJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "ignoreCount",
            "runTime",
            "failures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/List<",
            "Landroidx/test/services/events/FailureInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/test/services/events/run/TestRunEvent;-><init>()V

    const-string v0, "failures cannot be null"

    .line 45
    invoke-static {p5, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput p1, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->count:I

    .line 47
    iput p2, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->ignoreCount:I

    .line 48
    iput-wide p3, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->runTime:J

    .line 49
    iput-object p5, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->failures:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroidx/test/services/events/run/TestRunEvent;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->count:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->ignoreCount:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->runTime:J

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->failures:Ljava/util/List;

    .line 57
    const-class v0, [Landroidx/test/services/events/FailureInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 59
    iget-object v3, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->failures:Ljava/util/List;

    check-cast v2, Landroidx/test/services/events/FailureInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;
    .locals 1

    .line 74
    sget-object v0, Landroidx/test/services/events/run/TestRunEvent$EventType;->FINISHED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 65
    invoke-super {p0, p1, p2}, Landroidx/test/services/events/run/TestRunEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->ignoreCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-wide v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->runTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object v0, p0, Landroidx/test/services/events/run/TestRunFinishedEvent;->failures:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/test/services/events/FailureInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/events/FailureInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
