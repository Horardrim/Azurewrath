.class Lcom/qinyue/vmain/activity/LoginActivity$4;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vmain/activity/LoginActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinyue/vmain/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/qinyue/vmain/activity/LoginActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$fgetloopNum(Lcom/qinyue/vmain/activity/LoginActivity;)I

    move-result v0

    const/16 v1, 0x5a

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$fgetloopNum(Lcom/qinyue/vmain/activity/LoginActivity;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$fgetloopNum(Lcom/qinyue/vmain/activity/LoginActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$fputloopNum(Lcom/qinyue/vmain/activity/LoginActivity;I)V

    .line 180
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$4$1;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$4$1;-><init>(Lcom/qinyue/vmain/activity/LoginActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "\u4e0d\u517c\u5bb9,\u66f4\u6362\u624b\u673a\u91cd\u8bd5"

    .line 187
    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0, v1}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$fputloopNum(Lcom/qinyue/vmain/activity/LoginActivity;I)V

    .line 189
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    iget-object v0, v0, Lcom/qinyue/vmain/activity/LoginActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 190
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/qinyue/vmain/activity/LoginActivity;->timer:Ljava/util/Timer;

    .line 191
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qinyue/vmain/activity/LoginActivity$4$2;

    invoke-direct {v1, p0}, Lcom/qinyue/vmain/activity/LoginActivity$4$2;-><init>(Lcom/qinyue/vmain/activity/LoginActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
