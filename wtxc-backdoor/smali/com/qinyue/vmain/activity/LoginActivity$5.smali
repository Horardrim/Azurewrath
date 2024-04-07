.class Lcom/qinyue/vmain/activity/LoginActivity$5;
.super Lcom/qinyue/vcommon/listener/OnMultiClickListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vmain/activity/LoginActivity;->onInput()V
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

    .line 205
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-direct {p0}, Lcom/qinyue/vcommon/listener/OnMultiClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiClick(Landroid/view/View;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->access$500(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    .line 209
    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->access$600(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->pwdEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    iget-object p1, p1, Lcom/qinyue/vmain/activity/LoginActivity;->timer:Ljava/util/Timer;

    if-nez p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p1, Lcom/qinyue/vmain/activity/LoginActivity;->timer:Ljava/util/Timer;

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$mstartTimer(Lcom/qinyue/vmain/activity/LoginActivity;)V

    .line 217
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->access$700(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$5;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->-$$Nest$mtoLogin(Lcom/qinyue/vmain/activity/LoginActivity;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801/\u9080\u8bf7\u7801"

    .line 210
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    return-void
.end method
