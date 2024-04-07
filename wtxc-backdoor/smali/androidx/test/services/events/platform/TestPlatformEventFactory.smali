.class public final Landroidx/test/services/events/platform/TestPlatformEventFactory;
.super Ljava/lang/Object;
.source "TestPlatformEventFactory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/test/services/events/platform/TestPlatformEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/platform/TestPlatformEvent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/services/events/platform/TestPlatformEvent$EventType;->valueOf(Ljava/lang/String;)Landroidx/test/services/events/platform/TestPlatformEvent$EventType;

    move-result-object v0

    .line 32
    sget-object v1, Landroidx/test/services/events/platform/TestPlatformEventFactory$1;->$SwitchMap$androidx$test$services$events$platform$TestPlatformEvent$EventType:[I

    invoke-virtual {v0}, Landroidx/test/services/events/platform/TestPlatformEvent$EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unhandled event type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :pswitch_0
    new-instance v0, Landroidx/test/services/events/platform/TestRunFinishedEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/platform/TestRunFinishedEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 42
    :pswitch_1
    new-instance v0, Landroidx/test/services/events/platform/TestCaseFinishedEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/platform/TestCaseFinishedEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 40
    :pswitch_2
    new-instance v0, Landroidx/test/services/events/platform/TestCaseErrorEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/platform/TestCaseErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 38
    :pswitch_3
    new-instance v0, Landroidx/test/services/events/platform/TestCaseStartedEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/platform/TestCaseStartedEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 36
    :pswitch_4
    new-instance v0, Landroidx/test/services/events/platform/TestRunErrorEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/platform/TestRunErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 34
    :pswitch_5
    new-instance v0, Landroidx/test/services/events/platform/TestRunStartedEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/platform/TestRunStartedEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 28
    invoke-virtual {p0, p1}, Landroidx/test/services/events/platform/TestPlatformEventFactory;->createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/platform/TestPlatformEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/test/services/events/platform/TestPlatformEvent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 51
    new-array p1, p1, [Landroidx/test/services/events/platform/TestPlatformEvent;

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

    .line 28
    invoke-virtual {p0, p1}, Landroidx/test/services/events/platform/TestPlatformEventFactory;->newArray(I)[Landroidx/test/services/events/platform/TestPlatformEvent;

    move-result-object p1

    return-object p1
.end method
