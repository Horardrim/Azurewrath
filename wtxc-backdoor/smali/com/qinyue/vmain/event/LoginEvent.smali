.class public Lcom/qinyue/vmain/event/LoginEvent;
.super Lcom/qinyue/vcommon/base/BaseEvent;
.source "LoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinyue/vmain/event/LoginEvent$Result;,
        Lcom/qinyue/vmain/event/LoginEvent$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinyue/vcommon/base/BaseEvent<",
        "Lcom/qinyue/vmain/event/LoginEvent$Param;",
        "Lcom/qinyue/vmain/event/LoginEvent$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOGING:I = 0x1

.field public static final LOGINGSUCCESS:I = 0x2

.field public static final REGISTER:I = 0x3


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseEvent;-><init>()V

    .line 20
    iput p1, p0, Lcom/qinyue/vmain/event/LoginEvent;->eventId:I

    .line 21
    new-instance p1, Lcom/qinyue/vmain/event/LoginEvent$Param;

    invoke-direct {p1}, Lcom/qinyue/vmain/event/LoginEvent$Param;-><init>()V

    iput-object p1, p0, Lcom/qinyue/vmain/event/LoginEvent;->param:Ljava/lang/Object;

    .line 22
    new-instance p1, Lcom/qinyue/vmain/event/LoginEvent$Result;

    invoke-direct {p1}, Lcom/qinyue/vmain/event/LoginEvent$Result;-><init>()V

    iput-object p1, p0, Lcom/qinyue/vmain/event/LoginEvent;->result:Ljava/lang/Object;

    return-void
.end method
