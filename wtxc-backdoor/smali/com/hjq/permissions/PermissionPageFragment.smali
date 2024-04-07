.class public final Lcom/hjq/permissions/PermissionPageFragment;
.super Landroid/app/Fragment;
.source "PermissionPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REQUEST_PERMISSIONS:Ljava/lang/String; = "request_permissions"


# instance fields
.field private mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

.field private mRequestFlag:Z

.field private mStartActivityFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static beginRequest(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionPageCallback;",
            ")V"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/hjq/permissions/PermissionPageFragment;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionPageFragment;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_permissions"

    .line 32
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/PermissionPageFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {v0, p1}, Lcom/hjq/permissions/PermissionPageFragment;->setRetainInstance(Z)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/hjq/permissions/PermissionPageFragment;->setRequestFlag(Z)V

    .line 39
    invoke-virtual {v0, p2}, Lcom/hjq/permissions/PermissionPageFragment;->setCallBack(Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 41
    invoke-virtual {v0, p0}, Lcom/hjq/permissions/PermissionPageFragment;->attachActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public attachActivity(Landroid/app/Activity;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public detachActivity(Landroid/app/Activity;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x401

    if-eq p1, p2, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "request_permissions"

    .line 118
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {p1, p0}, Lcom/hjq/permissions/PermissionUtils;->postActivityResult(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionPageFragment;->mRequestFlag:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionPageFragment;->detachActivity(Landroid/app/Activity;)V

    return-void

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionPageFragment;->mStartActivityFlag:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/hjq/permissions/PermissionPageFragment;->mStartActivityFlag:Z

    .line 98
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "request_permissions"

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x401

    invoke-static {p0, v0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/hjq/permissions/PermissionPageFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

    const/4 v2, 0x0

    .line 141
    iput-object v2, p0, Lcom/hjq/permissions/PermissionPageFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

    if-nez v1, :cond_2

    .line 144
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionPageFragment;->detachActivity(Landroid/app/Activity;)V

    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "request_permissions"

    .line 149
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    invoke-static {v0, v2}, Lcom/hjq/permissions/PermissionApi;->getGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 153
    invoke-interface {v1}, Lcom/hjq/permissions/OnPermissionPageCallback;->onGranted()V

    goto :goto_0

    .line 155
    :cond_3
    invoke-interface {v1}, Lcom/hjq/permissions/OnPermissionPageCallback;->onDenied()V

    .line 158
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionPageFragment;->detachActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public setCallBack(Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/hjq/permissions/PermissionPageFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

    return-void
.end method

.method public setRequestFlag(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/hjq/permissions/PermissionPageFragment;->mRequestFlag:Z

    return-void
.end method
