.class public abstract Landroidx/test/runner/permission/RequestPermissionCallable;
.super Ljava/lang/Object;
.source "RequestPermissionCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/permission/RequestPermissionCallable$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/test/runner/permission/RequestPermissionCallable$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final permission:Ljava/lang/String;

.field private final shellCommand:Landroidx/test/runner/permission/ShellCommand;

.field private final targetContext:Landroid/content/Context;

.field private final targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shellCommand",
            "targetContext",
            "permission"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "shellCommand cannot be null!"

    .line 52
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/runner/permission/ShellCommand;

    iput-object p1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->shellCommand:Landroidx/test/runner/permission/ShellCommand;

    const-string p1, "targetContext cannot be null!"

    .line 53
    invoke-static {p2, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "targetPackage cannot be empty or null!"

    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 56
    iput-object p1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    check-cast p1, Landroidx/test/runner/permission/RequestPermissionCallable;

    .line 82
    iget-object v2, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    iget-object v3, p1, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    iget-object p1, p1, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    .line 83
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method protected getPermission()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    return-object v0
.end method

.method protected getShellCommand()Landroidx/test/runner/permission/ShellCommand;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->shellCommand:Landroidx/test/runner/permission/ShellCommand;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected isPermissionGranted()Z
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
