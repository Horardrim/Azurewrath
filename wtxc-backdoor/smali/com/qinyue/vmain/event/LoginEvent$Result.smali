.class public Lcom/qinyue/vmain/event/LoginEvent$Result;
.super Lcom/qinyue/vcommon/base/BaseResult;
.source "LoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vmain/event/LoginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public userBean:Lcom/qinyue/vcommon/base/BaseUserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseResult;-><init>()V

    return-void
.end method
