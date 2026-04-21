public with sharing class Greeter {
    public static String greet(String name) {
        if (String.isBlank(name)) {
            return 'Hello, friend!';
        }
        return 'Hello, ' + name + '!';
    }
}
