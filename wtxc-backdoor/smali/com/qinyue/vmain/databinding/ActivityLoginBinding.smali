.class public abstract Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityLoginBinding.java"


# instance fields
.field public final but:Landroid/widget/Button;

.field public final nameEdit:Landroid/widget/EditText;

.field public final nameLin:Landroid/widget/LinearLayout;

.field public final pwdEdit:Landroid/widget/EditText;

.field public final pwdLin:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 37
    iput-object p4, p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->but:Landroid/widget/Button;

    .line 38
    iput-object p5, p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameEdit:Landroid/widget/EditText;

    .line 39
    iput-object p6, p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->nameLin:Landroid/widget/LinearLayout;

    .line 40
    iput-object p7, p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->pwdEdit:Landroid/widget/EditText;

    .line 41
    iput-object p8, p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->pwdLin:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    sget v0, Lcom/qinyue/vmain/R$layout;->activity_login:I

    invoke-static {p1, p0, v0}, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
    .locals 1

    .line 47
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    sget v0, Lcom/qinyue/vmain/R$layout;->activity_login:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/qinyue/vmain/databinding/ActivityLoginBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    sget v0, Lcom/qinyue/vmain/R$layout;->activity_login:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/qinyue/vmain/databinding/ActivityLoginBinding;

    return-object p0
.end method
