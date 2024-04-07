.class public Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
.super Ljava/lang/Object;
.source "TestEventClientArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/events/client/TestEventClientArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TestEventClient"


# instance fields
.field private connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

.field isPrimaryInstProcess:Z

.field private orchestratorService:Ljava/lang/String;

.field testDiscoveryRequested:Z

.field private testDiscoveryService:Ljava/lang/String;

.field testPlatformMigration:Z

.field private testRunEventService:Ljava/lang/String;

.field testRunEventsRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->isPrimaryInstProcess:Z

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    .line 70
    iput-boolean v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    .line 71
    iput-boolean v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testPlatformMigration:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/events/client/TestEventClientArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/internal/events/client/TestEventClientArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/internal/events/client/TestEventClientArgs$Builder;)Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/test/internal/events/client/TestEventClientArgs;
    .locals 7

    .line 169
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryService:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "TestEventClient"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iput-boolean v2, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    .line 172
    iput-boolean v4, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    goto/16 :goto_2

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventService:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iput-boolean v2, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    .line 176
    iput-boolean v4, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    goto :goto_2

    .line 177
    :cond_1
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->orchestratorService:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 178
    iget-object v1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    const-string v5, "Orchestrator service ["

    if-nez v1, :cond_2

    .line 179
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x60

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] argument given, but no connectionFactory was provided for the v1 service"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_2
    iget-boolean v1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    if-eqz v1, :cond_3

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] argument given, but neither test discovery nor run event services was requested"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_5
    const-string v0, "No service name argument was given (testDiscoveryService, testRunEventService or orchestratorService)"

    .line 195
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-boolean v4, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    .line 200
    iput-boolean v4, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    :goto_1
    move v1, v4

    .line 202
    :goto_2
    iget-boolean v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    if-eqz v0, :cond_6

    const-string v0, "Can\'t use both the test discovery and run event services simultaneously"

    .line 203
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-boolean v4, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    :cond_6
    if-lez v1, :cond_7

    const/16 v0, 0x27

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Connecting to Orchestrator v"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_7
    new-instance v0, Landroidx/test/internal/events/client/TestEventClientArgs;

    if-lez v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, p0, v3}, Landroidx/test/internal/events/client/TestEventClientArgs;-><init>(ZILandroidx/test/internal/events/client/TestEventClientArgs$Builder;Landroidx/test/internal/events/client/TestEventClientArgs$1;)V

    return-object v0
.end method

.method public setConnectionFactory(Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionFactory"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    return-object p0
.end method

.method public setOrchestratorService(Ljava/lang/String;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orchestratorService"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->orchestratorService:Ljava/lang/String;

    return-object p0
.end method

.method public setPrimaryInstProcess(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrimaryInstProcess"
        }
    .end annotation

    .line 83
    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->isPrimaryInstProcess:Z

    return-object p0
.end method

.method public setTestDiscoveryRequested(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discoveryRequested"
        }
    .end annotation

    .line 104
    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    return-object p0
.end method

.method public setTestDiscoveryService(Ljava/lang/String;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testDiscoveryService"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryService:Ljava/lang/String;

    return-object p0
.end method

.method public setTestPlatformMigration(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testPlatformMigration"
        }
    .end annotation

    .line 118
    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testPlatformMigration:Z

    return-object p0
.end method

.method public setTestRunEventService(Ljava/lang/String;)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRunEventService"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventService:Ljava/lang/String;

    return-object p0
.end method

.method public setTestRunEventsRequested(Z)Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runEventsRequested"
        }
    .end annotation

    .line 111
    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    return-object p0
.end method
