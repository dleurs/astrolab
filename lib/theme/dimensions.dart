part of 'theme.dart';

class WidgetSize {
  static const double none = 0;
  static const double sm = 4.0;
  static const double md = 8.0;
  static const double regular = 16.0;
  static const double l = 24.0;
  static const double xl = 32.0;
  static const double xxl = 40.0;
  static const double jumbo = 48.0;
  static const double xjumbo = 64.0;

  static const double radiusSm = 6.0;
  static const double radiusMd = 10.0;
  static const double radiusL = 40.0;
}

class WidgetRadius {
  static _RadiusSide top = _RadiusSide(_SidesFlag(1, 1, 1, 0));
  static _RadiusSide bottom = _RadiusSide(_SidesFlag(1, 0, 1, 1));
  static _RadiusSide left = _RadiusSide(_SidesFlag(1, 1, 0, 1));
  static _RadiusSide right = _RadiusSide(_SidesFlag(0, 1, 1, 1));
  static _RadiusSide all = _RadiusSide(_SidesFlag(1, 1, 1, 1));
}

class WidgetGutter {
  static _DimensionSide get left => _DimensionSide(_SidesFlag(1, 0, 0, 0));

  static _DimensionSide get top => _DimensionSide(_SidesFlag(0, 1, 0, 0));

  static _DimensionSide get right => _DimensionSide(_SidesFlag(0, 0, 1, 0));

  static _DimensionSide get bottom => _DimensionSide(_SidesFlag(0, 0, 0, 1));

  static _DimensionSide get horizontal => _DimensionSide(_SidesFlag(1, 0, 1, 0));

  static _DimensionSide get vertical => _DimensionSide(_SidesFlag(0, 1, 0, 1));

  static _DimensionSide get all => _DimensionSide(_SidesFlag(1, 1, 1, 1));
}

class _SidesFlag {
  double leftFlag = 0;
  double topFlag = 0;
  double rightFlag = 0;
  double bottomFlag = 0;

  _SidesFlag(this.leftFlag, this.topFlag, this.rightFlag, this.bottomFlag);
}

class _DimensionSize {
  final _SidesFlag _sidesFlag;
  double size;

  _DimensionSize(this._sidesFlag, this.size);

  get data => EdgeInsets.fromLTRB(
        _sidesFlag.leftFlag * size,
        _sidesFlag.topFlag * size,
        _sidesFlag.rightFlag * size,
        _sidesFlag.bottomFlag * size,
      );
}

class _DimensionSide {
  final _SidesFlag _sidesFlag;

  _DimensionSide(this._sidesFlag);

  EdgeInsets get none => _DimensionSize(_sidesFlag, WidgetSize.none).data;

  EdgeInsets get sm => _DimensionSize(_sidesFlag, WidgetSize.sm).data;

  EdgeInsets get md => _DimensionSize(_sidesFlag, WidgetSize.md).data;

  EdgeInsets get regular => _DimensionSize(_sidesFlag, WidgetSize.regular).data;

  EdgeInsets get l => _DimensionSize(_sidesFlag, WidgetSize.l).data;

  EdgeInsets get xl => _DimensionSize(_sidesFlag, WidgetSize.xl).data;

  EdgeInsets get xxl => _DimensionSize(_sidesFlag, WidgetSize.xxl).data;

  EdgeInsets get jumbo => _DimensionSize(_sidesFlag, WidgetSize.jumbo).data;

  EdgeInsets get xjumbo => _DimensionSize(_sidesFlag, WidgetSize.xjumbo).data;
}

class _RadiusSize {
  final _SidesFlag _sidesFlag;
  double size;

  _RadiusSize(this._sidesFlag, this.size);

  get data => BorderRadius.only(
        topLeft: Radius.circular(_sidesFlag.leftFlag * _sidesFlag.topFlag * size),
        topRight: Radius.circular(_sidesFlag.rightFlag * _sidesFlag.topFlag * size),
        bottomLeft: Radius.circular(_sidesFlag.leftFlag * _sidesFlag.bottomFlag * size),
        bottomRight: Radius.circular(_sidesFlag.rightFlag * _sidesFlag.bottomFlag * size),
      );
}

class _RadiusSide {
  final _SidesFlag _sidesFlag;

  _RadiusSide(this._sidesFlag);

  BorderRadius get sm => _RadiusSize(_sidesFlag, WidgetSize.radiusSm).data;

  BorderRadius get md => _RadiusSize(_sidesFlag, WidgetSize.radiusMd).data;

  BorderRadius get l => _RadiusSize(_sidesFlag, WidgetSize.radiusL).data;
}
