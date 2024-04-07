.class Lcom/qinyue/vmain/activity/LoginActivity$4$2;
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

    .line 191
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$4$2;->this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4$2;->this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;

    iget-object v0, v0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0}, Lcom/qinyue/vmain/activity/LoginActivity;->access$300(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginActivity$4$2;->this$1:Lcom/qinyue/vmain/activity/LoginActivity$4;

    iget-object v0, v0, Lcom/qinyue/vmain/activity/LoginActivity$4;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {v0}, Lcom/qinyue/vmain/activity/LoginActivity;->access$400(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    const-string v1, "\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
