package mypkg;
/**
 * Book Database
 * Keep the title, author and price of books in separate arrays.
 * The array index is used as the bookID for retrieval.
 * All the entities are static.  You could use BookDB.getTitle(bookID),
 * BookDB.getAuthor(bookID) and BookDB.getPrice(bookID) to retrieve the
 * title, author and price for a particular bookID.
 */
public class BookDB {
 
   private static String[] titles = {
      "Java for Dummies",
      "More Java for Dummies",
      "Java for Idiots",
      "Java for More Idiots"
   };
 
   private static String[] authors = {
      "Tan Ah Teck", "Tan Ah Teck", "Mohd Ali", "Mohd Ali"
   };
 
   private static float[] prices = {
      19.99f, 29.99f, 39.99f, 49.99f
   };
 
   /** Return the number of books in the database */
   public static int size() {
      return titles.length;
   }
 
   /** Return the title of the given bookID */
   public static String getTitle(int bookID) {
      return titles[bookID];
   }
 
   /** Return the author of the given bookID */
   public static String getAuthor(int bookID) {
      return authors[bookID];
   }
 
   /** Return the price of the given bookID */
   public static float getPrice(int bookID) {
      return prices[bookID];
   }
}