.class Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;
.super Ljava/lang/Object;
.source "TestEventServiceConnectionBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/events/client/TestEventServiceConnectionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;


# direct methods
.method constructor <init>(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;->this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "binder"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;->this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;

    invoke-static {p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->access$000(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->service:Landroid/os/IInterface;

    .line 59
    iget-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;->this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;

    invoke-static {p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->access$100(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Connected to "

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string p2, "ConnectionBase"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;->this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;

    invoke-static {p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->access$200(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Landroidx/test/internal/events/client/TestEventClientConnectListener;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/internal/events/client/TestEventClientConnectListener;->onTestEventClientConnect()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;->this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->service:Landroid/os/IInterface;

    .line 68
    iget-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;->this$0:Landroidx/test/internal/events/client/TestEventServiceConnectionBase;

    invoke-static {p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->access$100(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Disconnected from "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "ConnectionBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
