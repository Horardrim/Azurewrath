.class public final Landroidx/test/internal/events/client/TestPlatformListener;
.super Lorg/junit/runner/notification/RunListener;
.source "TestPlatformListener.java"


# static fields
.field private static final INIT_ERROR:Ljava/lang/String; = "initializationError"

.field private static final TAG:Ljava/lang/String; = "TestPlatformListener"


# instance fields
.field private final currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field

.field private finishedTestCases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field

.field private foundTestCases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedTestRun:Landroidx/test/services/events/TestRunInfo;

.field private final notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

.field private final ongoingResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/junit/runner/Result;",
            ">;"
        }
    .end annotation
.end field

.field private final ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field private final processCrashed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private startedTestCases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field

.field private testCaseToStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/junit/runner/Description;",
            "Landroidx/test/services/events/TestStatus$Status;",
            ">;"
        }
    .end annotation
.end field

.field private testRunDescription:Lorg/junit/runner/Description;


# direct methods
.method public constructor <init>(Landroidx/test/internal/events/client/TestPlatformEventService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationService"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 67
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->processCrashed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/junit/runner/Result;

    invoke-direct {v1}, Lorg/junit/runner/Result;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Result;

    invoke-virtual {v0}, Lorg/junit/runner/Result;->createListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "notificationService cannot be null"

    .line 91
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/internal/events/client/TestPlatformEventService;

    iput-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    return-void
.end method

.method private static convertToTestCase(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/services/events/TestEventException;
        }
    .end annotation

    .line 300
    invoke-static {p0}, Landroidx/test/services/events/ParcelableConverter;->getTestCaseFromDescription(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object p0

    return-object p0
.end method

.method private static convertToTestRun(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestRunInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRun"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/services/events/TestEventException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-static {p0}, Landroidx/test/internal/events/client/JUnitDescriptionParser;->getAllTestCaseDescriptions(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 306
    invoke-static {v2}, Landroidx/test/internal/events/client/TestPlatformListener;->convertToTestCase(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_0
    new-instance v1, Landroidx/test/services/events/TestRunInfo;

    invoke-virtual {p0}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroidx/test/services/events/TestRunInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private createErrorEvent(Lorg/junit/runner/notification/Failure;Landroidx/test/services/events/TimeStamp;)Landroidx/test/services/events/platform/TestPlatformEvent;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failure",
            "timeStamp"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lorg/junit/runner/Description;->isTest()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/test/internal/events/client/TestPlatformListener;->isInitError(Lorg/junit/runner/Description;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    .line 320
    :cond_1
    new-instance v1, Landroidx/test/services/events/ErrorInfo;

    .line 322
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Landroidx/test/services/events/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    invoke-virtual {v0, p1}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 326
    :try_start_0
    new-instance p1, Landroidx/test/services/events/platform/TestCaseErrorEvent;

    invoke-static {v0}, Landroidx/test/internal/events/client/TestPlatformListener;->convertToTestCase(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v0

    invoke-direct {p1, v0, v1, p2}, Landroidx/test/services/events/platform/TestCaseErrorEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/ErrorInfo;Landroidx/test/services/events/TimeStamp;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TestPlatformListener"

    const-string v2, "Unable to create TestCaseErrorEvent"

    .line 328
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :cond_2
    new-instance p1, Landroidx/test/services/events/platform/TestRunErrorEvent;

    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->memoizedTestRun:Landroidx/test/services/events/TestRunInfo;

    invoke-direct {p1, v0, v1, p2}, Landroidx/test/services/events/platform/TestRunErrorEvent;-><init>(Landroidx/test/services/events/TestRunInfo;Landroidx/test/services/events/ErrorInfo;Landroidx/test/services/events/TimeStamp;)V

    return-object p1
.end method

.method private getTimeStamp()Landroidx/test/services/events/TimeStamp;
    .locals 7

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 336
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 337
    new-instance v4, Landroidx/test/services/events/TimeStamp;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroidx/test/services/events/TimeStamp;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object v4
.end method

.method private static isInitError(Lorg/junit/runner/Description;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "initializationError"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetListener()V
    .locals 2

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->finishedTestCases:Ljava/util/Set;

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->foundTestCases:Ljava/util/Set;

    .line 279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->startedTestCases:Ljava/util/Set;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    .line 281
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->memoizedTestRun:Landroidx/test/services/events/TestRunInfo;

    .line 284
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->processCrashed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResult:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/junit/runner/Result;

    invoke-direct {v1}, Lorg/junit/runner/Result;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Result;

    invoke-virtual {v1}, Lorg/junit/runner/Result;->createListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setRunDescription(Lorg/junit/runner/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    .line 293
    :goto_0
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    .line 294
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/junit/runner/Description;

    iput-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private testFinishedInternal(Lorg/junit/runner/Description;Landroidx/test/services/events/TimeStamp;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "timeStamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-static {p1}, Landroidx/test/internal/events/client/TestPlatformListener;->isInitError(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v0, p1}, Lorg/junit/runner/notification/RunListener;->testFinished(Lorg/junit/runner/Description;)V

    .line 181
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->finishedTestCases:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    new-instance v1, Landroidx/test/services/events/platform/TestCaseFinishedEvent;

    .line 185
    invoke-static {p1}, Landroidx/test/internal/events/client/TestPlatformListener;->convertToTestCase(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object v2

    new-instance v3, Landroidx/test/services/events/TestStatus;

    iget-object v4, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    .line 186
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/services/events/TestStatus$Status;

    invoke-direct {v3, p1}, Landroidx/test/services/events/TestStatus;-><init>(Landroidx/test/services/events/TestStatus$Status;)V

    invoke-direct {v1, v2, v3, p2}, Landroidx/test/services/events/platform/TestCaseFinishedEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/TestStatus;Landroidx/test/services/events/TimeStamp;)V

    .line 183
    invoke-interface {v0, v1}, Landroidx/test/internal/events/client/TestPlatformEventService;->send(Landroidx/test/services/events/platform/TestPlatformEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "TestPlatformListener"

    const-string v0, "Unable to send TestFinishedEvent to Test Platform"

    .line 189
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :goto_0
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 193
    throw p1
.end method


# virtual methods
.method public reportProcessCrash(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->processCrashed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 261
    sget-object v2, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    .line 266
    :cond_0
    :try_start_0
    new-instance v2, Lorg/junit/runner/notification/Failure;

    invoke-direct {v2, v0, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Landroidx/test/internal/events/client/TestPlatformListener;->testFailure(Lorg/junit/runner/notification/Failure;)V

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p0, v0}, Landroidx/test/internal/events/client/TestPlatformListener;->testFinished(Lorg/junit/runner/Description;)V

    .line 270
    :cond_1
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/junit/runner/Result;

    invoke-virtual {p0, p1}, Landroidx/test/internal/events/client/TestPlatformListener;->testRunFinished(Lorg/junit/runner/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "An exception was encountered while reporting the process crash"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 217
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v1, p1}, Lorg/junit/runner/notification/RunListener;->testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V

    .line 218
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    sget-object v3, Landroidx/test/services/events/TestStatus$Status;->SKIPPED:Landroidx/test/services/events/TestStatus$Status;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/events/client/TestPlatformListener;->createErrorEvent(Lorg/junit/runner/notification/Failure;Landroidx/test/services/events/TimeStamp;)Landroidx/test/services/events/platform/TestPlatformEvent;

    move-result-object p1

    .line 223
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    invoke-interface {v0, p1}, Landroidx/test/internal/events/client/TestPlatformEventService;->send(Landroidx/test/services/events/platform/TestPlatformEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TestPlatformListener"

    const-string v1, "Unable to send TestAssumptionFailureEvent to Test Platform"

    .line 225
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    .line 201
    iget-object v2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v2, p1}, Lorg/junit/runner/notification/RunListener;->testFailure(Lorg/junit/runner/notification/Failure;)V

    .line 202
    invoke-virtual {v1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroidx/test/internal/events/client/TestPlatformListener;->isInitError(Lorg/junit/runner/Description;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    sget-object v3, Landroidx/test/services/events/TestStatus$Status;->FAILED:Landroidx/test/services/events/TestStatus$Status;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/events/client/TestPlatformListener;->createErrorEvent(Lorg/junit/runner/notification/Failure;Landroidx/test/services/events/TimeStamp;)Landroidx/test/services/events/platform/TestPlatformEvent;

    move-result-object p1

    .line 207
    iget-object v0, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    invoke-interface {v0, p1}, Landroidx/test/internal/events/client/TestPlatformEventService;->send(Landroidx/test/services/events/platform/TestPlatformEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to send error event"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 1
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 172
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/events/client/TestPlatformListener;->testFinishedInternal(Lorg/junit/runner/Description;Landroidx/test/services/events/TimeStamp;)V

    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 6
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 233
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v1, p1}, Lorg/junit/runner/notification/RunListener;->testIgnored(Lorg/junit/runner/Description;)V

    .line 237
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TestIgnoredEvent("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestPlatformListener"

    .line 234
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    sget-object v2, Landroidx/test/services/events/TestStatus$Status;->IGNORED:Landroidx/test/services/events/TestStatus$Status;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/events/client/TestPlatformListener;->testFinishedInternal(Lorg/junit/runner/Description;Landroidx/test/services/events/TimeStamp;)V

    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 120
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v1, p1}, Lorg/junit/runner/notification/RunListener;->testRunFinished(Lorg/junit/runner/Result;)V

    .line 121
    invoke-virtual {p1}, Lorg/junit/runner/Result;->wasSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/test/services/events/TestStatus$Status;->PASSED:Landroidx/test/services/events/TestStatus$Status;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/test/services/events/TestStatus$Status;->FAILED:Landroidx/test/services/events/TestStatus$Status;

    .line 123
    :goto_0
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->processCrashed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroidx/test/services/events/TestStatus$Status;->FAILED:Landroidx/test/services/events/TestStatus$Status;

    .line 125
    :cond_1
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->foundTestCases:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->finishedTestCases:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 128
    sget-object v1, Landroidx/test/services/events/TestStatus$Status;->PASSED:Landroidx/test/services/events/TestStatus$Status;

    invoke-virtual {p1, v1}, Landroidx/test/services/events/TestStatus$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Landroidx/test/services/events/TestStatus$Status;->ABORTED:Landroidx/test/services/events/TestStatus$Status;

    .line 130
    :cond_2
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    invoke-static {v1}, Landroidx/test/internal/events/client/JUnitDescriptionParser;->getAllTestCaseDescriptions(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 131
    iget-object v3, p0, Landroidx/test/internal/events/client/TestPlatformListener;->finishedTestCases:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    iget-object v3, p0, Landroidx/test/internal/events/client/TestPlatformListener;->startedTestCases:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    iget-object v3, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    sget-object v4, Landroidx/test/services/events/TestStatus$Status;->ABORTED:Landroidx/test/services/events/TestStatus$Status;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 137
    :cond_4
    iget-object v3, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    sget-object v4, Landroidx/test/services/events/TestStatus$Status;->CANCELLED:Landroidx/test/services/events/TestStatus$Status;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_2
    invoke-direct {p0, v2, v0}, Landroidx/test/internal/events/client/TestPlatformListener;->testFinishedInternal(Lorg/junit/runner/Description;Landroidx/test/services/events/TimeStamp;)V

    goto :goto_1

    .line 144
    :cond_5
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    new-instance v2, Landroidx/test/services/events/platform/TestRunFinishedEvent;

    iget-object v3, p0, Landroidx/test/internal/events/client/TestPlatformListener;->memoizedTestRun:Landroidx/test/services/events/TestRunInfo;

    new-instance v4, Landroidx/test/services/events/TestStatus;

    invoke-direct {v4, p1}, Landroidx/test/services/events/TestStatus;-><init>(Landroidx/test/services/events/TestStatus$Status;)V

    invoke-direct {v2, v3, v4, v0}, Landroidx/test/services/events/platform/TestRunFinishedEvent;-><init>(Landroidx/test/services/events/TestRunInfo;Landroidx/test/services/events/TestStatus;Landroidx/test/services/events/TimeStamp;)V

    invoke-interface {v1, v2}, Landroidx/test/internal/events/client/TestPlatformEventService;->send(Landroidx/test/services/events/platform/TestPlatformEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "TestPlatformListener"

    const-string v1, "Unable to send TestRunFinishedEvent to Test Platform"

    .line 147
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .locals 4
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 98
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->resetListener()V

    .line 99
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v1, p1}, Lorg/junit/runner/notification/RunListener;->testRunStarted(Lorg/junit/runner/Description;)V

    .line 100
    invoke-direct {p0, p1}, Landroidx/test/internal/events/client/TestPlatformListener;->setRunDescription(Lorg/junit/runner/Description;)V

    .line 101
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    .line 102
    invoke-static {p1}, Landroidx/test/internal/events/client/JUnitDescriptionParser;->getAllTestCaseDescriptions(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 104
    iget-object v2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->foundTestCases:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testCaseToStatus:Ljava/util/Map;

    sget-object v3, Landroidx/test/services/events/TestStatus$Status;->PASSED:Landroidx/test/services/events/TestStatus$Status;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->testRunDescription:Lorg/junit/runner/Description;

    invoke-static {p1}, Landroidx/test/internal/events/client/TestPlatformListener;->convertToTestRun(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestRunInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->memoizedTestRun:Landroidx/test/services/events/TestRunInfo;

    .line 110
    iget-object p1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    new-instance v1, Landroidx/test/services/events/platform/TestRunStartedEvent;

    iget-object v2, p0, Landroidx/test/internal/events/client/TestPlatformListener;->memoizedTestRun:Landroidx/test/services/events/TestRunInfo;

    invoke-direct {v1, v2, v0}, Landroidx/test/services/events/platform/TestRunStartedEvent;-><init>(Landroidx/test/services/events/TestRunInfo;Landroidx/test/services/events/TimeStamp;)V

    invoke-interface {p1, v1}, Landroidx/test/internal/events/client/TestPlatformEventService;->send(Landroidx/test/services/events/platform/TestPlatformEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "TestPlatformListener"

    const-string v1, "Unable to send TestRunStartedEvent to Test Platform"

    .line 112
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 3
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Landroidx/test/internal/events/client/TestPlatformListener;->getTimeStamp()Landroidx/test/services/events/TimeStamp;

    move-result-object v0

    .line 155
    invoke-static {p1}, Landroidx/test/internal/events/client/TestPlatformListener;->isInitError(Lorg/junit/runner/Description;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->ongoingResultListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    invoke-virtual {v1, p1}, Lorg/junit/runner/notification/RunListener;->testStarted(Lorg/junit/runner/Description;)V

    .line 159
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->startedTestCases:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->currentTestCase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/events/client/TestPlatformListener;->notificationService:Landroidx/test/internal/events/client/TestPlatformEventService;

    new-instance v2, Landroidx/test/services/events/platform/TestCaseStartedEvent;

    invoke-static {p1}, Landroidx/test/internal/events/client/TestPlatformListener;->convertToTestCase(Lorg/junit/runner/Description;)Landroidx/test/services/events/TestCaseInfo;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Landroidx/test/services/events/platform/TestCaseStartedEvent;-><init>(Landroidx/test/services/events/TestCaseInfo;Landroidx/test/services/events/TimeStamp;)V

    invoke-interface {v1, v2}, Landroidx/test/internal/events/client/TestPlatformEventService;->send(Landroidx/test/services/events/platform/TestPlatformEvent;)V
    :try_end_0
    .catch Landroidx/test/services/events/TestEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TestPlatformListener"

    const-string v1, "Unable to send TestStartedEvent to Test Platform"

    .line 164
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
