.class public final Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;
.super Ljava/lang/Object;
.source "OrchestrationListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    }
.end annotation


# static fields
.field public static final KEY_TEST_EVENT:Ljava/lang/String; = "TestEvent"

.field private static final TAG:Ljava/lang/String; = "ListenerManager"


# instance fields
.field private final instrumentation:Landroid/app/Instrumentation;

.field private lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/orchestrator/listeners/OrchestrationRunListener;",
            ">;"
        }
    .end annotation
.end field

.field private markTerminationAsFailure:Z


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrumentation"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->instrumentation:Landroid/app/Instrumentation;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Instrumentation must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cacheStatus(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    :cond_0
    const-string v0, "TestEvent"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    move-result-object p1

    .line 114
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$1;->$SwitchMap$androidx$test$orchestrator$listeners$OrchestrationListenerManager$TestEvent:[I

    invoke-virtual {p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iput-boolean v1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    goto :goto_0

    .line 121
    :cond_2
    iput-boolean v1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    goto :goto_0

    .line 117
    :cond_3
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    :goto_0
    return-void
.end method

.method private handleNotificationForListener(Landroidx/test/orchestrator/listeners/OrchestrationRunListener;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "bundle"
        }
    .end annotation

    const-string v0, "TestEvent"

    .line 134
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    move-result-object v0

    .line 136
    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$1;->$SwitchMap$androidx$test$orchestrator$listeners$OrchestrationListenerManager$TestEvent:[I

    invoke-virtual {v0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string p1, "ListenerManager"

    const-string p2, "Unknown notification type"

    .line 166
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testIgnored(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getFailure(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableFailure;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testAssumptionFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFinished(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getResult(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testRunFinished(Landroidx/test/orchestrator/junit/ParcelableResult;)V

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getFailure(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableFailure;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V

    goto :goto_0

    .line 138
    :pswitch_6
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testRunStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroidx/test/orchestrator/listeners/OrchestrationRunListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1, v0}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 64
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleNotification(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 102
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->cacheStatus(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;

    .line 104
    invoke-direct {p0, v1, p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->handleNotificationForListener(Landroidx/test/orchestrator/listeners/OrchestrationRunListener;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public orchestrationRunStarted(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCount"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;

    .line 70
    invoke-virtual {v1, p1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->orchestrationRunStarted(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public testProcessFinished(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFile"
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;

    .line 84
    new-instance v2, Landroidx/test/orchestrator/junit/ParcelableFailure;

    iget-object v3, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    new-instance v4, Ljava/lang/Throwable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Test instrumentation process crashed. Check "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for details"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V

    .line 89
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-virtual {v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFinished(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public testProcessStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    return-void
.end method
