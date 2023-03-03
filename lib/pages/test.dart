import 'dart:async';
import 'dart:io';

void main() {
  File('devotional.txt').readAsString().then((String contents) {
    print(contents);
  });
}