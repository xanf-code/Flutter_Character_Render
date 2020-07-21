import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

var w = window, B;
void main() => w
  ..onBeginFrame = (T) {
    var R = w.devicePixelRatio,
        S = window.physicalSize / R,
        G = Offset.zero & S,
        O = PictureRecorder(),
        c = Canvas(O, G),
        A = .0,
        q = 123,
        j = .0,
        i = 756,
        t = (T - (B ??= T)).inMicroseconds / 1e6;
    c.drawPaint(Paint()..color = Color(0));
    for (; i-- > 0;) {
      var p = Paint()..color = Color.fromRGBO(i % 99 + 156, q - i % q, q, 1);
      c.drawRect(
          Rect.fromLTWH(S.width / 2 + A * sin(j), S.height / 2 + A * cos(j),
              i / 84, i / 84),
          p);
      j = i / 9;
      A = (9 * sin(t * j / 20) + cos(20 * j) + 6) * 21;
    }
    w.render((SceneBuilder()
      ..pushTransform(Float64List(16)
        ..[0] = R
        ..[5] = R
        ..[10] = 1
        ..[15] = 1)
      ..addPicture(Offset.zero, O.endRecording())
      ..pop())
        .build());
    w.scheduleFrame();
  }
  ..scheduleFrame();
