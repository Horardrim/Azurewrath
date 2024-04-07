.class public interface abstract Landroidx/test/services/events/discovery/ITestDiscoveryEvent;
.super Ljava/lang/Object;
.source "ITestDiscoveryEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/services/events/discovery/ITestDiscoveryEvent$Stub;
    }
.end annotation


# virtual methods
.method public abstract send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testDiscoveryEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
