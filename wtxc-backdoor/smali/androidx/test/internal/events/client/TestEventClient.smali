.class public final Landroidx/test/internal/events/client/TestEventClient;
.super Ljava/lang/Object;
.source "TestEventClient.java"


# static fields
.field public static final NO_OP_CLIENT:Landroidx/test/internal/events/client/TestEventClient;

.field private static final TAG:Ljava/lang/String; = "TestEventClient"


# instance fields
.field private final notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

.field private final testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

.field private final testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Landroidx/test/internal/events/client/TestEventClient;

    invoke-direct {v0}, Landroidx/test/internal/events/client/TestEventClient;-><init>()V

    sput-object v0, Landroidx/test/internal/events/client/TestEventClient;->NO_OP_CLIENT:Landroidx/test/internal/events/client/TestEventClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

    .line 67
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    .line 68
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    return-void
.end method

.method private constructor <init>(Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runListener"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "runListener cannot be null"

    .line 87
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

    .line 89
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    .line 90
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    return-void
.end method

.method private constructor <init>(Landroidx/test/internal/events/client/TestDiscovery;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testDiscovery"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "testDiscovery cannot be null"

    .line 76
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClient;->testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    .line 79
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    return-void
.end method

.method private constructor <init>(Landroidx/test/internal/events/client/TestPlatformListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runListener"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "runListener cannot be null"

    .line 98
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

    .line 100
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    .line 101
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    return-void
.end method

.method public static connect(Landroid/content/Context;Landroidx/test/internal/events/client/TestEventClientConnectListener;Landroidx/test/internal/events/client/TestEventClientArgs;)Landroidx/test/internal/events/client/TestEventClient;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "listener",
            "args"
        }
    .end annotation

    const-string v0, "context parameter cannot be null!"

    .line 119
    invoke-static {p0, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener parameter cannot be null!"

    .line 120
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "args parameter cannot be null!"

    .line 121
    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-boolean v0, p2, Landroidx/test/internal/events/client/TestEventClientArgs;->isOrchestrated:Z

    if-nez v0, :cond_0

    .line 123
    sget-object p0, Landroidx/test/internal/events/client/TestEventClient;->NO_OP_CLIENT:Landroidx/test/internal/events/client/TestEventClient;

    return-object p0

    .line 125
    :cond_0
    iget-boolean v0, p2, Landroidx/test/internal/events/client/TestEventClientArgs;->isPrimaryInstrProcess:Z

    const-string v1, "TestEventClient"

    if-nez v0, :cond_1

    const-string p0, "Orchestration requested, but this isn\'t the primary instrumentation"

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object p0, Landroidx/test/internal/events/client/TestEventClient;->NO_OP_CLIENT:Landroidx/test/internal/events/client/TestEventClient;

    return-object p0

    .line 129
    :cond_1
    invoke-static {p1, p2}, Landroidx/test/internal/events/client/TestEventClient;->getConnection(Landroidx/test/internal/events/client/TestEventClientConnectListener;Landroidx/test/internal/events/client/TestEventClientArgs;)Landroidx/test/internal/events/client/TestEventServiceConnection;

    move-result-object p1

    .line 130
    sget-object v0, Landroidx/test/internal/events/client/TestEventClient;->NO_OP_CLIENT:Landroidx/test/internal/events/client/TestEventClient;

    .line 131
    iget-boolean v2, p2, Landroidx/test/internal/events/client/TestEventClientArgs;->isTestDiscoveryRequested:Z

    if-eqz v2, :cond_2

    const-string p2, "Test discovery events requested"

    .line 132
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move-object p2, p1

    check-cast p2, Landroidx/test/internal/events/client/TestDiscoveryEventService;

    .line 134
    new-instance v0, Landroidx/test/internal/events/client/TestDiscovery;

    invoke-direct {v0, p2}, Landroidx/test/internal/events/client/TestDiscovery;-><init>(Landroidx/test/internal/events/client/TestDiscoveryEventService;)V

    .line 135
    new-instance p2, Landroidx/test/internal/events/client/TestEventClient;

    invoke-direct {p2, v0}, Landroidx/test/internal/events/client/TestEventClient;-><init>(Landroidx/test/internal/events/client/TestDiscovery;)V

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 136
    :cond_2
    iget-boolean v2, p2, Landroidx/test/internal/events/client/TestEventClientArgs;->isTestRunEventsRequested:Z

    if-eqz v2, :cond_4

    const-string v0, "Test run events requested"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean p2, p2, Landroidx/test/internal/events/client/TestEventClientArgs;->testPlatformMigration:Z

    if-eqz p2, :cond_3

    .line 139
    new-instance p2, Landroidx/test/internal/events/client/TestPlatformListener;

    move-object v0, p1

    check-cast v0, Landroidx/test/internal/events/client/TestPlatformEventService;

    invoke-direct {p2, v0}, Landroidx/test/internal/events/client/TestPlatformListener;-><init>(Landroidx/test/internal/events/client/TestPlatformEventService;)V

    .line 141
    new-instance v0, Landroidx/test/internal/events/client/TestEventClient;

    invoke-direct {v0, p2}, Landroidx/test/internal/events/client/TestEventClient;-><init>(Landroidx/test/internal/events/client/TestPlatformListener;)V

    goto :goto_1

    .line 143
    :cond_3
    move-object p2, p1

    check-cast p2, Landroidx/test/internal/events/client/TestRunEventService;

    .line 144
    new-instance v0, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    invoke-direct {v0, p2}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;-><init>(Landroidx/test/internal/events/client/TestRunEventService;)V

    .line 146
    new-instance p2, Landroidx/test/internal/events/client/TestEventClient;

    invoke-direct {p2, v0}, Landroidx/test/internal/events/client/TestEventClient;-><init>(Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;)V

    goto :goto_0

    .line 149
    :cond_4
    :goto_1
    invoke-interface {p1, p0}, Landroidx/test/internal/events/client/TestEventServiceConnection;->connect(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getConnection(Landroidx/test/internal/events/client/TestEventClientConnectListener;Landroidx/test/internal/events/client/TestEventClientArgs;)Landroidx/test/internal/events/client/TestEventServiceConnection;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "args"
        }
    .end annotation

    .line 212
    iget v0, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->orchestratorVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    if-eqz v0, :cond_0

    .line 214
    iget-object p1, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    invoke-interface {p1, p0}, Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;->create(Landroidx/test/internal/events/client/TestEventClientConnectListener;)Landroidx/test/internal/events/client/TestEventServiceConnection;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Orchestrator v1 connectionFactory must be provided by TestEventClientArgs.Builder#setConnectionFactory()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_1
    iget v0, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->orchestratorVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 221
    iget-boolean v0, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->isTestDiscoveryRequested:Z

    if-eqz v0, :cond_2

    .line 222
    new-instance v0, Landroidx/test/internal/events/client/TestDiscoveryEventServiceConnection;

    iget-object p1, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->testDiscoveryService:Ljava/lang/String;

    .line 223
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Landroidx/test/internal/events/client/TestDiscoveryEventServiceConnection;-><init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    return-object v0

    .line 224
    :cond_2
    iget-boolean v0, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->isTestRunEventsRequested:Z

    if-eqz v0, :cond_4

    .line 225
    iget-boolean v0, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->testPlatformMigration:Z

    if-eqz v0, :cond_3

    .line 226
    new-instance v0, Landroidx/test/internal/events/client/TestPlatformEventServiceConnection;

    iget-object p1, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->testRunEventService:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Landroidx/test/internal/events/client/TestPlatformEventServiceConnection;-><init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    return-object v0

    .line 229
    :cond_3
    new-instance v0, Landroidx/test/internal/events/client/TestRunEventServiceConnection;

    iget-object p1, p1, Landroidx/test/internal/events/client/TestEventClientArgs;->testRunEventService:Ljava/lang/String;

    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Landroidx/test/internal/events/client/TestRunEventServiceConnection;-><init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    return-object v0

    .line 232
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TestEventClientArgs misconfiguration - can\'t determine which service connection to use."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addTests(Lorg/junit/runner/Description;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Landroidx/test/internal/events/client/TestEventClient;->isTestDiscoveryEnabled()Z

    move-result v0

    const-string v1, "TestEventClient"

    if-nez v0, :cond_0

    const-string p1, "Orchestrator service not connected - can\'t send tests"

    .line 199
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

    invoke-virtual {v0, p1}, Landroidx/test/internal/events/client/TestDiscovery;->addTests(Lorg/junit/runner/Description;)V
    :try_end_0
    .catch Landroidx/test/internal/events/client/TestEventClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to add test ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getRunListener()Lorg/junit/runner/notification/RunListener;
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroidx/test/internal/events/client/TestEventClient;->isTestRunEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TestEventClient"

    const-string v1, "Orchestrator service not connected - can\'t send test run notifications"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    if-eqz v0, :cond_1

    return-object v0

    .line 188
    :cond_1
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    return-object v0
.end method

.method public isTestDiscoveryEnabled()Z
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testDiscovery:Landroidx/test/internal/events/client/TestDiscovery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTestRunEventsEnabled()Z
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reportProcessCrash(Ljava/lang/Throwable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "timeoutMillis"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Landroidx/test/internal/events/client/TestEventClient;->isTestRunEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Landroidx/test/internal/events/client/TestEventClient;->notificationRunListener:Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2, p3}, Landroidx/test/internal/events/client/OrchestratedInstrumentationListener;->reportProcessCrash(Ljava/lang/Throwable;J)V

    .line 250
    :cond_0
    iget-object p2, p0, Landroidx/test/internal/events/client/TestEventClient;->testPlatformListener:Landroidx/test/internal/events/client/TestPlatformListener;

    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p2, p1}, Landroidx/test/internal/events/client/TestPlatformListener;->reportProcessCrash(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
