.class Lcom/qinyue/vmain/activity/LoginActivity$4$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vmain/activity/LoginActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/qinyue/vmain/activity/LoginActivity$4;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$4$1;->this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4$1;->this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;

    iget-object v0, v0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0}, Lcom/qinyue/vmain/activity/LoginActivity;->access$200(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c\u4e2d... \u5012\u8ba1\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qinyue/vmain/activity/LoginActivity$4$1;->this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;

    iget-object v2, v2, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v2}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$fgetloopNum(Lcom/qinyue/vmain/activity/LoginActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
