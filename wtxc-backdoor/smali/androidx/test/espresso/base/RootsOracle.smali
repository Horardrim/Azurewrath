.class final Landroidx/test/espresso/base/RootsOracle;
.super Ljava/lang/Object;
.source "RootsOracle.java"

# interfaces
.implements Landroidx/test/espresso/base/ActiveRootLister;


# static fields
.field private static final GET_DEFAULT_IMPL:Ljava/lang/String; = "getDefault"

.field private static final GET_GLOBAL_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final TAG:Ljava/lang/String; = "RootsOracle"

.field private static final VIEWS_FIELD:Ljava/lang/String; = "mViews"

.field private static final WINDOW_MANAGER_GLOBAL_CLAZZ:Ljava/lang/String; = "android.view.WindowManagerGlobal"

.field private static final WINDOW_MANAGER_IMPL_CLAZZ:Ljava/lang/String; = "android.view.WindowManagerImpl"

.field private static final WINDOW_PARAMS_FIELD:Ljava/lang/String; = "mParams"


# instance fields
.field private initialized:Z

.field private final mainLooper:Landroid/os/Looper;

.field private paramsField:Ljava/lang/reflect/Field;

.field private viewsField:Ljava/lang/reflect/Field;

.field private windowManagerObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/RootsOracle;->mainLooper:Landroid/os/Looper;

    return-void
.end method

.method private initialize()V
    .locals 13

    const-string v0, "reflective setup failed using obj: %s method: %s field: %s"

    const-string v1, "mParams"

    const-string v2, "mViews"

    const/4 v3, 0x1

    .line 1
    iput-boolean v3, p0, Landroidx/test/espresso/base/RootsOracle;->initialized:Z

    .line 2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    const-string v4, "android.view.WindowManagerGlobal"

    goto :goto_0

    :cond_0
    const-string v4, "android.view.WindowManagerImpl"

    .line 3
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v5, :cond_1

    const-string v5, "getInstance"

    goto :goto_1

    :cond_1
    const-string v5, "getDefault"

    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 4
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v9, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    .line 7
    invoke-virtual {v9, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    iput-object v10, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    .line 8
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v9, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    .line 10
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 13
    sget-object v9, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v5, v6, v3

    aput-object v2, v6, v7

    .line 14
    invoke-static {v10, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v1

    .line 17
    sget-object v9, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v5, v6, v3

    aput-object v2, v6, v7

    .line 18
    invoke-static {v10, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v0

    .line 20
    sget-object v1, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v8

    aput-object v4, v6, v3

    const-string v3, "could not find method: %s on %s"

    .line 21
    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_3
    move-exception v0

    .line 23
    sget-object v5, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v2, v6, v3

    aput-object v4, v6, v7

    const-string v1, "could not find field: %s or %s on %s"

    .line 24
    invoke-static {v9, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_4
    move-exception v0

    .line 26
    sget-object v1, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v8

    const-string v4, "could not find class: %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_5
    move-exception v0

    .line 28
    sget-object v1, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v8

    aput-object v4, v6, v3

    const-string v3, "could not invoke: %s on %s"

    .line 29
    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public listActiveRoots()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    const-string v0, "Reflective access to %s or %s on %s failed."

    .line 1
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->mainLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "must be called on main thread."

    invoke-static {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Landroidx/test/espresso/base/RootsOracle;->initialized:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/test/espresso/base/RootsOracle;->initialize()V

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 5
    sget-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to windowmanager object."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    .line 8
    sget-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to mViews"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 11
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_3

    .line 12
    iget-object v5, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/View;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 13
    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    iget-object v7, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/WindowManager$LayoutParams;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_3
    iget-object v5, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 15
    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    iget-object v7, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 25
    :goto_0
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 27
    new-instance v3, Landroidx/test/espresso/Root$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/Root$Builder;-><init>()V

    .line 28
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/test/espresso/Root$Builder;->withDecorView(Landroid/view/View;)Landroidx/test/espresso/Root$Builder;

    move-result-object v3

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroidx/test/espresso/Root$Builder;->withWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroidx/test/espresso/Root$Builder;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroidx/test/espresso/Root$Builder;->build()Landroidx/test/espresso/Root;

    move-result-object v3

    .line 27
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v1

    :catch_0
    move-exception v5

    .line 18
    sget-object v6, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    aput-object v8, v4, v3

    iget-object v3, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    aput-object v3, v4, v2

    iget-object v2, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 19
    invoke-static {v7, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v6, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v5

    .line 22
    sget-object v6, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    aput-object v8, v4, v3

    iget-object v3, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    aput-object v3, v4, v2

    iget-object v2, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 23
    invoke-static {v7, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v6, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 32
    :cond_5
    sget-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to mParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
