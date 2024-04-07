.class Landroidx/test/runner/permission/GrantPermissionCallable;
.super Landroidx/test/runner/permission/RequestPermissionCallable;
.source "GrantPermissionCallable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GrantPermissionCallable"


# direct methods
.method constructor <init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shellCommand",
            "context",
            "permission"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/runner/permission/RequestPermissionCallable;-><init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call()Landroidx/test/runner/permission/RequestPermissionCallable$Result;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " cannot be granted!"

    .line 35
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v1

    const-string v2, "Permission: "

    const-string v3, "GrantPermissionCallable"

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already granted!"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->SUCCESS:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getShellCommand()Landroidx/test/runner/permission/ShellCommand;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    .line 41
    :try_start_0
    invoke-virtual {v1}, Landroidx/test/runner/permission/ShellCommand;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getPermission()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->FAILURE:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    .line 52
    :cond_1
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->SUCCESS:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    :catchall_0
    move-exception v1

    .line 43
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 47
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getPermission()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->FAILURE:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    .line 51
    :cond_2
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->call()Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    move-result-object v0

    return-object v0
.end method
