.class public final Landroidx/test/orchestrator/junit/BundleJUnitUtils;
.super Ljava/lang/Object;
.source "BundleJUnitUtils.java"


# static fields
.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_FAILURE:Ljava/lang/String; = "failure"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleFromDescription(Lorg/junit/runner/Description;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Lorg/junit/runner/Description;)V

    const-string p0, "description"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getBundleFromFailure(Lorg/junit/runner/notification/Failure;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableFailure;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Lorg/junit/runner/notification/Failure;)V

    const-string p0, "failure"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getBundleFromResult(Lorg/junit/runner/Result;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableResult;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableResult;-><init>(Lorg/junit/runner/Result;)V

    const-string p0, "result"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getBundleFromThrowable(Lorg/junit/runner/Description;Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "throwable"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableFailure;

    new-instance v2, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-direct {v2, p0}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Lorg/junit/runner/Description;)V

    invoke-direct {v1, v2, p1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/Throwable;)V

    const-string p0, "failure"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-string v0, "description"

    .line 68
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    return-object p0
.end method

.method public static getFailure(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableFailure;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-string v0, "failure"

    .line 72
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/test/orchestrator/junit/ParcelableFailure;

    return-object p0
.end method

.method public static getResult(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-string v0, "result"

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/test/orchestrator/junit/ParcelableResult;

    return-object p0
.end method
