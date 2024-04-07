.class public Lcom/qinyue/vmain/event/LoginEvent$Param;
.super Lcom/qinyue/vcommon/base/BaseParms;
.source "LoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vmain/event/LoginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseParms;-><init>()V

    return-void
.end method
