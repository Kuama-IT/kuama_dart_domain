# Domain

Defines the basic structure of a flutter project. Based on Clean Architecture.
This project represents the layer domain.

See the example folder for a design example.

## Use Case 
1. Define your repository based on the feature implementing `Repository` class
2. Define your use cases based on the feature extending `UseCase` class
3. Define your use case params
4. Use your repository with `GetIt` class in your use case
5. If the repository returns a correct answer you can use `Right` class otherwise use `Left` class
   
### Use Case Params
- If required params: Extending `Params` class and implementing `props` attribute with all params
- If not required params: Use `NoParams` class
  
### Manage Error
- Returns a `Left` in use case and create your failure by extending `Failure` class
