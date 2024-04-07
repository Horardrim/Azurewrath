.class public interface abstract Landroidx/test/services/events/run/ITestRunEvent;
.super Ljava/lang/Object;
.source "ITestRunEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/services/events/run/ITestRunEvent$Stub;
    }
.end annotation


# virtual methods
.method public abstract send(Landroidx/test/services/events/run/TestRunEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRunEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
