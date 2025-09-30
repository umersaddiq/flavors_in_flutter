import 'flavours/flavor_config.dart';
import 'main_common.dart';

void main() {
  mainCommon(
    flavor: Flavor.dev,
    baseUrl: 'https://api.dev.abc.com/',
    name: "Development",
  );
}
