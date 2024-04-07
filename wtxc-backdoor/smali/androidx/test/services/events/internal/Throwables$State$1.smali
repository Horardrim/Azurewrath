.class final enum Landroidx/test/services/events/internal/Throwables$State$1;
.super Landroidx/test/services/events/internal/Throwables$State;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/internal/Throwables$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/services/events/internal/Throwables$State;-><init>(Ljava/lang/String;ILandroidx/test/services/events/internal/Throwables$1;)V

    return-void
.end method


# virtual methods
.method public processLine(Ljava/lang/String;)Landroidx/test/services/events/internal/Throwables$State;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Landroidx/test/services/events/internal/Throwables;->access$100(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    sget-object p1, Landroidx/test/services/events/internal/Throwables$State$1;->PROCESSING_TEST_FRAMEWORK_CODE:Landroidx/test/services/events/internal/Throwables$State;

    return-object p1

    :cond_0
    return-object p0
.end method
