.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.super Ljava/lang/Object;
.source "PropertyDescriptor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptorWithAccessors;


# virtual methods
.method public abstract getAccessors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
    .param p1    # Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
