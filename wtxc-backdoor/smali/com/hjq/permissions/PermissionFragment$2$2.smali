.class Lcom/hjq/permissions/PermissionFragment$2$2;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment$2;->lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hjq/permissions/PermissionFragment$2;

.field final synthetic val$allPermissions:Ljava/util/ArrayList;

.field final synthetic val$requestCode:I

.field final synthetic val$secondPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment$2;Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iput-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    iput p3, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$requestCode:I

    iput-object p4, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$secondPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 328
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object p1, p1, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    move v0, p2

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$secondPermissions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object v0, v0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iget v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$requestCode:I

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 316
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object p1, p1, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 322
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 323
    iget-object v0, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object v0, v0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iget v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$requestCode:I

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/ArrayList;

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    :goto_0
    return-void
.end method
