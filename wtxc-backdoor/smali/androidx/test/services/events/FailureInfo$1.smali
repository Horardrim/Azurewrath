.class Landroidx/test/services/events/FailureInfo$1;
.super Ljava/lang/Object;
.source "FailureInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/FailureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/test/services/events/FailureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/FailureInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 88
    new-instance v0, Landroidx/test/services/events/FailureInfo;

    invoke-direct {v0, p1}, Landroidx/test/services/events/FailureInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Landroidx/test/services/events/FailureInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/FailureInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/test/services/events/FailureInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 93
    new-array p1, p1, [Landroidx/test/services/events/FailureInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Landroidx/test/services/events/FailureInfo$1;->newArray(I)[Landroidx/test/services/events/FailureInfo;

    move-result-object p1

    return-object p1
.end method
