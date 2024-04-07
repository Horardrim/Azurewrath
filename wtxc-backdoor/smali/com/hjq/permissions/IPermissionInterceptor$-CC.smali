.class public final synthetic Lcom/hjq/permissions/IPermissionInterceptor$-CC;
.super Ljava/lang/Object;
.source "IPermissionInterceptor.java"


# direct methods
.method public static $default$deniedPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0
    .param p0, "_this"    # Lcom/hjq/permissions/IPermissionInterceptor;

    if-nez p5, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-interface {p5, p3, p4}, Lcom/hjq/permissions/OnPermissionCallback;->onDenied(Ljava/util/List;Z)V

    return-void
.end method

.method public static $default$finishPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0
    .param p0, "_this"    # Lcom/hjq/permissions/IPermissionInterceptor;

    .line 0
    return-void
.end method

.method public static $default$grantedPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0
    .param p0, "_this"    # Lcom/hjq/permissions/IPermissionInterceptor;

    if-nez p5, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-interface {p5, p3, p4}, Lcom/hjq/permissions/OnPermissionCallback;->onGranted(Ljava/util/List;Z)V

    return-void
.end method

.method public static $default$launchPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 1
    .param p0, "_this"    # Lcom/hjq/permissions/IPermissionInterceptor;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0, p0, p3}, Lcom/hjq/permissions/PermissionFragment;->launch(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/IPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method
