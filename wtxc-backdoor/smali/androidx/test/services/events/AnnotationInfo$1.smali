.class Landroidx/test/services/events/AnnotationInfo$1;
.super Ljava/lang/Object;
.source "AnnotationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/AnnotationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/test/services/events/AnnotationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/AnnotationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 76
    new-instance v0, Landroidx/test/services/events/AnnotationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/services/events/AnnotationInfo;-><init>(Landroid/os/Parcel;Landroidx/test/services/events/AnnotationInfo$1;)V

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

    .line 73
    invoke-virtual {p0, p1}, Landroidx/test/services/events/AnnotationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/AnnotationInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/test/services/events/AnnotationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 81
    new-array p1, p1, [Landroidx/test/services/events/AnnotationInfo;

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

    .line 73
    invoke-virtual {p0, p1}, Landroidx/test/services/events/AnnotationInfo$1;->newArray(I)[Landroidx/test/services/events/AnnotationInfo;

    move-result-object p1

    return-object p1
.end method
