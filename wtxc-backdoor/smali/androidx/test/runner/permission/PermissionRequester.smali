.class public Landroidx/test/runner/permission/PermissionRequester;
.super Ljava/lang/Object;
.source "PermissionRequester.java"

# interfaces
.implements Landroidx/test/internal/platform/content/PermissionGranter;


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionRequester"


# instance fields
.field private androidRuntimeVersion:I

.field final requestedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/test/runner/permission/RequestPermissionCallable;",
            ">;"
        }
    .end annotation
.end field

.field private final targetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/runner/permission/PermissionRequester;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetContext"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Landroidx/test/runner/permission/PermissionRequester;->androidRuntimeVersion:I

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/permission/PermissionRequester;->requestedPermissions:Ljava/util/HashSet;

    const-string v0, "targetContext cannot be null!"

    .line 72
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/test/runner/permission/PermissionRequester;->targetContext:Landroid/content/Context;

    return-void
.end method

.method private deviceSupportsRuntimePermissions()Z
    .locals 3

    .line 129
    invoke-direct {p0}, Landroidx/test/runner/permission/PermissionRequester;->getAndroidRuntimeVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "PermissionRequester"

    const-string v2, "Permissions can only be granted on devices running Android M (API 23) orhigher. This rule is ignored."

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private getAndroidRuntimeVersion()I
    .locals 1

    .line 141
    iget v0, p0, Landroidx/test/runner/permission/PermissionRequester;->androidRuntimeVersion:I

    return v0
.end method


# virtual methods
.method public varargs addPermissions([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    const-string v0, "permissions cannot be null!"

    .line 85
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Landroidx/test/runner/permission/PermissionRequester;->deviceSupportsRuntimePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "Permission String is empty or null!"

    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 89
    new-instance v3, Landroidx/test/runner/permission/GrantPermissionCallable;

    new-instance v4, Landroidx/test/runner/permission/UiAutomationShellCommand;

    iget-object v5, p0, Landroidx/test/runner/permission/PermissionRequester;->targetContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->GRANT_PERMISSION:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    invoke-direct {v4, v5, v2, v6}, Landroidx/test/runner/permission/UiAutomationShellCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;)V

    iget-object v5, p0, Landroidx/test/runner/permission/PermissionRequester;->targetContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2}, Landroidx/test/runner/permission/GrantPermissionCallable;-><init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Landroidx/test/runner/permission/PermissionRequester;->requestedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroidx/test/internal/util/Checks;->checkState(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestPermissions()V
    .locals 4

    const-string v0, "Failed to grant permissions, see logcat for details"

    .line 107
    invoke-direct {p0}, Landroidx/test/runner/permission/PermissionRequester;->deviceSupportsRuntimePermissions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Landroidx/test/runner/permission/PermissionRequester;->requestedPermissions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/permission/RequestPermissionCallable;

    .line 110
    :try_start_0
    sget-object v3, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->FAILURE:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    invoke-virtual {v2}, Landroidx/test/runner/permission/RequestPermissionCallable;->call()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_0

    .line 111
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "PermissionRequester"

    const-string v3, "An Exception was thrown while granting permission"

    .line 115
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setAndroidRuntimeVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkInt"
        }
    .end annotation

    .line 125
    iput p1, p0, Landroidx/test/runner/permission/PermissionRequester;->androidRuntimeVersion:I

    return-void
.end method
