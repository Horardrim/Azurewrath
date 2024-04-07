.class public abstract Landroidx/test/services/events/run/TestRunEvent;
.super Ljava/lang/Object;
.source "TestRunEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/services/events/run/TestRunEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/services/events/run/TestRunEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroidx/test/services/events/run/TestRunEventFactory;

    invoke-direct {v0}, Landroidx/test/services/events/run/TestRunEventFactory;-><init>()V

    sput-object v0, Landroidx/test/services/events/run/TestRunEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
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

    .line 45
    invoke-virtual {p0}, Landroidx/test/services/events/run/TestRunEvent;->instanceType()Landroidx/test/services/events/run/TestRunEvent$EventType;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/test/services/events/run/TestRunEvent$EventType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
