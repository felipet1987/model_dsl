workspace  {
    model {
        customer = person "Personal Banking Customer" "A customer of the bank, with personal bank accounts." "Customer"
        mainframe = softwaresystem "Mainframe Banking System" "Stores all of the core banking information about customers, accounts, transactions, etc." "Existing System"
        email = softwaresystem "E-mail System" "The internal Microsoft Exchange e-mail system." "Existing System"
        internetBankingSystem = softwaresystem "Internet Banking System" "Allows customers to view information about their bank accounts, and make payments." {
            singlePageApplication = container "Single-Page Application" "Provides all of the Internet banking functionality to customers via their web browser." "JavaScript and Angular" "Web Browser"
            mobileApp = container "Mobile App" "Provides a limited subset of the Internet banking functionality to customers via their mobile device." "Xamarin" "Mobile App"
            webApplication = container "Web Application" "Delivers the static content and the Internet banking single page application." "Java and Spring MVC"
            apiApplication = container "API Application" "Provides Internet banking functionality via a JSON/HTTPS API." "Java and Spring MVC"
            database = container "Database" "Stores user registration information, hashed authentication credentials, access logs, etc." "Oracle Database Schema" "Database"
        }  

   }
}