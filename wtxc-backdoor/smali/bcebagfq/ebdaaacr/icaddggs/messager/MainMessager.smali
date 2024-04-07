.class public Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;
.super Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;
.source "MainMessager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kunminx/architecture/domain/dispatch/MviDispatcher<",
        "Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/kunminx/architecture/domain/dispatch/MviDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public input(Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;)V
    .locals 4

    .line 18
    iget p1, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->eventId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qinyue/vcommon/manager/MySkinManager;->getSkinName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/qinyue/vcommon/constants/SkinType;->NIGHT:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageNomral()V

    .line 22
    new-instance p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;-><init>(I)V

    .line 23
    iget-object v0, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->result:Ljava/lang/Object;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;

    const-string v1, "\u9ed8\u8ba4\u6a21\u5f0f"

    iput-object v1, v0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;->skinMsg:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p1}, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;->sendResult(Lcom/kunminx/architecture/domain/event/Event;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/qinyue/vcommon/manager/MySkinManager;->getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageNight()V

    .line 27
    new-instance p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;

    const/16 v0, -0x64

    invoke-direct {p1, v0}, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;-><init>(I)V

    .line 28
    iget-object v0, p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->result:Ljava/lang/Object;

    check-cast v0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;

    new-instance v1, Lcom/qinyue/vcommon/http/ErrorInfo;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "\u591c\u95f4\u6a21\u5f0f"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/qinyue/vcommon/http/ErrorInfo;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, v0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;->errorInfo:Lcom/qinyue/vcommon/http/ErrorInfo;

    .line 29
    invoke-virtual {p0, p1}, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;->sendResult(Lcom/kunminx/architecture/domain/event/Event;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic input(Lcom/kunminx/architecture/domain/event/Event;)V
    .locals 0

    .line 15
    check-cast p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;

    invoke-virtual {p0, p1}, Lbcebagfq/ebdaaacr/icaddggs/messager/MainMessager;->input(Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;)V

    return-void
.end method
