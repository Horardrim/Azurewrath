.class Lcom/qinyue/vmain/activity/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vmain/activity/LoginActivity;->onInitView()V
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

    .line 149
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$3;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 162
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$3;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->access$000(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/qinyue/vmain/activity/LoginActivity$3;->this$0:Lcom/qinyue/vmain/activity/LoginActivity;

    invoke-static {p1}, Lcom/qinyue/vmain/activity/LoginActivity;->access$100(Lcom/qinyue/vmain/activity/LoginActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
