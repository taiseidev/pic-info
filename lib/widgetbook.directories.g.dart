// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_app_template/presentation/cookbook/basics/text/gradient_text_component.dart'
    as _i2;
import 'package:flutter_app_template/presentation/widget/button/common_button.dart'
    as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'presentation',
    children: [
      _i1.WidgetbookFolder(
        name: 'cookbook',
        children: [
          _i1.WidgetbookFolder(
            name: 'basics',
            children: [
              _i1.WidgetbookFolder(
                name: 'text',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'GradientTextComponent',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'with green color',
                      builder: _i2.basicTextUseCase,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'widget',
        children: [
          _i1.WidgetbookFolder(
            name: 'button',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'CommonButton',
                useCase: _i1.WidgetbookUseCase(
                  name: '共通ボタン',
                  builder: _i3.commonButton,
                ),
              )
            ],
          )
        ],
      ),
    ],
  )
];
