.class Lcom/qinyue/vcommon/http/OnError$1;
.super Ljava/lang/Object;
.source "OnError.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinyue/vcommon/http/OnError$-CC;->$default$accept(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinyue/vcommon/http/OnError;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/qinyue/vcommon/http/OnError;Ljava/lang/Throwable;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/qinyue/vcommon/http/OnError$1;->this$0:Lcom/qinyue/vcommon/http/OnError;

    iput-object p2, p0, Lcom/qinyue/vcommon/http/OnError$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/qinyue/vcommon/http/OnError$1;->this$0:Lcom/qinyue/vcommon/http/OnError;

    new-instance v1, Lcom/qinyue/vcommon/http/ErrorInfo;

    iget-object v2, p0, Lcom/qinyue/vcommon/http/OnError$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Lcom/qinyue/vcommon/http/ErrorInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/qinyue/vcommon/http/OnError;->onError(Lcom/qinyue/vcommon/http/ErrorInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
