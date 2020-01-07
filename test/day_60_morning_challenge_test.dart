import 'package:test/test.dart';
import '../bin/main.dart';
void main() {
    test('chopshop', (){
      expect(chopShop("BBCFADSGSBBBB"), equals("CFADSGS"));
      expect(chopShop("AAAAAAA"), equals(""));
      expect(chopShop("CCGAJCCCJCCC"), equals("GAJCCCJ"));
    });

    test('processList', (){
      expect(processList([
        "AAAA",
        "ABBA",
        "AAAA"
      ]), equals(['BB']));

      expect(processList([
        "AAAAAAAAA",
        "ABBBBBBBA",
        "ABBAAABBA",
        "ABBBBBBBA",
        "AAAAAAAAA"
      ]), equals(['BBBBBBB', 'BBAAABB', 'BBBBBBB']));

      expect(processList([
        "AAAAAAAAAAA",
        "AABBBBBBBAA",
        "AABCCCCCBAA",
        "AABCAAACBAA",
        "AABCADACBAA",
        "AABCAAACBAA",
        "AABCCCCCBAA",
        "AABBBBBBBAA",
        "AAAAAAAAAAA"
      ]), equals(['BBBBBBB', 'BCCCCCB', 'BCAAACB', 'BCADACB', 'BCAAACB', 'BCCCCCB', 'BBBBBBB']));
    });

    test('rugCount', (){
      expect(rugCount([
        "AAAA",
        "ABBA",
        "AAAA"
      ]), equals(2));

      expect(rugCount([
        "AAAAAAAAA",
        "ABBBBBBBA",
        "ABBAAABBA",
        "ABBBBBBBA",
        "AAAAAAAAA"
      ]), equals(3));

      expect(rugCount([
        "AAAAAAAAAAA",
        "AABBBBBBBAA",
        "AABCCCCCBAA",
        "AABCAAACBAA",
        "AABCADACBAA",
        "AABCAAACBAA",
        "AABCCCCCBAA",
        "AABBBBBBBAA",
        "AAAAAAAAAAA"
      ]), equals(5));
    });

}
