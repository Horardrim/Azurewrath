.class public abstract Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;
.super Landroidx/test/runner/internal/deps/aidl/BaseStub;
.source "OrchestratorCallback.java"

# interfaces
.implements Landroidx/test/orchestrator/callback/OrchestratorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/callback/OrchestratorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.test.orchestrator.callback.OrchestratorCallback"

.field static final TRANSACTION_addTest:I = 0x1

.field static final TRANSACTION_sendTestNotification:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.test.orchestrator.callback.OrchestratorCallback"

    .line 48
    invoke-direct {p0, v0}, Landroidx/test/runner/internal/deps/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/test/orchestrator/callback/OrchestratorCallback;
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
    const-string v0, "androidx.test.orchestrator.callback.OrchestratorCallback"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    instance-of v1, v0, Landroidx/test/orchestrator/callback/OrchestratorCallback;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Landroidx/test/orchestrator/callback/OrchestratorCallback;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
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

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/test/runner/internal/deps/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 73
    invoke-virtual {p0, p1}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;->sendTestNotification(Landroid/os/Bundle;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;->addTest(Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
