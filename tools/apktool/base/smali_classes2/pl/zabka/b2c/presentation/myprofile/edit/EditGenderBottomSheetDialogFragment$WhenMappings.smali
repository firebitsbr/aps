.class public final synthetic Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lpl/zabka/b2c/domain/profile/Gender;->values()[Lpl/zabka/b2c/domain/profile/Gender;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lpl/zabka/b2c/domain/profile/Gender;->NOT_SPECIFIED:Lpl/zabka/b2c/domain/profile/Gender;

    invoke-virtual {v1}, Lpl/zabka/b2c/domain/profile/Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lpl/zabka/b2c/domain/profile/Gender;->MALE:Lpl/zabka/b2c/domain/profile/Gender;

    invoke-virtual {v1}, Lpl/zabka/b2c/domain/profile/Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lpl/zabka/b2c/presentation/myprofile/edit/EditGenderBottomSheetDialogFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lpl/zabka/b2c/domain/profile/Gender;->FEMALE:Lpl/zabka/b2c/domain/profile/Gender;

    invoke-virtual {v1}, Lpl/zabka/b2c/domain/profile/Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
