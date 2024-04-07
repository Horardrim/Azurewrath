.class public Landroidx/test/internal/events/client/TestEventServiceConnectionBase;
.super Ljava/lang/Object;
.source "TestEventServiceConnectionBase.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestEventServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/internal/events/client/TestEventServiceConnection;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionBase"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final listener:Landroidx/test/internal/events/client/TestEventClientConnectListener;

.field public service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final serviceFromBinder:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final serviceName:Ljava/lang/String;

.field private final servicePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;Landroidx/test/internal/events/client/TestEventClientConnectListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serviceName",
            "serviceFromBinder",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder<",
            "TT;>;",
            "Landroidx/test/internal/events/client/TestEventClientConnectListener;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->service:Landroid/os/IInterface;

    .line 53
    new-instance v0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;

    invoke-direct {v0, p0}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$1;-><init>(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)V

    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->connection:Landroid/content/ServiceConnection;

    .line 77
    invoke-static {p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->getServiceNameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serviceName cannot be null"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->serviceName:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->getServicePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "servicePackageName cannot be null"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->servicePackageName:Ljava/lang/String;

    const-string p1, "listener cannot be null"

    .line 80
    invoke-static {p3, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/internal/events/client/TestEventClientConnectListener;

    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->listener:Landroidx/test/internal/events/client/TestEventClientConnectListener;

    const-string p1, "serviceFromBinder cannot be null"

    .line 82
    invoke-static {p2, p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->serviceFromBinder:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->serviceFromBinder:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/internal/events/client/TestEventServiceConnectionBase;)Landroidx/test/internal/events/client/TestEventClientConnectListener;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->listener:Landroidx/test/internal/events/client/TestEventClientConnectListener;

    return-object p0
.end method

.method static getServiceNameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceName"
        }
    .end annotation

    const-string v0, "/"

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 105
    aget-object p0, v0, v3

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    aget-object p0, v0, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    aget-object p0, v0, v3

    :goto_0
    return-object p0

    .line 106
    :cond_2
    array-length v1, v0

    if-ne v1, v3, :cond_3

    .line 107
    aget-object p0, v0, v2

    return-object p0

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid serviceName ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getServicePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceName"
        }
    .end annotation

    const-string v0, "/"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 117
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->serviceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->servicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot connect to "

    iget-object v1, p0, Landroidx/test/internal/events/client/TestEventServiceConnectionBase;->serviceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
