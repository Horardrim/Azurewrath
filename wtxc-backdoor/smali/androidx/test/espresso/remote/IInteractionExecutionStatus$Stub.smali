.class public abstract Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub;
.super Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;
.source "IInteractionExecutionStatus.java"

# interfaces
.implements Landroidx/test/espresso/remote/IInteractionExecutionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/remote/IInteractionExecutionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.test.espresso.remote.IInteractionExecutionStatus"

.field static final TRANSACTION_canExecute:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.test.espresso.remote.IInteractionExecutionStatus"

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/test/espresso/remote/IInteractionExecutionStatus;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.test.espresso.remote.IInteractionExecutionStatus"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub;->canExecute()Z

    move-result p1

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4
    invoke-static {p3, p1}, Landroidx/test/espresso/core/internal/deps/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
