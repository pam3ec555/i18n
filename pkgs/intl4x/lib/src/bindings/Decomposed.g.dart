// generated by diplomat-tool

part of 'lib.g.dart';

final class _DecomposedFfi extends ffi.Struct {
  @ffi.Uint32()
  external Rune first;
  @ffi.Uint32()
  external Rune second;
}

/// The outcome of non-recursive canonical decomposition of a character.
/// `second` will be NUL when the decomposition expands to a single character
/// (which may or may not be the original one)
///
/// See the [Rust documentation for `Decomposed`](https://docs.rs/icu/latest/icu/normalizer/properties/enum.Decomposed.html) for more information.
final class Decomposed {
  final Rune first;
  final Rune second;

  // This struct contains borrowed fields, so this takes in a list of
  // "edges" corresponding to where each lifetime's data may have been borrowed from
  // and passes it down to individual fields containing the borrow.
  // This method does not attempt to handle any dependencies between lifetimes, the caller
  // should handle this when constructing edge arrays.
  // ignore: unused_element
  Decomposed._fromFfi(_DecomposedFfi ffi)
    : first = ffi.first,
      second = ffi.second;

  // ignore: unused_element
  _DecomposedFfi _toFfi(ffi.Allocator temp) {
    final struct = ffi.Struct.create<_DecomposedFfi>();
    struct.first = first;
    struct.second = second;
    return struct;
  }

  @override
  bool operator ==(Object other) =>
      other is Decomposed && other.first == first && other.second == second;

  @override
  int get hashCode => Object.hashAll([first, second]);
}
