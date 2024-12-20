import 'package:appwrite/appwrite.dart';
import 'package:nextodo/services/env_service.dart';

class AppwriteService {
  late Client client;
  late String projectId;

  AppwriteService() {
    client = Client();
    final envService = EnvService();
    projectId = envService.apiKey;
    client.setProject(projectId);
  }
}
