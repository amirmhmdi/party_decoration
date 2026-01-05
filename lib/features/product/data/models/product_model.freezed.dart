// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

 String get id; String get name; String get description; List<String> get images; double get price; double get discount; double get rate; ReviewModel get review; List<String> get packageInclutionList; List<FaqModel> get faqList; List<String> get deliveryDetails; List<String> get careInfoList; EnumProductTag get productTag; DateTime? get cacheTime;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other.packageInclutionList, packageInclutionList)&&const DeepCollectionEquality().equals(other.faqList, faqList)&&const DeepCollectionEquality().equals(other.deliveryDetails, deliveryDetails)&&const DeepCollectionEquality().equals(other.careInfoList, careInfoList)&&(identical(other.productTag, productTag) || other.productTag == productTag)&&(identical(other.cacheTime, cacheTime) || other.cacheTime == cacheTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(images),price,discount,rate,review,const DeepCollectionEquality().hash(packageInclutionList),const DeepCollectionEquality().hash(faqList),const DeepCollectionEquality().hash(deliveryDetails),const DeepCollectionEquality().hash(careInfoList),productTag,cacheTime);

@override
String toString() {
  return 'ProductModel(id: $id, name: $name, description: $description, images: $images, price: $price, discount: $discount, rate: $rate, review: $review, packageInclutionList: $packageInclutionList, faqList: $faqList, deliveryDetails: $deliveryDetails, careInfoList: $careInfoList, productTag: $productTag, cacheTime: $cacheTime)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, List<String> images, double price, double discount, double rate, ReviewModel review, List<String> packageInclutionList, List<FaqModel> faqList, List<String> deliveryDetails, List<String> careInfoList, EnumProductTag productTag, DateTime? cacheTime
});


$ReviewModelCopyWith<$Res> get review;

}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? images = null,Object? price = null,Object? discount = null,Object? rate = null,Object? review = null,Object? packageInclutionList = null,Object? faqList = null,Object? deliveryDetails = null,Object? careInfoList = null,Object? productTag = null,Object? cacheTime = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewModel,packageInclutionList: null == packageInclutionList ? _self.packageInclutionList : packageInclutionList // ignore: cast_nullable_to_non_nullable
as List<String>,faqList: null == faqList ? _self.faqList : faqList // ignore: cast_nullable_to_non_nullable
as List<FaqModel>,deliveryDetails: null == deliveryDetails ? _self.deliveryDetails : deliveryDetails // ignore: cast_nullable_to_non_nullable
as List<String>,careInfoList: null == careInfoList ? _self.careInfoList : careInfoList // ignore: cast_nullable_to_non_nullable
as List<String>,productTag: null == productTag ? _self.productTag : productTag // ignore: cast_nullable_to_non_nullable
as EnumProductTag,cacheTime: freezed == cacheTime ? _self.cacheTime : cacheTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<$Res> get review {
  
  return $ReviewModelCopyWith<$Res>(_self.review, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<String> images,  double price,  double discount,  double rate,  ReviewModel review,  List<String> packageInclutionList,  List<FaqModel> faqList,  List<String> deliveryDetails,  List<String> careInfoList,  EnumProductTag productTag,  DateTime? cacheTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.images,_that.price,_that.discount,_that.rate,_that.review,_that.packageInclutionList,_that.faqList,_that.deliveryDetails,_that.careInfoList,_that.productTag,_that.cacheTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<String> images,  double price,  double discount,  double rate,  ReviewModel review,  List<String> packageInclutionList,  List<FaqModel> faqList,  List<String> deliveryDetails,  List<String> careInfoList,  EnumProductTag productTag,  DateTime? cacheTime)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.name,_that.description,_that.images,_that.price,_that.discount,_that.rate,_that.review,_that.packageInclutionList,_that.faqList,_that.deliveryDetails,_that.careInfoList,_that.productTag,_that.cacheTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  List<String> images,  double price,  double discount,  double rate,  ReviewModel review,  List<String> packageInclutionList,  List<FaqModel> faqList,  List<String> deliveryDetails,  List<String> careInfoList,  EnumProductTag productTag,  DateTime? cacheTime)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.images,_that.price,_that.discount,_that.rate,_that.review,_that.packageInclutionList,_that.faqList,_that.deliveryDetails,_that.careInfoList,_that.productTag,_that.cacheTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel extends ProductModel {
  const _ProductModel({required this.id, required this.name, required this.description, required final  List<String> images, required this.price, required this.discount, required this.rate, required this.review, required final  List<String> packageInclutionList, required final  List<FaqModel> faqList, required final  List<String> deliveryDetails, required final  List<String> careInfoList, required this.productTag, this.cacheTime}): _images = images,_packageInclutionList = packageInclutionList,_faqList = faqList,_deliveryDetails = deliveryDetails,_careInfoList = careInfoList,super._();
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  double price;
@override final  double discount;
@override final  double rate;
@override final  ReviewModel review;
 final  List<String> _packageInclutionList;
@override List<String> get packageInclutionList {
  if (_packageInclutionList is EqualUnmodifiableListView) return _packageInclutionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packageInclutionList);
}

 final  List<FaqModel> _faqList;
@override List<FaqModel> get faqList {
  if (_faqList is EqualUnmodifiableListView) return _faqList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_faqList);
}

 final  List<String> _deliveryDetails;
@override List<String> get deliveryDetails {
  if (_deliveryDetails is EqualUnmodifiableListView) return _deliveryDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryDetails);
}

 final  List<String> _careInfoList;
@override List<String> get careInfoList {
  if (_careInfoList is EqualUnmodifiableListView) return _careInfoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_careInfoList);
}

@override final  EnumProductTag productTag;
@override final  DateTime? cacheTime;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.review, review) || other.review == review)&&const DeepCollectionEquality().equals(other._packageInclutionList, _packageInclutionList)&&const DeepCollectionEquality().equals(other._faqList, _faqList)&&const DeepCollectionEquality().equals(other._deliveryDetails, _deliveryDetails)&&const DeepCollectionEquality().equals(other._careInfoList, _careInfoList)&&(identical(other.productTag, productTag) || other.productTag == productTag)&&(identical(other.cacheTime, cacheTime) || other.cacheTime == cacheTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_images),price,discount,rate,review,const DeepCollectionEquality().hash(_packageInclutionList),const DeepCollectionEquality().hash(_faqList),const DeepCollectionEquality().hash(_deliveryDetails),const DeepCollectionEquality().hash(_careInfoList),productTag,cacheTime);

@override
String toString() {
  return 'ProductModel(id: $id, name: $name, description: $description, images: $images, price: $price, discount: $discount, rate: $rate, review: $review, packageInclutionList: $packageInclutionList, faqList: $faqList, deliveryDetails: $deliveryDetails, careInfoList: $careInfoList, productTag: $productTag, cacheTime: $cacheTime)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, List<String> images, double price, double discount, double rate, ReviewModel review, List<String> packageInclutionList, List<FaqModel> faqList, List<String> deliveryDetails, List<String> careInfoList, EnumProductTag productTag, DateTime? cacheTime
});


@override $ReviewModelCopyWith<$Res> get review;

}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? images = null,Object? price = null,Object? discount = null,Object? rate = null,Object? review = null,Object? packageInclutionList = null,Object? faqList = null,Object? deliveryDetails = null,Object? careInfoList = null,Object? productTag = null,Object? cacheTime = freezed,}) {
  return _then(_ProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewModel,packageInclutionList: null == packageInclutionList ? _self._packageInclutionList : packageInclutionList // ignore: cast_nullable_to_non_nullable
as List<String>,faqList: null == faqList ? _self._faqList : faqList // ignore: cast_nullable_to_non_nullable
as List<FaqModel>,deliveryDetails: null == deliveryDetails ? _self._deliveryDetails : deliveryDetails // ignore: cast_nullable_to_non_nullable
as List<String>,careInfoList: null == careInfoList ? _self._careInfoList : careInfoList // ignore: cast_nullable_to_non_nullable
as List<String>,productTag: null == productTag ? _self.productTag : productTag // ignore: cast_nullable_to_non_nullable
as EnumProductTag,cacheTime: freezed == cacheTime ? _self.cacheTime : cacheTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<$Res> get review {
  
  return $ReviewModelCopyWith<$Res>(_self.review, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}

// dart format on
