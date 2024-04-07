.class public Landroidx/test/services/events/discovery/TestDiscoveryFinishedEvent;
.super Landroidx/test/services/events/discovery/TestDiscoveryEvent;
.source "TestDiscoveryFinishedEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/test/services/events/discovery/TestDiscoveryEvent;-><init>()V

    return-void
.end method


# virtual methods
.method instanceType()Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;
    .locals 1

    .line 23
    sget-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->FINISHED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    return-object v0
.end method
