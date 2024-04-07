.class final enum Lcom/squareup/javawriter/JavaWriter$Scope;
.super Ljava/lang/Enum;
.source "JavaWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javawriter/JavaWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/javawriter/JavaWriter$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 820
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "TYPE_DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 821
    new-instance v1, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v3, "ABSTRACT_METHOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 822
    new-instance v3, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v5, "NON_ABSTRACT_METHOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 823
    new-instance v5, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v7, "CONTROL_FLOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 824
    new-instance v7, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v9, "ANNOTATION_ATTRIBUTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 825
    new-instance v9, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v11, "ANNOTATION_ARRAY_VALUE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 826
    new-instance v11, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v13, "INITIALIZER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 819
    sput-object v13, Lcom/squareup/javawriter/JavaWriter$Scope;->$VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 819
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .line 819
    const-class v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object p0
.end method

.method public static values()[Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .line 819
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->$VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-virtual {v0}, [Lcom/squareup/javawriter/JavaWriter$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method
