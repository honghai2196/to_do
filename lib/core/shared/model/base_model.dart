abstract class BaseModel {
  String message = "";

  handleError(dynamic error) {
    this.message = error.toString();
    print(this.message);
  }
}
