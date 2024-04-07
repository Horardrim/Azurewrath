.class final Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
.super Ljava/lang/Object;
.source "AndroidManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/AndroidManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionInfo"
.end annotation


# static fields
.field private static final REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I = 0x10000


# instance fields
.field public maxSdkVersion:I

.field public name:Ljava/lang/String;

.field public usesPermissionFlags:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public neverForLocation()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->usesPermissionFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
