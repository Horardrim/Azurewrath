.class Landroidx/test/services/events/AnnotationValue$1;
.super Ljava/lang/Object;
.source "AnnotationValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/test/services/events/AnnotationValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 81
    new-instance v0, Landroidx/test/services/events/AnnotationValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/services/events/AnnotationValue;-><init>(Landroid/os/Parcel;Landroidx/test/services/events/AnnotationValue$1;)V

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

    .line 78
    invoke-virtual {p0, p1}, Landroidx/test/services/events/AnnotationValue$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/AnnotationValue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/test/services/events/AnnotationValue;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 86
    new-array p1, p1, [Landroidx/test/services/events/AnnotationValue;

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

    .line 78
    invoke-virtual {p0, p1}, Landroidx/test/services/events/AnnotationValue$1;->newArray(I)[Landroidx/test/services/events/AnnotationValue;

    move-result-object p1

    return-object p1
.end method
