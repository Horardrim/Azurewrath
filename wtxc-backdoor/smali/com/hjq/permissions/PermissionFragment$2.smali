.class Lcom/hjq/permissions/PermissionFragment$2;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/permissions/PermissionFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$allPermissions:Ljava/util/ArrayList;

.field final synthetic val$requestCode:I

.field final synthetic val$secondPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iput-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$secondPermissions:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/ArrayList;

    iput p5, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2

    .line 311
    new-instance v0, Lcom/hjq/permissions/PermissionFragment$2$1;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/PermissionFragment$2$1;-><init>(Lcom/hjq/permissions/PermissionFragment$2;)V

    new-instance v1, Lcom/hjq/permissions/PermissionFragment$2$2;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/hjq/permissions/PermissionFragment$2$2;-><init>(Lcom/hjq/permissions/PermissionFragment$2;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-static {p1, p2, v0, v1}, Lcom/hjq/permissions/PermissionFragment;->launch(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/IPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public onDenied(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 346
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, -0x1

    .line 352
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 353
    iget-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iget v0, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$requestCode:I

    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 303
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x96

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 311
    :goto_0
    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$secondPermissions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/ArrayList;

    iget v5, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$requestCode:I

    new-instance v6, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/hjq/permissions/PermissionFragment$2;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-static {v6, p1, p2}, Lcom/hjq/permissions/PermissionUtils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method
