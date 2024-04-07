.class public final Landroidx/test/internal/events/client/TestDiscovery;
.super Ljava/lang/Object;
.source "TestDiscovery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestDiscovery"


# instance fields
.field private final testDiscoveryEventService:Landroidx/test/internal/events/client/TestDiscoveryEventService;


# direct methods
.method public constructor <init>(Landroidx/test/internal/events/client/TestDiscoveryEventService;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testDiscoveryEventService"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "testDiscoveryEventService can\'t be null"

    .line 40
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/internal/events/client/TestDiscoveryEventService;

    iput-object p1, p0, Landroidx/test/internal/events/client/TestDiscovery;->testDiscoveryEventService:Landroidx/test/internal/events/client/TestDiscoveryEventService;

    return-void
.end method

.method private addTest(Lorg/junit/runner/Description;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isEmpty()Z

    move-result v0

    const-string v1, "TestDiscovery"

    if-eqz v0, :cond_0

    const-string p1, "addTest called with an empty test description"

    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {p1}, Landroidx/test/internal/events/client/JUnitValidator;->validateDescription(Lorg/junit/runner/Description;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "JUnit reported "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; discarding as bogus."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestDiscovery;->testDiscoveryEventService:Landroidx/test/internal/events/client/TestDiscoveryEventService;

    new-instance v2, Landroidx/test/services/events/discovery/TestFoundEvent;

    invoke-static {p1}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/test/services/events/discovery/TestFoundEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;)V

    invoke-interface {v0, v2}, Landroidx/test/internal/events/client/TestDiscoveryEventService;->send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Failed to get test description"

    .line 74
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 78
    invoke-direct {p0, v0}, Landroidx/test/internal/events/client/TestDiscovery;->addTest(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addTests(Lorg/junit/runner/Description;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/events/client/TestEventClientException;
        }
    .end annotation

    const-string v0, "description cannot be null"

    .line 49
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Landroidx/test/internal/events/client/TestDiscovery;->testDiscoveryEventService:Landroidx/test/internal/events/client/TestDiscoveryEventService;

    new-instance v1, Landroidx/test/services/events/discovery/TestDiscoveryStartedEvent;

    invoke-direct {v1}, Landroidx/test/services/events/discovery/TestDiscoveryStartedEvent;-><init>()V

    invoke-interface {v0, v1}, Landroidx/test/internal/events/client/TestDiscoveryEventService;->send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V

    .line 51
    invoke-direct {p0, p1}, Landroidx/test/internal/events/client/TestDiscovery;->addTest(Lorg/junit/runner/Description;)V

    .line 52
    iget-object p1, p0, Landroidx/test/internal/events/client/TestDiscovery;->testDiscoveryEventService:Landroidx/test/internal/events/client/TestDiscoveryEventService;

    new-instance v0, Landroidx/test/services/events/discovery/TestDiscoveryFinishedEvent;

    invoke-direct {v0}, Landroidx/test/services/events/discovery/TestDiscoveryFinishedEvent;-><init>()V

    invoke-interface {p1, v0}, Landroidx/test/internal/events/client/TestDiscoveryEventService;->send(Landroidx/test/services/events/discovery/TestDiscoveryEvent;)V

    return-void
.end method
