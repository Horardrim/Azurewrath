.class public Landroidx/test/internal/runner/RunnerArgs$Builder;
.super Ljava/lang/Object;
.source "RunnerArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/RunnerArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private classpathToScan:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private codeCoverage:Z

.field private codeCoveragePath:Ljava/lang/String;

.field private debug:Z

.field private delayInMillis:I

.field private disableAnalytics:Z

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/manipulation/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private listTestsForOrchestrator:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field private logOnly:Z

.field private newRunListenerMode:Z

.field private final notAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notTestPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notTests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation
.end field

.field private numShards:I

.field private orchestratorService:Ljava/lang/String;

.field private remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

.field private runnerBuilderClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private screenCaptureProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private shardIndex:I

.field public shellExecBinderKey:Ljava/lang/String;

.field private suiteAssignment:Z

.field private targetProcess:Ljava/lang/String;

.field private testDiscoveryService:Ljava/lang/String;

.field private testPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private testPlatformMigration:Z

.field private testRunEventsService:Ljava/lang/String;

.field private testSize:Ljava/lang/String;

.field private testTimeout:J

.field private tests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation
.end field

.field private testsRegEx:Ljava/lang/String;

.field private useTestStorageService:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->debug:Z

    .line 208
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->suiteAssignment:Z

    .line 209
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoverage:Z

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoveragePath:Ljava/lang/String;

    const/4 v2, -0x1

    .line 211
    iput v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->delayInMillis:I

    .line 212
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->logOnly:Z

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    .line 215
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testSize:Ljava/lang/String;

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->annotations:Ljava/util/List;

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notAnnotations:Ljava/util/List;

    const-wide/16 v2, -0x1

    .line 218
    iput-wide v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testTimeout:J

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listeners:Ljava/util/List;

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->filters:Ljava/util/List;

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->runnerBuilderClasses:Ljava/util/List;

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    .line 224
    iput v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->numShards:I

    .line 225
    iput v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shardIndex:I

    .line 226
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->disableAnalytics:Z

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->appListeners:Ljava/util/List;

    .line 229
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classLoader:Ljava/lang/ClassLoader;

    .line 230
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classpathToScan:Ljava/util/Set;

    .line 231
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    .line 232
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->orchestratorService:Ljava/lang/String;

    .line 233
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listTestsForOrchestrator:Z

    .line 234
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testDiscoveryService:Ljava/lang/String;

    .line 235
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testRunEventsService:Ljava/lang/String;

    .line 236
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->useTestStorageService:Z

    .line 237
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->targetProcess:Ljava/lang/String;

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->screenCaptureProcessors:Ljava/util/List;

    .line 240
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->newRunListenerMode:Z

    .line 241
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testsRegEx:Ljava/lang/String;

    .line 242
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPlatformMigration:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->debug:Z

    return p0
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->suiteAssignment:Z

    return p0
.end method

.method static synthetic access$1000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notAnnotations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/test/internal/runner/RunnerArgs$Builder;)J
    .locals 2

    .line 206
    iget-wide v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testTimeout:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->filters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->runnerBuilderClasses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/test/internal/runner/RunnerArgs$Builder;)I
    .locals 0

    .line 206
    iget p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->numShards:I

    return p0
.end method

.method static synthetic access$1800(Landroidx/test/internal/runner/RunnerArgs$Builder;)I
    .locals 0

    .line 206
    iget p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shardIndex:I

    return p0
.end method

.method static synthetic access$1900(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->disableAnalytics:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoverage:Z

    return p0
.end method

.method static synthetic access$2000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->appListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/ClassLoader;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static synthetic access$2200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/Set;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classpathToScan:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Landroidx/test/internal/runner/RunnerArgs$TestArg;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    return-object p0
.end method

.method static synthetic access$2400(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->orchestratorService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listTestsForOrchestrator:Z

    return p0
.end method

.method static synthetic access$2600(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testDiscoveryService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testRunEventsService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->useTestStorageService:Z

    return p0
.end method

.method static synthetic access$2900(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->screenCaptureProcessors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoveragePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->targetProcess:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->newRunListenerMode:Z

    return p0
.end method

.method static synthetic access$3200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testsRegEx:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPlatformMigration:Z

    return p0
.end method

.method static synthetic access$400(Landroidx/test/internal/runner/RunnerArgs$Builder;)I
    .locals 0

    .line 206
    iget p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->delayInMillis:I

    return p0
.end method

.method static synthetic access$500(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->logOnly:Z

    return p0
.end method

.method static synthetic access$600(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testSize:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->annotations:Ljava/util/List;

    return-object p0
.end method

.method static isClassOrMethod(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 517
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 518
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    .line 519
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private loadClassByNameAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classes",
            "className",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, " does not extend "

    if-eqz p2, :cond_3

    .line 651
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 655
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 656
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 657
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Could not find extra class "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private loadClassByNameInstantiateAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objects",
            "className",
            "type",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "Failed to create: "

    if-eqz p2, :cond_7

    .line 571
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 576
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 583
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array p4, v3, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v4

    if-eqz p4, :cond_1

    :try_start_2
    new-array v5, v2, [Ljava/lang/Class;

    .line 590
    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p4, v5, v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v1

    move-object p4, v5

    .line 604
    :goto_0
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 606
    invoke-virtual {v4, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 607
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_1
    move-exception p1

    .line 596
    invoke-virtual {p1, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 597
    throw p1

    .line 601
    :cond_1
    throw v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 620
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "Failed to create listener: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_3
    move-exception p1

    .line 618
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_4
    move-exception p1

    .line 616
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 614
    :catch_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x11

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not extend "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 611
    :catch_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Must have no argument constructor for class "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 609
    :catch_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Could not find extra class "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_6
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_6
    return-void
.end method

.method private openFile(Landroid/app/Instrumentation;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_2

    .line 502
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 504
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object p1

    const-string v3, "cat "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/app/UiAutomation;->executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 505
    :cond_2
    new-instance v0, Ljava/io/FileReader;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method private parseAndLoadClasses(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classString",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+TT;>;>;"
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ","

    .line 632
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 633
    invoke-direct {p0, v0, v3, p2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->loadClassByNameAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "booleanValue"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 351
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseClasspath(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classpath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, -0x1

    const-string v2, ":"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 430
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private parseFromFile(Landroid/app/Instrumentation;Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "filePath"
        }
    .end annotation

    .line 462
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;-><init>(Landroidx/test/internal/runner/RunnerArgs$1;)V

    if-nez p2, :cond_0

    return-object v0

    .line 468
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->openFile(Landroid/app/Instrumentation;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 470
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 471
    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->isClassOrMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3400(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_1
    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3500(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 485
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 481
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not read test file "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "testfile not found: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_6

    .line 485
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 490
    :catch_3
    :cond_6
    throw p1
.end method

.method private parseLoadAndInstantiateClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classString",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 548
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 549
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 550
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 554
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 551
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 552
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Expected 1 class loader, %d given"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-object v0
.end method

.method private parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classString",
            "type",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ","

    .line 535
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 536
    invoke-direct {p0, v0, v3, p2, p3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->loadClassByNameInstantiateAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseStrings(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClassName"
        }
    .end annotation

    .line 441
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x23

    .line 444
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 446
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 448
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$TestArg;

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/runner/RunnerArgs$TestArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 450
    :cond_1
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$TestArg;

    invoke-direct {v0, p0}, Landroidx/test/internal/runner/RunnerArgs$TestArg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseTestClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classesArg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ","

    .line 414
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 415
    invoke-static {v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseTestPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packagesArg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, ","

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 399
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "name"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 364
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " can not be negative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static parseUnsignedLong(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "name"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-wide v0

    .line 382
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " can not be negative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method


# virtual methods
.method public build()Landroidx/test/internal/runner/RunnerArgs;
    .locals 2

    .line 670
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/runner/RunnerArgs;-><init>(Landroidx/test/internal/runner/RunnerArgs$Builder;Landroidx/test/internal/runner/RunnerArgs$1;)V

    return-object v0
.end method

.method public fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "bundle"
        }
    .end annotation

    const-string v0, "debug"

    .line 250
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->debug:Z

    const-string v0, "delay_msec"

    .line 252
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->delayInMillis:I

    .line 254
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    const-string v1, "class"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    const-string v1, "notClass"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    const-string v1, "notPackage"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "testFile"

    .line 260
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseFromFile(Landroid/app/Instrumentation;Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    move-result-object v0

    .line 261
    iget-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3400(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3500(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "notTestFile"

    .line 263
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseFromFile(Landroid/app/Instrumentation;Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    move-result-object p1

    .line 264
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3400(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3500(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listeners:Ljava/util/List;

    const-string v0, "listener"

    .line 268
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/junit/runner/notification/RunListener;

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, v0, v1, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->filters:Ljava/util/List;

    const-string v0, "filter"

    .line 270
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/junit/runner/manipulation/Filter;

    invoke-direct {p0, v0, v1, p2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->runnerBuilderClasses:Ljava/util/List;

    const-string v0, "runnerBuilder"

    .line 272
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/junit/runners/model/RunnerBuilder;

    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseAndLoadClasses(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "size"

    .line 273
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testSize:Ljava/lang/String;

    .line 274
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->annotations:Ljava/util/List;

    const-string v0, "annotation"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseStrings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notAnnotations:Ljava/util/List;

    const-string v0, "notAnnotation"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseStrings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "timeout_msec"

    .line 276
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testTimeout:J

    const-string p1, "numShards"

    .line 277
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->numShards:I

    const-string p1, "shardIndex"

    .line 278
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shardIndex:I

    const-string p1, "log"

    .line 279
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->logOnly:Z

    const-string p1, "disableAnalytics"

    .line 280
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->disableAnalytics:Z

    .line 281
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->appListeners:Ljava/util/List;

    const-string v0, "appListener"

    .line 283
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 282
    invoke-direct {p0, v0, v1, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "coverage"

    .line 284
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoverage:Z

    const-string p1, "coverageFile"

    .line 285
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoveragePath:Ljava/lang/String;

    const-string p1, "suiteAssignment"

    .line 286
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->suiteAssignment:Z

    const-string p1, "classLoader"

    .line 288
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classLoader:Ljava/lang/ClassLoader;

    const-string p1, "classpathToScan"

    .line 289
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseClasspath(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classpathToScan:Ljava/util/Set;

    const-string p1, "remoteMethod"

    .line 290
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    :cond_0
    const-string p1, "orchestratorService"

    .line 293
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->orchestratorService:Ljava/lang/String;

    const-string p1, "listTestsForOrchestrator"

    .line 295
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listTestsForOrchestrator:Z

    const-string p1, "testDiscoveryService"

    .line 296
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testDiscoveryService:Ljava/lang/String;

    const-string p1, "testRunEventsService"

    .line 297
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testRunEventsService:Ljava/lang/String;

    const-string p1, "useTestStorageService"

    .line 299
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->useTestStorageService:Z

    const-string p1, "targetProcess"

    .line 300
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->targetProcess:Ljava/lang/String;

    .line 301
    iget-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->screenCaptureProcessors:Ljava/util/List;

    const-string v0, "screenCaptureProcessors"

    .line 303
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 302
    invoke-direct {p0, v0, v1, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "shellExecBinderKey"

    .line 306
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shellExecBinderKey:Ljava/lang/String;

    const-string p1, "newRunListenerMode"

    .line 307
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->newRunListenerMode:Z

    const-string p1, "tests_regex"

    .line 308
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testsRegEx:Ljava/lang/String;

    const-string p1, "temporary_testPlatformMigration"

    .line 309
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPlatformMigration:Z

    return-object p0
.end method

.method public fromManifest(Landroid/app/Instrumentation;)Landroidx/test/internal/runner/RunnerArgs$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 318
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 319
    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object p0

    .line 325
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Could not find component %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RunnerArgs"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
