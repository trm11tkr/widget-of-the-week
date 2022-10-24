import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  static const routeName = 'Slider';

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  // use Slider example
  double _value = 0;
  double _startValue = 0;
  double _endValue = 0;

  // use RangeSlider expamle
  RangeValues _rangeValues = const RangeValues(40, 80);

  void _changeSlider(double e) => setState(() {
        _value = e;
      });
  void _startSlider(double e) => setState(() {
        _startValue = e;
      });
  void _endSlider(double e) => setState(() {
        _endValue = e;
      });
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Slider',
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                Center(child: Text('現在の値：$_value')),
                Center(child: Text('開始時の値：$_startValue')),
                Center(child: Text('終了時の値：$_endValue')),
                Slider(
                  label: '$_value',
                  // min: 0,
                  max: 10,
                  value: _value,
                  activeColor: Colors.orange,
                  inactiveColor: Colors.blueAccent,
                  divisions: 10,
                  onChanged: _changeSlider,
                  onChangeStart: _startSlider,
                  onChangeEnd: _endSlider,
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Text(_value.toString()),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 100,
                        height: 100 * _value / 10,
                        color: Colors.orange.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Center(child: Text('現在の範囲：$_rangeValues')),
                RangeSlider(
                  values: _rangeValues,
                  max: 100,
                  divisions: 5,
                  labels: RangeLabels(
                    _rangeValues.start.round().toString(),
                    _rangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _rangeValues = values;
                    });
                  },
                ),
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    Positioned(
                      bottom: _rangeValues.start,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: _rangeValues.end - _rangeValues.start,
                        color: Colors.blue.withOpacity(0.3),
                        child: Text(
                          '${_rangeValues.start} ~ ${_rangeValues.end}',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
