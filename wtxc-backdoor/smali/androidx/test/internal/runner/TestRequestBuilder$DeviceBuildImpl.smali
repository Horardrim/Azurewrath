.class Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;
.super Ljava/lang/Object;
.source "TestRequestBuilder.java"

# interfaces
.implements Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceBuildImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeName()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 132
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionInt()I
    .locals 1

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
