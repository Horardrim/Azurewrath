.class final Lcom/hjq/permissions/XXPermissions$1;
.super Ljava/lang/Object;
.source "XXPermissions.java"

# interfaces
.implements Lcom/hjq/permissions/IPermissionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/XXPermissions;->getInterceptor()Lcom/hjq/permissions/IPermissionInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic deniedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/IPermissionInterceptor$-CC;->$default$deniedPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hjq/permissions/IPermissionInterceptor$-CC;->$default$finishPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/IPermissionInterceptor$-CC;->$default$grantedPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic launchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hjq/permissions/IPermissionInterceptor$-CC;->$default$launchPermissionRequest(Lcom/hjq/permissions/IPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method
