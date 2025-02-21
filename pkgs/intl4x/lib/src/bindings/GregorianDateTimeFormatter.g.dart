// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X TypedDateTimeFormatter object capable of formatting a [`IsoDateTime`] as a string,
/// using the Gregorian Calendar.
///
/// See the [Rust documentation for `TypedDateTimeFormatter`](https://docs.rs/icu/latest/icu/datetime/struct.TypedDateTimeFormatter.html) for more information.
final class GregorianDateTimeFormatter implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  GregorianDateTimeFormatter._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  @_DiplomatFfiUse('ICU4XGregorianDateTimeFormatter_destroy')
  static final _finalizer = ffi.NativeFinalizer(
    ffi.Native.addressOf(_ICU4XGregorianDateTimeFormatter_destroy),
  );

  /// Creates a new [`GregorianDateFormatter`] from locale data.
  ///
  /// See the [Rust documentation for `try_new`](https://docs.rs/icu/latest/icu/datetime/struct.TypedDateTimeFormatter.html#method.try_new) for more information.
  ///
  /// Throws [Error] on failure.
  factory GregorianDateTimeFormatter.withLengths(
    DataProvider provider,
    Locale locale,
    DateLength dateLength,
    TimeLength timeLength,
  ) {
    final result = _ICU4XGregorianDateTimeFormatter_create_with_lengths(
      provider._ffi,
      locale._ffi,
      dateLength.index,
      timeLength.index,
    );
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return GregorianDateTimeFormatter._fromFfi(result.union.ok, []);
  }

  /// Formats a [`IsoDateTime`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.TypedDateTimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatIsoDatetime(IsoDateTime value) {
    final writeable = _Writeable();
    final result = _ICU4XGregorianDateTimeFormatter_format_iso_datetime(
      _ffi,
      value._ffi,
      writeable._ffi,
    );
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return writeable.finalize();
  }
}

@_DiplomatFfiUse('ICU4XGregorianDateTimeFormatter_destroy')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
  isLeaf: true,
  symbol: 'ICU4XGregorianDateTimeFormatter_destroy',
)
// ignore: non_constant_identifier_names
external void _ICU4XGregorianDateTimeFormatter_destroy(
  ffi.Pointer<ffi.Void> self,
);

@_DiplomatFfiUse('ICU4XGregorianDateTimeFormatter_create_with_lengths')
@ffi.Native<
  _ResultOpaqueInt32 Function(
    ffi.Pointer<ffi.Opaque>,
    ffi.Pointer<ffi.Opaque>,
    ffi.Int32,
    ffi.Int32,
  )
>(isLeaf: true, symbol: 'ICU4XGregorianDateTimeFormatter_create_with_lengths')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32
_ICU4XGregorianDateTimeFormatter_create_with_lengths(
  ffi.Pointer<ffi.Opaque> provider,
  ffi.Pointer<ffi.Opaque> locale,
  int dateLength,
  int timeLength,
);

@_DiplomatFfiUse('ICU4XGregorianDateTimeFormatter_format_iso_datetime')
@ffi.Native<
  _ResultVoidInt32 Function(
    ffi.Pointer<ffi.Opaque>,
    ffi.Pointer<ffi.Opaque>,
    ffi.Pointer<ffi.Opaque>,
  )
>(isLeaf: true, symbol: 'ICU4XGregorianDateTimeFormatter_format_iso_datetime')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XGregorianDateTimeFormatter_format_iso_datetime(
  ffi.Pointer<ffi.Opaque> self,
  ffi.Pointer<ffi.Opaque> value,
  ffi.Pointer<ffi.Opaque> writeable,
);
