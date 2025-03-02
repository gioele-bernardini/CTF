import java.util.*;

class VaultDoorTraining {
  public static void main(String args[]) {
    // Create an object of the VaultDoorTraining class
    VaultDoorTraining vaultDoor = new VaultDoorTraining();
    
    // Create a Scanner object to read user input from the console
    Scanner scanner = new Scanner(System.in); 
    System.out.print("Enter vault password: ");
    
    // Read the user's input as a string
    String userInput = scanner.next();
    
    /*
      Extract the substring that excludes the "picoCTF{" prefix and the "}" suffix.
      "picoCTF{".length() returns 8, which is the start index of the actual password.
      userInput.length() - 1 gives the index just before the last character "}".
      The signature for such method is substring(int beginIndex, int endIndex).
      Note: The former index is inclusive, the latter exclusive.
    */
    String input = userInput.substring("picoCTF{".length(), userInput.length() - 1);
    
    // Check if the extracted password matches the correct password
    if (vaultDoor.checkPassword(input)) {
      System.out.println("Access granted.");
    } else {
      System.out.println("Access denied!");
    }
  }

  /*
    The password is stored in the source code. This is not secure, as anyone with access to the code
    can easily find the password. A better approach would involve more secure password handling techniques.
  */
  public boolean checkPassword(String password) {
    // Compare the input password to the correct password
    return password.equals("w4rm1ng_Up_w1tH_jAv4_be8d9806f18");
  }
  // Solution for the CTF is picoCTF{w4rm1ng_Up_w1tH_jAv4_be8d9806f18}
}

