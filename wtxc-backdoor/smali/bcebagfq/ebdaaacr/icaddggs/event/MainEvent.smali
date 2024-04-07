.class public Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;
.super Lcom/qinyue/vcommon/base/BaseEvent;
.source "MainEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;,
        Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinyue/vcommon/base/BaseEvent<",
        "Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Param;",
        "Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHAGESKIN:I = 0x1

.field public static final CHAGESKINFINISH:I = 0x2


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/qinyue/vcommon/base/BaseEvent;-><init>()V

    .line 21
    iput p1, p0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->eventId:I

    .line 22
    new-instance p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Param;

    invoke-direct {p1}, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Param;-><init>()V

    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->param:Ljava/lang/Object;

    .line 23
    new-instance p1, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;

    invoke-direct {p1}, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent$Result;-><init>()V

    iput-object p1, p0, Lbcebagfq/ebdaaacr/icaddggs/event/MainEvent;->result:Ljava/lang/Object;

    return-void
.end method
