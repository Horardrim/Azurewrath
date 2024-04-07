.class final Landroidx/test/services/events/discovery/TestDiscoveryEventFactory;
.super Ljava/lang/Object;
.source "TestDiscoveryEventFactory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/test/services/events/discovery/TestDiscoveryEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/discovery/TestDiscoveryEvent;
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

    invoke-static {v0}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->valueOf(Ljava/lang/String;)Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    move-result-object v0

    .line 32
    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEventFactory$1;->$SwitchMap$androidx$test$services$events$discovery$TestDiscoveryEvent$EventType:[I

    invoke-virtual {v0}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-ne v1, p1, :cond_0

    .line 38
    new-instance p1, Landroidx/test/services/events/discovery/TestDiscoveryFinishedEvent;

    invoke-direct {p1}, Landroidx/test/services/events/discovery/TestDiscoveryFinishedEvent;-><init>()V

    return-object p1

    .line 40
    :cond_0
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

    .line 36
    :cond_1
    new-instance v0, Landroidx/test/services/events/discovery/TestFoundEvent;

    invoke-direct {v0, p1}, Landroidx/test/services/events/discovery/TestFoundEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 34
    :cond_2
    new-instance p1, Landroidx/test/services/events/discovery/TestDiscoveryStartedEvent;

    invoke-direct {p1}, Landroidx/test/services/events/discovery/TestDiscoveryStartedEvent;-><init>()V

    return-object p1
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
    invoke-virtual {p0, p1}, Landroidx/test/services/events/discovery/TestDiscoveryEventFactory;->createFromParcel(Landroid/os/Parcel;)Landroidx/test/services/events/discovery/TestDiscoveryEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/test/services/events/discovery/TestDiscoveryEvent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 45
    new-array p1, p1, [Landroidx/test/services/events/discovery/TestDiscoveryEvent;

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
    invoke-virtual {p0, p1}, Landroidx/test/services/events/discovery/TestDiscoveryEventFactory;->newArray(I)[Landroidx/test/services/events/discovery/TestDiscoveryEvent;

    move-result-object p1

    return-object p1
.end method
