.class public final synthetic Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qinyue/vmain/messager/LoginMessager;


# direct methods
.method public synthetic constructor <init>(Lcom/qinyue/vmain/messager/LoginMessager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda2;->f$0:Lcom/qinyue/vmain/messager/LoginMessager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda2;->f$0:Lcom/qinyue/vmain/messager/LoginMessager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->lambda$toLogin$2$com-qinyue-vmain-messager-LoginMessager(Ljava/lang/String;)V

    return-void
.end method
