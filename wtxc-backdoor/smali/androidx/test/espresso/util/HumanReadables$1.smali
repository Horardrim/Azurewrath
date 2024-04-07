.class Landroidx/test/espresso/util/HumanReadables$1;
.super Ljava/lang/Object;
.source "HumanReadables.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/util/HumanReadables;->getViewHierarchyErrorMessage(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
        "Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$problemViewSuffix:Ljava/lang/String;

.field final synthetic val$problemViews:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViews:Ljava/util/List;

    iput-object p2, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViewSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/util/HumanReadables$1;->apply(Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;)Ljava/lang/String;
    .locals 8

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViews:Ljava/util/List;

    const-string v1, "+%s%s "

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViewSuffix:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->getDistanceFromRoot()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x2d

    const-string v7, ">"

    invoke-static {v7, v4, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 7
    invoke-virtual {p1}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 5
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
