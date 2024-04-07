.class public final synthetic Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/qinyue/vcommon/http/OnError;


# instance fields
.field public final synthetic f$0:Lcom/qinyue/vmain/messager/LoginMessager;


# direct methods
.method public synthetic constructor <init>(Lcom/qinyue/vmain/messager/LoginMessager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda0;->f$0:Lcom/qinyue/vmain/messager/LoginMessager;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qinyue/vcommon/http/OnError$-CC;->$default$accept(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qinyue/vcommon/http/OnError$-CC;->$default$accept(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Lcom/qinyue/vcommon/http/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/qinyue/vmain/messager/LoginMessager$$ExternalSyntheticLambda0;->f$0:Lcom/qinyue/vmain/messager/LoginMessager;

    invoke-virtual {v0, p1}, Lcom/qinyue/vmain/messager/LoginMessager;->lambda$toLogin$3$com-qinyue-vmain-messager-LoginMessager(Lcom/qinyue/vcommon/http/ErrorInfo;)V

    return-void
.end method
