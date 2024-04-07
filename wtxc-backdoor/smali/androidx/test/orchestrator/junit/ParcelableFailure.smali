.class public final Landroidx/test/orchestrator/junit/ParcelableFailure;
.super Ljava/lang/Object;
.source "ParcelableFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/orchestrator/junit/ParcelableFailure;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_STREAM_LENGTH:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "ParcelableFailure"


# instance fields
.field private final description:Landroidx/test/orchestrator/junit/ParcelableDescription;

.field private final trace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableFailure$1;

    invoke-direct {v0}, Landroidx/test/orchestrator/junit/ParcelableFailure$1;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/junit/ParcelableFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableFailure$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "message"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 51
    invoke-static {p2}, Landroidx/test/orchestrator/junit/ParcelableFailure;->trimToLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "t"
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runner/notification/Failure;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Lorg/junit/runner/Description;)V

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 37
    invoke-static {p1}, Landroidx/test/services/events/internal/StackTrimmer;->getTrimmedStackTrace(Lorg/junit/runner/notification/Failure;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    return-void
.end method

.method private static trimToLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trace"
        }
    .end annotation

    const-string v0, "\n"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4000

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x3fff

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Stack trace too long, trimmed to first %s characters."

    .line 85
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ParcelableFailure"

    .line 83
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroidx/test/orchestrator/junit/ParcelableDescription;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    return-object v0
.end method

.method public getTrace()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

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
            "out",
            "flags"
        }
    .end annotation

    .line 61
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
