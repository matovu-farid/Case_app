// Mocks generated by Mockito 5.0.14 from annotations
// in case_app/test/bloc/quotation/quotation_bloc_test.dart.
// Do not manually edit this file.

import 'package:case_app/bloc/form_bloc/form_bloc.dart' as _i6;
import 'package:case_app/classes/quotation_info.dart' as _i3;
import 'package:case_app/core/failure.dart' as _i5;
import 'package:case_app/data_handlers/savers/quotation_saver.dart' as _i7;
import 'package:case_app/data_handlers/submitters/quotation_submitter.dart'
    as _i4;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeQuotationInfo_1 extends _i1.Fake implements _i3.QuotationInfo {}

/// A class which mocks [QuotationSubmitter].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuotationSubmitter extends _i1.Mock
    implements _i4.QuotationSubmitter {
  MockQuotationSubmitter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Either<_i5.Failure, void> submit(_i3.QuotationInfo? info) =>
      (super.noSuchMethod(Invocation.method(#submit, [info]),
              returnValue: _FakeEither_0<_i5.Failure, void>())
          as _i2.Either<_i5.Failure, void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [InputFormEvent].
///
/// See the documentation for Mockito's code generation for more information.
class MockInputFormEvent extends _i1.Mock implements _i6.InputFormEvent {
  MockInputFormEvent() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<Object?> get props =>
      (super.noSuchMethod(Invocation.getter(#props), returnValue: <Object?>[])
          as List<Object?>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [QuotationSaver].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuotationSaver extends _i1.Mock implements _i7.QuotationSaver {
  MockQuotationSaver() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void saveData(_i6.InputFormEvent? event) =>
      super.noSuchMethod(Invocation.method(#saveData, [event]),
          returnValueForMissingStub: null);
  @override
  _i3.QuotationInfo fetchInfo() =>
      (super.noSuchMethod(Invocation.method(#fetchInfo, []),
          returnValue: _FakeQuotationInfo_1()) as _i3.QuotationInfo);
  @override
  String toString() => super.toString();
}