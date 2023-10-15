import 'package:isar/isar.dart';
part 'image.g.dart';

@collection
class Cached{
     Id? id;
     @Index(unique:true, replace: true)
     late String cachedKey;
     late List<int> cachedImage;
     late DateTime cachedTime;
}

