import 'flavours/flavor_config.dart';
import 'main_common.dart';

void main() {
  mainCommon(
    flavor: Flavor.production,
    baseUrl: 'https://api.abc.com/',
    name: "Production",
  );
}
