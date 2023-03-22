import java.util.Scanner;

import java.util.*;

class Tution {
    private ArrayList<String> mistakeQuestions = new ArrayList<>();
    Random random = new Random();
    Scanner sc = new Scanner(System.in);
    private String status = "";

    private int marks = 0;
    private int choiceNumber = 0;
    private String name = "";

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }

    private void start(){
        System.out.print("Enter your name : ");
        name = sc.next();
        System.out.println();
        System.out.print("How many question do you want ? ");
        choiceNumber = sc.nextInt();
        System.out.println();
    }
    
    private void getResult(){
        System.out.println(name + ", your marks is : " + marks + " . " + status + "!");
        
        System.out.println("Your mistakes are : " + mistakeQuestions);
        marks = 0;
    }

    public void addGame() {

    

        for (int i = 0; i < choiceNumber; i++) {

            int num1 = random.nextInt(10);
            int num2 = random.nextInt(10);

            int acutalAns = add(num1, num2);

            System.out.println("Add: " + num1 + " + " + " " + num2 + " = ");
            int ans = sc.nextInt();

            if (ans == acutalAns) {
                marks++;
            }
            System.out.println();
        }
        System.out.println("Your answer is " + marks);
        marks = 0;

    }

    private String getAnswer(String word) {
        char[] alphabet = word.toCharArray();
        if (alphabet[0] == 'a' || alphabet[0] == 'e' || alphabet[0] == 'i' || alphabet[0] == 'o'
                || alphabet[0] == 'u') {
            return "an";
        }
        return "a";
    }

    public void oddEven(){
        System.out.print("Enter your name: ");
        name = sc.next();
        System.out.println();
        System.out.println("How many question do you want ?");

        choiceNumber = sc.nextInt();
        System.out.println("Your FM = " + choiceNumber + " and PM = " + choiceNumber/2);
        String ans = "";
        for(int i = 0; i < choiceNumber; i++){
            int number = 1 + random.nextInt(100);
            if(fineOddEven(number)){
                ans = "e";
            }
            else {
                ans = "o";
            }
            System.out.print(number + " is Odd or Even:  ");
            String userAnswer = sc.next().toLowerCase();
            if(userAnswer.equals(ans)){
                marks++;
            }
            else {
                mistakeQuestions.add(String.valueOf(number));
            }
            System.out.println();
        }
        if(marks >= choiceNumber/2){
            status = "Pass";
        }
        else {
            status = "Fail";
        }

        getResult();
    }

    private boolean fineOddEven(int number){
        return number % 2 == 0;
    }

    public void article() {
        String[] words = { "Apple", "Elephant", "Umbrella", "Guitar", "Island", "Orange", "Jacket", "Book", "Banana",
                "Lion", "Egg", "Butterfly", "Ocean", "Camera", "Bicycle", "Telescope", "Ant", "Robot", "Igloo",
                "Lemon" };

        
        System.out.println("Write an approporiate article: a, an");
        marks = 0;
        System.out.println("How many question do you want less than 20 ? ");

        int num = sc.nextInt();

        for (int i = 0; i < num; i++) {
            String question = words[i].toLowerCase();

            System.out.print(i + 1 + ". " + words[i] + " : ");
            String userAns = sc.next().toLowerCase();

            String actualAnswer = getAnswer(question);

            if (userAns.equals(actualAnswer)) {
                marks++;
            } else {
                mistakeQuestions.add(words[i]);
            }

        }
        System.out.println();
        System.out.println("Your marks is " + marks);
        System.out.println("Your mistake answers are: " + mistakeQuestions);
        marks = 0;

    }

    public static void main(String[] args) {
        Tution t = new Tution();

       // t.article();

       t.oddEven();

    }
}