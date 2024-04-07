.class Lcom/qinyue/vmain/activity/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vmain/activity/LoginActivity;->onOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/qinyue/vmain/event/LoginEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinyue/vmain/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$6;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qinyue/vmain/event/LoginEvent;)V
    .locals 1

    .line 229
    iget p1, p1, Lcom/qinyue/vmain/event/LoginEvent;->eventId:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/navigation/ARouterConfig;->getAppService()Lcom/qinyue/vcommon/navigation/AppService;

    move-result-object p1

    invoke-interface {p1}, Lcom/qinyue/vcommon/navigation/AppService;->toApp()V

    .line 232
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$6;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 226
    check-cast p1, Lcom/qinyue/vmain/event/LoginEvent;

    invoke-virtual {p0, p1}, Lcom/qinyue/vmain/activity/LoginActivity$6;->onChanged(Lcom/qinyue/vmain/event/LoginEvent;)V

    return-void
.end method
