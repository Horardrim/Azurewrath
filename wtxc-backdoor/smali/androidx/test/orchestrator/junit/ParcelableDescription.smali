.class public final Landroidx/test/orchestrator/junit/ParcelableDescription;
.super Ljava/lang/Object;
.source "ParcelableDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/orchestrator/junit/ParcelableDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final className:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableDescription$1;

    invoke-direct {v0}, Landroidx/test/orchestrator/junit/ParcelableDescription$1;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/junit/ParcelableDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableDescription$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classAndMethodName"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    if-lez v0, :cond_1

    .line 38
    aget-object v0, p1, v1

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 39
    array-length v0, p1

    if-le v0, v2, :cond_0

    aget-object v3, p1, v2

    :cond_0
    iput-object v3, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_1
    iput-object v3, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 42
    iput-object v3, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    aput-object v0, p1, v1

    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "%s(%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/junit/runner/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    return-void
.end method

.method private getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 65
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
