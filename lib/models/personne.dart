
class Personne{
  late String fullName;
  late String imageLink;
  late String message;
  late double val;

  Personne({required String fullName,required String imageLink, required String message,required double val}){
    // ignore: prefer_initializing_formals
    this.fullName=fullName;
    // ignore: prefer_initializing_formals
    this.imageLink=imageLink; 
    // ignore: prefer_initializing_formals
    this.message=message;
    // ignore: prefer_initializing_formals
    this.val=val;
  }
}