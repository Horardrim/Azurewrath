.class public Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;
.super Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.source "InstrumentationResultPrinter.java"


# static fields
.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "AndroidJUnitRunner"

.field public static final REPORT_VALUE_RESULT_ASSUMPTION_FAILURE:I = -0x4

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_IGNORED:I = -0x3

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InstrumentationResultPrinter"


# instance fields
.field private description:Lorg/junit/runner/Description;

.field private final resultTemplate:Landroid/os/Bundle;

.field testClass:Ljava/lang/String;

.field testNum:I

.field testResult:Landroid/os/Bundle;

.field testResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    const/16 v0, -0x3e7

    .line 106
    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    .line 108
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    .line 112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    return-void
.end method

.method private reportFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Landroidx/test/services/events/internal/StackTrimmer;->getTrimmedStackTrace(Lorg/junit/runner/notification/Failure;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v2, "stack"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "\nError in %s:\n%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "stream"

    .line 180
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamResult",
            "resultBundle",
            "junitResults"
        }
    .end annotation

    .line 226
    new-instance p2, Lorg/junit/internal/TextListener;

    invoke-direct {p2, p1}, Lorg/junit/internal/TextListener;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {p2, p3}, Lorg/junit/internal/TextListener;->testRunFinished(Lorg/junit/runner/Result;)V

    return-void
.end method

.method public reportProcessCrash(Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const/4 v0, -0x2

    .line 198
    :try_start_0
    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 199
    new-instance v0, Lorg/junit/runner/notification/Failure;

    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    invoke-direct {v0, v1, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 200
    iget-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-virtual {v0}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nProcess crashed while executing %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    .line 206
    invoke-virtual {v5}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 204
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testFinished(Lorg/junit/runner/Description;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    iget-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    const-string v0, "InstrumentationResultPrinter"

    if-nez p1, :cond_0

    const-string p1, "Failed to initialize test before process crash"

    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to mark test "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as finished after process crash"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    const/4 v0, -0x4

    .line 172
    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 173
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object p1

    const-string v1, "stack"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 2
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

    .line 155
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    sget-object v1, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testStarted(Lorg/junit/runner/Description;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x2

    .line 163
    iput v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 164
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->reportFailure(Lorg/junit/runner/notification/Failure;)V

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testFinished(Lorg/junit/runner/Description;)V

    :cond_1
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    iget p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v0, "stream"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->sendStatus(ILandroid/os/Bundle;)V

    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
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

    .line 187
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testStarted(Lorg/junit/runner/Description;)V

    const/4 v0, -0x3

    .line 188
    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 189
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testFinished(Lorg/junit/runner/Description;)V

    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
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

    .line 117
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "AndroidJUnitRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->testCount()I

    move-result p1

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
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

    .line 124
    iput-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    .line 125
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v2, "class"

    .line 128
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v2, "test"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    iget v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    const-string v3, "current"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string v1, "stream"

    if-eqz v0, :cond_0

    .line 132
    iget-object v3, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    iget-object v3, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, p1

    const-string v5, "\n%s:"

    .line 134
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v0}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->sendStatus(ILandroid/os/Bundle;)V

    .line 141
    iput p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    return-void
.end method
