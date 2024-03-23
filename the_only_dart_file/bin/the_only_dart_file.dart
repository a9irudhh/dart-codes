void main(List<String> args) {
  const name = 'ani';
  print(name);
  // name = 'anirudh' <- this is not allowed

  final name1 = [1,2,3,4];
  name1.removeAt(2);// final allows us to modify the internal value assigned to it
  // name1 = [9,8,7,6] <- this isn't allowed 
  print(name1); 
}