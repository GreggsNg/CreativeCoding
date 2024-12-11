void setup()
{
    String message = "Hello from CreativeCoding on Friday";
 
    // Add your code here...
    // ...
    println(message.toUpperCase());
    println(message.toLowerCase());
    println("the Total character" + message.length());
    
    println("the character at position 5 in the message is; " + message.charAt(6));
    
    if(message.contains("Day")){
      println("Day found");
    }
    else{
      println("No match found");
    }
}
