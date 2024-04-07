.class Lbcebagfq/ebdaaacr/icaddggs/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcebagfq/ebdaaacr/icaddggs/MainActivity;->onOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbcebagfq/ebdaaacr/icaddggs/MainActivity;


# direct methods
.method constructor <init>(Lbcebagfq/ebdaaacr/icaddggs/MainActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$2;->this$0:Lbcebagfq/ebdaaacr/icaddggs/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;)V
    .locals 2

    .line 56
    iget v0, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->eventId:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->result:Ljava/lang/Object;

    check-cast p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;

    iget-object p1, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;->skinMsg:Ljava/lang/String;

    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->result:Ljava/lang/Object;

    check-cast p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;

    iget-object p1, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    invoke-virtual {p1}, Lcom/qinyue/vcommon/http/ErrorInfo;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ToastUtils;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;

    invoke-virtual {p0, p1}, Lbcebagfq/ebdaaacr/icaddggs/MainActivity$2;->onChanged(Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;)V

    return-void
.end method
