.class public Lcom/kunminx/architecture/ui/scope/ApplicationInstance;
.super Ljava/lang/Object;
.source "ApplicationInstance.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# static fields
.field private static final sInstance:Lcom/kunminx/architecture/ui/scope/ApplicationInstance;


# instance fields
.field private mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;

    invoke-direct {v0}, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;-><init>()V

    sput-object v0, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;->sInstance:Lcom/kunminx/architecture/ui/scope/ApplicationInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kunminx/architecture/ui/scope/ApplicationInstance;
    .locals 1

    .line 18
    sget-object v0, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;->sInstance:Lcom/kunminx/architecture/ui/scope/ApplicationInstance;

    return-object v0
.end method


# virtual methods
.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;->mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;->mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/kunminx/architecture/ui/scope/ApplicationInstance;->mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method
