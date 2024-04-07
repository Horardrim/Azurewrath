.class public abstract Landroidx/test/services/events/discovery/ITestDiscoveryEvent$Stub;
.super Landroidx/test/runner/internal/deps/aidl/BaseStub;
.source "ITestDiscoveryEvent.java"

# interfaces
.implements Landroidx/test/services/events/discovery/ITestDiscoveryEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/discovery/ITestDiscoveryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/services/events/discovery/ITestDiscoveryEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.test.services.events.discovery.ITestDiscoveryEvent"

.field static final TRANSACTION_send:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.test.services.events.discovery.ITestDiscoveryEvent"

    .line 37
    invoke-direct {p0, v0}, Landroidx/test/runner/internal/deps/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/test/services/events/discovery/ITestDiscoveryEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.test.services.events.discovery.ITestDiscoveryEvent"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    instance-of v1, v0, Landroidx/test/services/events/discovery/ITestDiscoveryEvent;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Landroidx/test/services/events/discovery/ITestDiscoveryEvent;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Landroidx/test/services/events/discovery/ITestDiscoveryEvent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/test/services/events/discovery/ITestDiscoveryEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 55
    sget-object p1, Landroidx/test/services/events/discovery/TestDiscoveryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/test/runner/internal/deps/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/discovery/TestDiscoveryEvent;

    .line 56
    invoke-virtual {p0, p1}, Landroidx/test/services/events/discovery/ITestDiscoveryEvent$Stub;->send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
