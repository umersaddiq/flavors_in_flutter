import 'flavours/flavor_config.dart';
import 'main_common.dart';

void main() {
  mainCommon(
    flavor: Flavor.staging,
    baseUrl: 'https://api.staging.abc.com/',
    name: "Stagging",
  );
}
