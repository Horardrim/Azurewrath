.class final enum Lorg/junit/internal/Throwables$State$3;
.super Lorg/junit/internal/Throwables$State;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/Throwables$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lorg/junit/internal/Throwables$State;-><init>(Ljava/lang/String;ILorg/junit/internal/Throwables$1;)V

    return-void
.end method


# virtual methods
.method public processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
    .locals 1

    .line 206
    invoke-static {p1}, Lorg/junit/internal/Throwables;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 208
    :cond_0
    invoke-static {p1}, Lorg/junit/internal/Throwables;->access$100(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    sget-object p1, Lorg/junit/internal/Throwables$State$3;->PROCESSING_TEST_FRAMEWORK_CODE:Lorg/junit/internal/Throwables$State;

    return-object p1

    .line 212
    :cond_1
    sget-object p1, Lorg/junit/internal/Throwables$State$3;->DONE:Lorg/junit/internal/Throwables$State;

    return-object p1
.end method
